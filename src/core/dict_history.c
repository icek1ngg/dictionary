#include "dict_history.h"
#include "sqlite3.h"
#include <string.h>

sqlite3 *dict_db_handle(void);

/* Record that word_id was looked up. */
int dict_history_add(int word_id)
{
    sqlite3 *db = dict_db_handle();
    if (!db) return -1;

    const char *sql =
        "INSERT INTO history (word_id) VALUES (?);";

    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;

    sqlite3_bind_int(stmt, 1, word_id);
    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return (rc == SQLITE_DONE) ? 0 : -1;
}

/* Fill out_arr with recent words (newest first). */
int dict_history_get(DictWord *out_arr, int max_n)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !out_arr || max_n <= 0) return -1;

    const char *sql =
        "SELECT DISTINCT w.id, w.word, w.phonetic, w.word_type, w.audio_path "
        "FROM history h "
        "JOIN words w ON w.id = h.word_id "
        "WHERE w.deleted_at IS NULL "
        "ORDER BY h.searched_at DESC "
        "LIMIT ?;";

    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return -1;

    sqlite3_bind_int(stmt, 1, max_n);

    int n = 0;
    while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n) {
        DictWord *w = &out_arr[n];
        w->id = sqlite3_column_int(stmt, 0);
        const char *word  = (const char *)sqlite3_column_text(stmt, 1);
        const char *phon  = (const char *)sqlite3_column_text(stmt, 2);
        const char *wtype = (const char *)sqlite3_column_text(stmt, 3);
        const char *audio = (const char *)sqlite3_column_text(stmt, 4);
        strncpy(w->word,       word  ? word  : "", DICT_WORD_MAX     - 1);
        strncpy(w->phonetic,   phon  ? phon  : "", DICT_PHONETIC_MAX - 1);
        strncpy(w->word_type,  wtype ? wtype : "", DICT_TYPE_MAX     - 1);
        strncpy(w->audio_path, audio ? audio : "", DICT_AUDIO_MAX    - 1);
        w->word[DICT_WORD_MAX - 1] = '\0';
        w->phonetic[DICT_PHONETIC_MAX - 1] = '\0';
        w->word_type[DICT_TYPE_MAX - 1] = '\0';
        w->audio_path[DICT_AUDIO_MAX - 1] = '\0';
        n++;
    }

    sqlite3_finalize(stmt);
    return n;
}

/* Remove every history row. */
int dict_history_clear(void)
{
    sqlite3 *db = dict_db_handle();
    if (!db) return -1;

    char *err = NULL;
    int rc = sqlite3_exec(db, "DELETE FROM history;", NULL, NULL, &err);
    if (err) { sqlite3_free(err); return -1; }
    return (rc == SQLITE_OK) ? 0 : -1;
}
