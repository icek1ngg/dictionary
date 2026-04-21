#include "dict_search.h"
#include "sqlite3.h"
#include <string.h>
#include <stdio.h>

sqlite3 *dict_db_handle(void);

/* Copy current row columns into DictWord. */
static void fill_word(sqlite3_stmt *stmt, DictWord *w)
{
    w->id = sqlite3_column_int(stmt, 0);
    const char *word  = (const char *)sqlite3_column_text(stmt, 1);
    const char *phon  = (const char *)sqlite3_column_text(stmt, 2);
    const char *wtype = (const char *)sqlite3_column_text(stmt, 3);
    const char *audio = (const char *)sqlite3_column_text(stmt, 4);
    strncpy(w->word,       word  ? word  : "", DICT_WORD_MAX  - 1);
    strncpy(w->phonetic,   phon  ? phon  : "", DICT_PHONETIC_MAX - 1);
    strncpy(w->word_type,  wtype ? wtype : "", DICT_TYPE_MAX  - 1);
    strncpy(w->audio_path, audio ? audio : "", DICT_AUDIO_MAX - 1);
    w->word[DICT_WORD_MAX - 1] = '\0';
    w->phonetic[DICT_PHONETIC_MAX - 1] = '\0';
    w->word_type[DICT_TYPE_MAX - 1] = '\0';
    w->audio_path[DICT_AUDIO_MAX - 1] = '\0';
}

/* Case-insensitive exact lookup. */
int dict_search_exact(const char *query, DictWord *out)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !query || !out) return 0;

    const char *sql =
        "SELECT id, word, phonetic, word_type, audio_path FROM words "
        "WHERE deleted_at IS NULL AND word = ? COLLATE NOCASE LIMIT 1;";

    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return 0;

    sqlite3_bind_text(stmt, 1, query, -1, SQLITE_STATIC);
    int found = 0;
    if (sqlite3_step(stmt) == SQLITE_ROW) {
        fill_word(stmt, out);
        found = 1;
    }
    sqlite3_finalize(stmt);
    return found;
}

/* Words starting with prefix. */
int dict_search_prefix(const char *prefix, DictWord *out_arr, int max_n)
{
    sqlite3 *db = dict_db_handle();
    if (!db || !prefix || !out_arr || max_n <= 0) return 0;

    const char *sql =
        "SELECT id, word, phonetic, word_type, audio_path FROM words "
        "WHERE deleted_at IS NULL AND word LIKE ? ESCAPE '\\' ORDER BY word LIMIT ?;";

    sqlite3_stmt *stmt = NULL;
    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) != SQLITE_OK) return 0;

    char buf[DICT_WORD_MAX + 2];
    snprintf(buf, sizeof(buf), "%s%%", prefix);
    sqlite3_bind_text(stmt, 1, buf, -1, SQLITE_TRANSIENT);
    sqlite3_bind_int(stmt, 2, max_n);

    int n = 0;
    while (sqlite3_step(stmt) == SQLITE_ROW && n < max_n)
        fill_word(stmt, &out_arr[n++]);

    sqlite3_finalize(stmt);
    return n;
}
