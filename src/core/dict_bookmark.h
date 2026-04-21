#ifndef DICT_BOOKMARK_H
#define DICT_BOOKMARK_H

#include "dict_db.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Save word; optional tag links it in bookmark_tag_map. */
int dict_bookmark_add(int word_id, const char *tag);

/* Remove bookmark and all its tag links. */
int dict_bookmark_remove(int word_id);

/* 1 if word is bookmarked, else 0. */
int dict_bookmark_is_saved(int word_id);

/* All bookmarked words (newest first). */
int dict_bookmark_get_all(DictWord *out_arr, int max_n);

/* Bookmarked words that have the given tag. */
int dict_bookmark_get_by_tag(const char *tag, DictWord *out_arr, int max_n);

/* All tag names (sorted). Writes into out_tags[i]. Returns count or -1. */
int dict_bookmark_get_tags(char out_tags[][DICT_TAG_MAX], int max_n);

/* Create tag if missing. */
int dict_tag_create(const char *tag_name);
/* Rename tag (by old name). */
int dict_tag_rename(const char *old_name, const char *new_name);
/* Delete tag and its mappings. */
int dict_tag_delete(const char *tag_name);

/* Link word to tag (no-op if already linked). */
int dict_bookmark_add_to_tag(int word_id, const char *tag_name);

/* Unlink word from tag; drop bookmark if no tags left. */
int dict_bookmark_remove_from_tag(int word_id, const char *tag_name);

/* Tag names for one bookmarked word. */
int dict_bookmark_get_word_tags(int word_id, char out_tags[][DICT_TAG_MAX], int max_n);

#ifdef __cplusplus
}
#endif
#endif /* DICT_BOOKMARK_H */
