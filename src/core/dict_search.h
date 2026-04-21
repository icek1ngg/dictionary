#ifndef DICT_SEARCH_H
#define DICT_SEARCH_H

#include "dict_db.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Exact match by word (case-insensitive). Returns 1 if found, 0 if not. */
int dict_search_exact(const char *query, DictWord *out);

/* Prefix search (LIKE prefix%). Returns number of matches (<= max_n). */
int dict_search_prefix(const char *prefix, DictWord *out_arr, int max_n);

#ifdef __cplusplus
}
#endif
#endif /* DICT_SEARCH_H */
