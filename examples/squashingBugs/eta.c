/*
*
*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

typedef struct item { char* key; void* data; struct item* next; } item_t;

typedef struct linkedList { item_t* head; } queue_t;

int qpush (queue_t* pq, char* key, void* data);
int qpop  (queue_t* pq, char** key, void** data);

int main(int argc, char **argv)
{
    char  data[4];
    char* keys[4] = {"aaa","bbb","ccc","ddd"};
    queue_t queue;

    // simulate a queue
    // push works, but pop has endless loop
    // because it's a linked list with a cycle

    queue.head=NULL;

    for (int j=0; j<4; ++j) {
        sprintf(data,"%3d",j);
        printf("pushing \"%s\" onto the queue\n",data); 
        fflush(stdout);
        qpush(&queue,keys[j],data);
    }

    // now pop them off
    
    item_t nextOne;

    for (int j=0; j<4; ++j) {
        qpop(&queue, &nextOne.key, &nextOne.data);
        printf( "pop: key=\"%s\" data=\"%s\"\n", nextOne.key, (char *)nextOne.data);
    }
}

int qpop( queue_t* q, char** pkey, void** pdata)  
{
    *pkey = q->head->key;
    *pdata = q->head->data;
    q->head = q->head->next;
    return 0;
}

int qpush( queue_t *q, char *key, void* data ) 
{
    assert(q || key || data );

    item_t* newone;

    assert(newone=malloc(sizeof(item_t)));
    assert(newone->key = malloc(strlen(key)+1));
    strcpy(newone->key,key);
    newone->data = data;
    newone->next = NULL;

    if (q->head) { // not the first time
        item_t *oldtop = q->head;
        q->head = newone;
        newone->next = oldtop;
        oldtop->next=q->head;
    }
    else {  // first time
        q->head = newone;
    }
    return 0;
}
