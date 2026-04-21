#include "dict_db.h"
#include "sqlite3.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef _WIN32
#define PATH_SEP "\\"
#else
#define PATH_SEP "/"
#endif

static sqlite3 *g_db = NULL;

/* Open the SQLite database and set common pragmas. */
int dict_db_open(const char *db_path) {
  if (sqlite3_open(db_path, &g_db) != SQLITE_OK) {
    fprintf(stderr, "dict_db_open: %s\n", sqlite3_errmsg(g_db));
    g_db = NULL;
    return -1;
  }
  sqlite3_exec(g_db, "PRAGMA foreign_keys = ON;", NULL, NULL, NULL);
  sqlite3_exec(g_db, "PRAGMA journal_mode  = WAL;", NULL, NULL, NULL);
  sqlite3_exec(g_db, "PRAGMA synchronous   = NORMAL;", NULL, NULL, NULL);
  return 0;
}

/* Close the database if open. */
void dict_db_close(void) {
  if (g_db) {
    sqlite3_close(g_db);
    g_db = NULL;
  }
}

/* Execute one SQL file against g_db. */
static int run_sql_file(const char *path) {
  FILE *f = fopen(path, "rb");
  if (!f)
    return -1;

  fseek(f, 0, SEEK_END);
  long size = ftell(f);
  rewind(f);

  char *buf = (char *)malloc((size_t)size + 1);
  if (!buf) {
    fclose(f);
    return -1;
  }

  fread(buf, 1, (size_t)size, f);
  buf[size] = '\0';
  fclose(f);

  char *err = NULL;
  int rc = sqlite3_exec(g_db, buf, NULL, NULL, &err);
  if (rc != SQLITE_OK) {
    fprintf(stderr, "dict_db_migrate [%s]: %s\n", path, err);
    sqlite3_free(err);
  }
  free(buf);
  return (rc == SQLITE_OK) ? 0 : -1;
}

/* Return 1 if a table with this name exists. */
static int sqlite_table_exists(const char *name) {
  sqlite3_stmt *stmt = NULL;
  if (sqlite3_prepare_v2(
          g_db,
          "SELECT 1 FROM sqlite_master WHERE type='table' AND name=? LIMIT 1;",
          -1, &stmt, NULL) != SQLITE_OK)
    return 0;
  sqlite3_bind_text(stmt, 1, name, -1, SQLITE_STATIC);
  int found = (sqlite3_step(stmt) == SQLITE_ROW) ? 1 : 0;
  sqlite3_finalize(stmt);
  return found;
}

/* Return 1 if table has a column with this name. */
static int sqlite_column_exists(const char *table, const char *column) {
  sqlite3_stmt *stmt = NULL;
  char sql[256];
  snprintf(sql, sizeof(sql), "PRAGMA table_info(%s);", table);
  if (sqlite3_prepare_v2(g_db, sql, -1, &stmt, NULL) != SQLITE_OK)
    return 0;

  int found = 0;
  while (sqlite3_step(stmt) == SQLITE_ROW) {
    const char *col = (const char *)sqlite3_column_text(stmt, 1);
    if (col && strcmp(col, column) == 0) {
      found = 1;
      break;
    }
  }
  sqlite3_finalize(stmt);
  return found;
}

/* Highest applied migration version, or 0. */
static int get_schema_version(void) {
  const char *sql = "CREATE TABLE IF NOT EXISTS schema_versions("
                    "  version INTEGER PRIMARY KEY,"
                    "  applied_at INTEGER DEFAULT (strftime('%s','now'))"
                    ");";
  sqlite3_exec(g_db, sql, NULL, NULL, NULL);

  sqlite3_stmt *stmt = NULL;
  sqlite3_prepare_v2(g_db, "SELECT MAX(version) FROM schema_versions;", -1,
                     &stmt, NULL);
  int ver = 0;
  if (sqlite3_step(stmt) == SQLITE_ROW)
    ver = sqlite3_column_int(stmt, 0);
  sqlite3_finalize(stmt);
  return ver;
}

/* Remove old FTS5 objects (app uses prefix LIKE only). Safe if absent. */
static void dict_db_drop_legacy_fts(void) {
  if (!g_db)
    return;
  sqlite3_exec(g_db,
               "DROP TRIGGER IF EXISTS fts_definitions_ai;"
               "DROP TRIGGER IF EXISTS fts_definitions_ad;"
               "DROP TRIGGER IF EXISTS fts_definitions_au;"
               "DROP TABLE IF EXISTS words_fts;",
               NULL, NULL, NULL);
}

/* Apply pending migration files; repair old DBs missing tag tables. */
int dict_db_migrate(const char *migrations_dir) {
  if (!g_db)
    return -1;

  /* Idempotent schema; runs when schema_versions is behind. */
  const char *files[] = {"001_schema.sql", NULL};

  int current = get_schema_version();

  for (int i = 0; files[i]; i++) {
    int target = i + 1;
    if (target <= current)
      continue;

    char path[512];
    snprintf(path, sizeof(path), "%s%s%s", migrations_dir, PATH_SEP, files[i]);

    if (run_sql_file(path) != 0)
      return -1;
  }

  /* Old DB: re-run 001 if tag tables are missing. */
  if (!sqlite_table_exists("tags") ||
      !sqlite_table_exists("bookmark_tag_map")) {
    char path[512];
    snprintf(path, sizeof(path), "%s%s%s", migrations_dir, PATH_SEP,
             "001_schema.sql");
    fprintf(stderr, "dict_db_migrate: repairing missing tag tables via %s\n",
            path);
    if (run_sql_file(path) != 0)
      return -1;
  }

  /* Old DB: add soft-delete column if absent. */
  if (sqlite_table_exists("words") && !sqlite_column_exists("words", "deleted_at")) {
    char *err = NULL;
    int rc = sqlite3_exec(g_db,
                          "ALTER TABLE words ADD COLUMN deleted_at INTEGER;",
                          NULL, NULL, &err);
    if (rc != SQLITE_OK) {
      fprintf(stderr, "dict_db_migrate: add deleted_at failed: %s\n",
              err ? err : "unknown");
      if (err)
        sqlite3_free(err);
      return -1;
    }
  }

  dict_db_drop_legacy_fts();
  return 0;
}

/* Load definitions for word_id into out_arr. */
int dict_db_get_definitions(int word_id, DictDefinition *out_arr, int max_n) {
  if (!g_db || !out_arr || max_n <= 0)
    return -1;

  const char *sql = "SELECT id, word_id, meaning, example, sort_order "
                    "FROM definitions WHERE word_id = ? ORDER BY sort_order;";

  sqlite3_stmt *stmt = NULL;
  if (sqlite3_prepare_v2(g_db, sql, -1, &stmt, NULL) != SQLITE_OK)
    return -1;

  sqlite3_bind_int(stmt, 1, word_id);

  int n = 0;
  while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n) {
    DictDefinition *d = &out_arr[n];
    d->id = sqlite3_column_int(stmt, 0);
    d->word_id = sqlite3_column_int(stmt, 1);
    const char *m = (const char *)sqlite3_column_text(stmt, 2);
    const char *e = (const char *)sqlite3_column_text(stmt, 3);
    strncpy(d->meaning, m ? m : "", DICT_MEANING_MAX - 1);
    strncpy(d->example, e ? e : "", DICT_EXAMPLE_MAX - 1);
    d->sort_order = sqlite3_column_int(stmt, 4);
    n++;
  }

  sqlite3_finalize(stmt);
  return n;
}

/* Insert a new word with one definition row. */
int dict_db_add_word(const DictWord *word, const char *meaning, const char *example) {
  if (!g_db || !word || !word->word[0] || !meaning || !meaning[0])
    return -1;

  char *err = NULL;
  if (sqlite3_exec(g_db, "BEGIN IMMEDIATE;", NULL, NULL, &err) != SQLITE_OK) {
    if (err)
      sqlite3_free(err);
    return -1;
  }

  sqlite3_stmt *stmt = NULL;
  const char *ins_word =
      "INSERT INTO words(word, phonetic, word_type, audio_path, deleted_at) "
      "VALUES(?, ?, ?, ?, NULL);";
  if (sqlite3_prepare_v2(g_db, ins_word, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;

  sqlite3_bind_text(stmt, 1, word->word, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 2, word->phonetic, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 3, word->word_type, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 4, word->audio_path, -1, SQLITE_STATIC);
  if (sqlite3_step(stmt) != SQLITE_DONE) {
    sqlite3_finalize(stmt);
    goto rollback;
  }
  sqlite3_finalize(stmt);

  int word_id = (int)sqlite3_last_insert_rowid(g_db);
  const char *ins_def =
      "INSERT INTO definitions(word_id, meaning, example, sort_order) VALUES(?, ?, ?, 0);";
  if (sqlite3_prepare_v2(g_db, ins_def, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;
  sqlite3_bind_int(stmt, 1, word_id);
  sqlite3_bind_text(stmt, 2, meaning, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 3, example ? example : "", -1, SQLITE_STATIC);
  if (sqlite3_step(stmt) != SQLITE_DONE) {
    sqlite3_finalize(stmt);
    goto rollback;
  }
  sqlite3_finalize(stmt);

  if (sqlite3_exec(g_db, "COMMIT;", NULL, NULL, &err) != SQLITE_OK) {
    if (err)
      sqlite3_free(err);
    return -1;
  }
  return 0;

rollback:
  sqlite3_exec(g_db, "ROLLBACK;", NULL, NULL, NULL);
  return -1;
}

/* Update one word row and the first definition row (creates one if missing). */
int dict_db_update_word(int word_id, const DictWord *word, const char *meaning, const char *example) {
  if (!g_db || word_id <= 0 || !word || !word->word[0] || !meaning || !meaning[0])
    return -1;

  char *err = NULL;
  if (sqlite3_exec(g_db, "BEGIN IMMEDIATE;", NULL, NULL, &err) != SQLITE_OK) {
    if (err)
      sqlite3_free(err);
    return -1;
  }

  sqlite3_stmt *stmt = NULL;
  const char *upd_word =
      "UPDATE words "
      "SET word = ?, phonetic = ?, word_type = ?, audio_path = ?, deleted_at = NULL "
      "WHERE id = ?;";
  if (sqlite3_prepare_v2(g_db, upd_word, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;

  sqlite3_bind_text(stmt, 1, word->word, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 2, word->phonetic, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 3, word->word_type, -1, SQLITE_STATIC);
  sqlite3_bind_text(stmt, 4, word->audio_path, -1, SQLITE_STATIC);
  sqlite3_bind_int(stmt, 5, word_id);
  if (sqlite3_step(stmt) != SQLITE_DONE) {
    sqlite3_finalize(stmt);
    goto rollback;
  }
  sqlite3_finalize(stmt);

  int has_definition = 0;
  const char *has_def_sql = "SELECT 1 FROM definitions WHERE word_id = ? LIMIT 1;";
  if (sqlite3_prepare_v2(g_db, has_def_sql, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;
  sqlite3_bind_int(stmt, 1, word_id);
  has_definition = (sqlite3_step(stmt) == SQLITE_ROW) ? 1 : 0;
  sqlite3_finalize(stmt);

  if (has_definition) {
    const char *upd_def =
        "UPDATE definitions "
        "SET meaning = ?, example = ? "
        "WHERE id = (SELECT id FROM definitions WHERE word_id = ? ORDER BY sort_order, id LIMIT 1);";
    if (sqlite3_prepare_v2(g_db, upd_def, -1, &stmt, NULL) != SQLITE_OK)
      goto rollback;
    sqlite3_bind_text(stmt, 1, meaning, -1, SQLITE_STATIC);
    sqlite3_bind_text(stmt, 2, example ? example : "", -1, SQLITE_STATIC);
    sqlite3_bind_int(stmt, 3, word_id);
    if (sqlite3_step(stmt) != SQLITE_DONE) {
      sqlite3_finalize(stmt);
      goto rollback;
    }
    sqlite3_finalize(stmt);
  } else {
    const char *ins_def =
        "INSERT INTO definitions(word_id, meaning, example, sort_order) VALUES(?, ?, ?, 0);";
    if (sqlite3_prepare_v2(g_db, ins_def, -1, &stmt, NULL) != SQLITE_OK)
      goto rollback;
    sqlite3_bind_int(stmt, 1, word_id);
    sqlite3_bind_text(stmt, 2, meaning, -1, SQLITE_STATIC);
    sqlite3_bind_text(stmt, 3, example ? example : "", -1, SQLITE_STATIC);
    if (sqlite3_step(stmt) != SQLITE_DONE) {
      sqlite3_finalize(stmt);
      goto rollback;
    }
    sqlite3_finalize(stmt);
  }

  if (sqlite3_exec(g_db, "COMMIT;", NULL, NULL, &err) != SQLITE_OK) {
    if (err)
      sqlite3_free(err);
    return -1;
  }
  return 0;

rollback:
  sqlite3_exec(g_db, "ROLLBACK;", NULL, NULL, NULL);
  return -1;
}

/* Soft-delete a word and cleanup relation tables. */
int dict_db_soft_delete_word(int word_id) {
  if (!g_db || word_id <= 0)
    return -1;

  char *err = NULL;
  if (sqlite3_exec(g_db, "BEGIN IMMEDIATE;", NULL, NULL, &err) != SQLITE_OK) {
    if (err)
      sqlite3_free(err);
    return -1;
  }

  sqlite3_stmt *stmt = NULL;
  const char *sql_word = "UPDATE words SET deleted_at = strftime('%s','now') WHERE id = ?;";
  if (sqlite3_prepare_v2(g_db, sql_word, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;
  sqlite3_bind_int(stmt, 1, word_id);
  if (sqlite3_step(stmt) != SQLITE_DONE) {
    sqlite3_finalize(stmt);
    goto rollback;
  }
  sqlite3_finalize(stmt);

  const char *sql_hist = "DELETE FROM history WHERE word_id = ?;";
  if (sqlite3_prepare_v2(g_db, sql_hist, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;
  sqlite3_bind_int(stmt, 1, word_id);
  sqlite3_step(stmt);
  sqlite3_finalize(stmt);

  const char *sql_bmk = "DELETE FROM bookmarks WHERE word_id = ?;";
  if (sqlite3_prepare_v2(g_db, sql_bmk, -1, &stmt, NULL) != SQLITE_OK)
    goto rollback;
  sqlite3_bind_int(stmt, 1, word_id);
  sqlite3_step(stmt);
  sqlite3_finalize(stmt);

  if (sqlite3_exec(g_db, "COMMIT;", NULL, NULL, &err) != SQLITE_OK) {
    if (err)
      sqlite3_free(err);
    return -1;
  }
  return 0;

rollback:
  sqlite3_exec(g_db, "ROLLBACK;", NULL, NULL, NULL);
  return -1;
}

/* Run seed SQL only when words table is empty; returns row count. */
int dict_db_seed(const char *seed_sql_path) {
  if (!g_db || !seed_sql_path)
    return -1;

  sqlite3_stmt *stmt = NULL;
  if (sqlite3_prepare_v2(g_db, "SELECT COUNT(*) FROM words;", -1, &stmt, NULL) != SQLITE_OK)
    return -1;

  int count = 0;
  if (sqlite3_step(stmt) == SQLITE_ROW)
    count = sqlite3_column_int(stmt, 0);
  sqlite3_finalize(stmt);

  if (count > 0)
    return count;

  if (run_sql_file(seed_sql_path) != 0)
    return -1;

  if (sqlite3_prepare_v2(g_db,
                         "SELECT COUNT(*) FROM words WHERE deleted_at IS NULL;",
                         -1, &stmt, NULL) != SQLITE_OK)
    return -1;

  int inserted = 0;
  if (sqlite3_step(stmt) == SQLITE_ROW)
    inserted = sqlite3_column_int(stmt, 0);
  sqlite3_finalize(stmt);
  return inserted;
}

/* Fill default relative audio paths for rows that have none. */
int dict_db_ensure_relative_audio_paths(void) {
  if (!g_db)
    return -1;
  const char *sql =
      "UPDATE words SET audio_path = 'assets/sounds/' || word || '.mp3' "
      "WHERE deleted_at IS NULL AND trim(COALESCE(audio_path, '')) = '';";
  char *err = NULL;
  int rc = sqlite3_exec(g_db, sql, NULL, NULL, &err);
  if (rc != SQLITE_OK) {
    fprintf(stderr, "dict_db_ensure_relative_audio_paths: %s\n", err);
    sqlite3_free(err);
    return -1;
  }
  return 0;
}

/* Shared connection for core modules. */
sqlite3 *dict_db_handle(void) { return g_db; }
