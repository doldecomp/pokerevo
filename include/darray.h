#ifndef POKEREVO_DARRAY_H
#define POKEREVO_DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "types.h"

typedef s32 (*CompareFunction)(const void *, const void *);
typedef BOOL (*MapFunction)(const void *, s32);
typedef void (*DtorFunction)(void *);

typedef struct DArray {
    s32 size;
    s32 capacity;
    u32 elemSz;
    s32 growAmount;
    DtorFunction elemDtor;
    char *buf;
} DArray;

DArray *ArrayNew(u32 p1, s32 p2, DtorFunction dtor);
void *ArrayNth(DArray *p1, s32 p2);
void ArrayMapBackwards(DArray *p1, MapFunction p2, s32 p3);
void *ArrayMapBackwards2(DArray *p1, MapFunction p2, s32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DARRAY_H
