/*
 * tree.h : a first construction of a 'tree' data structure,
 * 
 * Charles C Palmer - Winter 2024
 */

#ifndef __TREE__
#define __TREE__

#include <stdio.h>
#include <stdbool.h>

/* the tree as a whole */
typedef struct tree tree_t;

/* ********************* tree_new ************************* */
/* tree_new: create a new tree.
 *
 * We return:
 *   a pointer if success, NULL if failure.
 * We guarantee:
 *   the tree is initialized as empty.
 * Caller is responsible for:
 *   eventually calling tree_delete()
 * Notes:
 *   
 */
tree_t* tree_new(void);

/* ********************* tree_insert ************************* */
/* tree_insert: insert the given item into the tree.
 *
 * We assume:
 *   caller provides a valid tree pointer valid item pointer.
 * We return:
 *   true if success, false if failure.
 * We guarantee:
 *   item pointer will be retained in tree; item itself is not copied.
 * Caller is responsible for:
 *   later pulling the item out of the tree and free'ing it if appropriate.
 * Notes:
 *   Note the tree stores a copy of the item pointer - but not the item itself.
 */
bool tree_insert(tree_t* tree, void* item);

/* ********************* tree_extract ************************* */
/* tree_extract: extract an item (any item) from the tree.
 * We assume:
 *   caller provides a valid tree pointer.
 * We return:
 *   an item pointer, or NULL if tree is empty or if some failure.
 * We guarantee:
 *   return of an item from the tree, if tree is not empty.
 * Caller is responsible for:
 *   freeing the item if that is appropriate.
 */
void* tree_extract(tree_t* tree);


/* ********************* tree_print ************************* */
/* tree_print: print a tree, calling the func on each item.
 * We assume:
 *   caller provides a valid tree;
 *   caller provides a valid print-function pointer.
 *   output should go to stdout.
 * We return:
 *   nothing.
 * We print:
 *   the list of items, separated by comma-space, surrounded by {curly brackets}.
 * Caller is responsible for:
 *   printing a following newline if desired.
 * Notes:
 *   All our output is to stdout so printfunc should also print to stdout.
 *   We print nothing if tree==NULL; we print empty strings if printfunc==NULL.
 */
void tree_print(tree_t* tree, FILE* fp, void (*printfunc)(FILE* fp, void* item));

#endif // __TREE__
