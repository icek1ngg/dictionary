#include "dict_bookmark.h"
#include "sqlite3.h"
#include <string.h>

sqlite3 *dict_db_handle(void);

/* Safe string copy into a fixed buffer. */
static void copy_text(char *dst, int dst_n, const unsigned char *src)
{
    const char *s = src ? (const char *)src : "";
    strncpy(dst, s, dst_n - 1);
    dst[dst_n - 1] = '\0';
}

/* Load word columns from a SELECT row. */
static void fill_word_row(sqlite3_stmt *stmt, DictWord *w)
{
    w->id = sqlite3_column_int(stmt, 0);
    copy_text(w->word, DICT_WORD_MAX, sqlite3_column_text(stmt, 1));
    copy_text(w->phonetic, DICT_PHONETIC_MAX, sqlite3_column_text(stmt, 2));
    copy_text(w->word_type, DICT_TYPE_MAX, sqlite3_column_text(stmt, 3));
    copy_text(w->audio_path, DICT_AUDIO_MAX, sqlite3_column_text(stmt, 4));
}

/* Insert bookmarks row for word_id if missing. */
static int ensure_bookmark(sqlite3 *db, int word_id)
{
    const char *check_sql = "SELECT 1 FROM bookmarks WHERE word_id = ? LIMIT 1;";
    sqlite3_stmt *check_stmt = NULL;
    if (sqlite3_prepare_v2(db, check_sql, -1, &check_stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(check_stmt, 1, word_id);
    int exists = (sqlite3_step(check_stmt) == SQLITE_ROW);
    sqlite3_finalize(check_stmt);
    if (exists) return 0;

    const char *sql = "INSERT INTO bookmarks(word_id) VALUES(?);";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, word_id);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}

/* Insert tag name if missing (case-insensitive unique). */
static int ensure_tag(sqlite3 *db, const char *tag_name)
{
    if (!tag_name || !*tag_name) return -1;
    const char *sql = "INSERT OR IGNORE INTO tags(name) VALUES(?);";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_text(stmt, 1, tag_name, -1, SQLITE_STATIC);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}

/* Ensure bookmark + tag, then link them. */
int dict_bookmark_add_to_tag(int word_id, const char *tag_name)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !tag_name || !*tag_name) return -1;
    if (ensure_bookmark(db, word_id) != 0) return -1;
    if (ensure_tag(db, tag_name) != 0) return -1;

    const char *sql =
        "INSERT OR IGNORE INTO bookmark_tag_map(word_id, tag_id) "
        "SELECT ?, t.id FROM tags t WHERE t.name = ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, word_id);
    sqlite3_bind_text(stmt, 2, tag_name, -1, SQLITE_STATIC);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}

/* Remove one tag link; delete bookmark when no tags remain. */
int dict_bookmark_remove_from_tag(int word_id, const char *tag_name)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !tag_name || !*tag_name) return -1;

    const char *sql =
        "DELETE FROM bookmark_tag_map "
        "WHERE word_id = ? AND tag_id = (SELECT id FROM tags WHERE name = ?);";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, word_id);
    sqlite3_bind_text(stmt, 2, tag_name, -1, SQLITE_STATIC);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    if (rc != SQLITE_DONE) return -1;

    /* If no tags left, remove the bookmark row. */
    if (sqlite3_changes(db) > 0) {
        const char *prune =
            "DELETE FROM bookmarks WHERE word_id = ? "
            "AND NOT EXISTS (SELECT 1 FROM bookmark_tag_map WHERE word_id = ?);";
        if (sqlite3_prepare_v2(db, prune, -1, &stmt, NULL) == SQLITE_OK) {
            sqlite3_bind_int(stmt, 1, word_id);
            sqlite3_bind_int(stmt, 2, word_id);
            sqlite3_step(stmt);
            sqlite3_finalize(stmt);
        }
    }
    return 0;
}

/* Create bookmark row; optional tag adds mapping. */
int dict_bookmark_add(int word_id, const char *tag)
{
    sqlite3 *db = dict_db_handle();
    if (!db) return -1;
    if (ensure_bookmark(db, word_id) != 0) return -1;
    if (tag && *tag) return dict_bookmark_add_to_tag(word_id, tag);
    return 0;
}

/* Delete bookmark_tag_map rows then bookmarks row. */
int dict_bookmark_remove(int word_id)
{
    sqlite3 *db = dict_db_handle();
    if (!db) return -1;

    const char *sql_rel = "DELETE FROM bookmark_tag_map WHERE word_id = ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql_rel, -1, &stmt, NULL) == SQLITE_OK) {
        sqlite3_bind_int(stmt, 1, word_id);
        sqlite3_step(stmt);
        sqlite3_finalize(stmt);
    }

    const char *sql = "DELETE FROM bookmarks WHERE word_id = ?;";
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, word_id);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}

/* True if bookmarks contains word_id. */
int dict_bookmark_is_saved(int word_id)
{
    sqlite3 *db = dict_db_handle();
    if (!db) return 0;

    const char *sql = "SELECT 1 FROM bookmarks WHERE word_id = ? LIMIT 1;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return 0;
    sqlite3_bind_int(stmt, 1, word_id);
    int found = (sqlite3_step(stmt) == SQLITE_ROW) ? 1 : 0;
    sqlite3_finalize(stmt);
    return found;
}

/* List all saved words. */
int dict_bookmark_get_all(DictWord *out_arr, int max_n)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !out_arr || max_n <= 0) return -1;

    const char *sql =
        "SELECT w.id, w.word, w.phonetic, w.word_type, w.audio_path "
        "FROM bookmarks b JOIN words w ON w.id = b.word_id "
        "WHERE w.deleted_at IS NULL "
        "ORDER BY b.noted_at DESC LIMIT ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, max_n);

    int n = 0;
    while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n) fill_word_row(stmt, &out_arr[n++]);
    sqlite3_finalize(stmt);
    return n;
}

/* List words under one tag. */
int dict_bookmark_get_by_tag(const char *tag, DictWord *out_arr, int max_n)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !tag || !*tag || !out_arr || max_n <= 0) return -1;

    const char *sql =
        "SELECT w.id, w.word, w.phonetic, w.word_type, w.audio_path "
        "FROM bookmark_tag_map m "
        "JOIN tags t ON t.id = m.tag_id "
        "JOIN words w ON w.id = m.word_id "
        "JOIN bookmarks b ON b.word_id = w.id "
        "WHERE t.name = ? AND w.deleted_at IS NULL "
        "ORDER BY b.noted_at DESC LIMIT ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_text(stmt, 1, tag, -1, SQLITE_STATIC);
    sqlite3_bind_int(stmt, 2, max_n);

    int n = 0;
    while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n) fill_word_row(stmt, &out_arr[n++]);
    sqlite3_finalize(stmt);
    return n;
}

/* All tags in the database. */
int dict_bookmark_get_tags(char out_tags[][DICT_TAG_MAX], int max_n)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !out_tags || max_n <= 0) return -1;

    const char *sql = "SELECT name FROM tags ORDER BY name LIMIT ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, max_n);

    int n = 0;
    while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n) {
        copy_text(out_tags[n], DICT_TAG_MAX, sqlite3_column_text(stmt, 0));
        ++n;
    }
    sqlite3_finalize(stmt);
    return n;
}

/* Tags linked to one word. */
int dict_bookmark_get_word_tags(int word_id, char out_tags[][DICT_TAG_MAX], int max_n)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !out_tags || max_n <= 0) return -1;
    const char *sql =
        "SELECT t.name "
        "FROM bookmark_tag_map m JOIN tags t ON t.id = m.tag_id "
        "WHERE m.word_id = ? ORDER BY t.name LIMIT ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_int(stmt, 1, word_id);
    sqlite3_bind_int(stmt, 2, max_n);
    int n = 0;
    while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n) {
        copy_text(out_tags[n], DICT_TAG_MAX, sqlite3_column_text(stmt, 0));
        ++n;
    }
    sqlite3_finalize(stmt);
    return n;
}

/* Create tag if new; 0 if it exists after call, -1 on error. */
int dict_tag_create(const char *tag_name)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !tag_name || !*tag_name) return -1;

    const char *ins = "INSERT OR IGNORE INTO tags(name) VALUES(?);";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, ins, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_text(stmt, 1, tag_name, -1, SQLITE_STATIC);
    if (sqlite3_step(stmt) != SQLITE_DONE) { sqlite3_finalize(stmt); return -1; }
    sqlite3_finalize(stmt);

    const char *sel = "SELECT 1 FROM tags WHERE name = ? COLLATE NOCASE LIMIT 1;";
    if (sqlite3_prepare_v2(db, sel, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_text(stmt, 1, tag_name, -1, SQLITE_STATIC);
    int ok = (sqlite3_step(stmt) == SQLITE_ROW) ? 0 : -1;
    sqlite3_finalize(stmt);
    return ok;
}

/* Rename a tag by exact name match. */
int dict_tag_rename(const char *old_name, const char *new_name)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !old_name || !*old_name || !new_name || !*new_name) return -1;
    const char *sql = "UPDATE tags SET name = ? WHERE name = ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_text(stmt, 1, new_name, -1, SQLITE_STATIC);
    sqlite3_bind_text(stmt, 2, old_name, -1, SQLITE_STATIC);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}

/* Delete tag row (cascades to bookmark_tag_map). */
int dict_tag_delete(const char *tag_name)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !tag_name || !*tag_name) return -1;
    const char *sql = "DELETE FROM tags WHERE name = ?;";
    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;
    sqlite3_bind_text(stmt, 1, tag_name, -1, SQLITE_STATIC);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}
