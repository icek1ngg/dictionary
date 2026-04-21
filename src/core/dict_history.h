#ifndef DICT_HISTORY_H
#define DICT_HISTORY_H

#include "dict_db.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Append one lookup to history. */
int dict_history_add(int word_id);

/* Recent lookups, newest first. Returns count, or -1 on error. */
int dict_history_get(DictWord *out_arr, int max_n);

/* Delete all history rows. */
int dict_history_clear(void);

#ifdef __cplusplus
}
#endif
#endif /* DICT_HISTORY_H */
