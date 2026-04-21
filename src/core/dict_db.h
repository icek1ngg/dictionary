#ifndef DICT_DB_H
#define DICT_DB_H

#ifdef __cplusplus
extern "C" {
#endif

#define DICT_WORD_MAX      128
#define DICT_PHONETIC_MAX   64
#define DICT_TYPE_MAX       32
#define DICT_MEANING_MAX   512
#define DICT_EXAMPLE_MAX   512
#define DICT_AUDIO_MAX     512
#define DICT_TAG_MAX        64

typedef struct {
    int  id;
    char word[DICT_WORD_MAX];
    char phonetic[DICT_PHONETIC_MAX];
    char word_type[DICT_TYPE_MAX];
    char audio_path[DICT_AUDIO_MAX];
} DictWord;

typedef struct {
    int  id;
    int  word_id;
    char meaning[DICT_MEANING_MAX];
    char example[DICT_EXAMPLE_MAX];
    int  sort_order;
} DictDefinition;

/* Open DB. Returns 0 on success, -1 on error. */
int  dict_db_open(const char *db_path);
void dict_db_close(void);

/* Run SQL migrations from migrations_dir. Call after dict_db_open. */
int  dict_db_migrate(const char *migrations_dir);

/* Load definitions for one word. Returns count written, or -1 on error. */
int  dict_db_get_definitions(int word_id, DictDefinition *out_arr, int max_n);

/* CRUD for words (delete is soft-delete). Return 0 on success, -1 on error. */
int  dict_db_add_word(const DictWord *word, const char *meaning, const char *example);
int  dict_db_update_word(int word_id, const DictWord *word, const char *meaning, const char *example);
int  dict_db_soft_delete_word(int word_id);

/* Run seed SQL if words table is empty. Returns word count, or -1 on error. */
int  dict_db_seed(const char *seed_sql_path);

/* Set audio_path to assets/sounds/<word>.mp3 where it is still empty. */
int  dict_db_ensure_relative_audio_paths(void);

/* Global sqlite handle (for other core modules). */
struct sqlite3 *dict_db_handle(void);

#ifdef __cplusplus
}
#endif
#endif /* DICT_DB_H */
