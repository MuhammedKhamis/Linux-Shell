#ifndef VECTOR_H_   /* Include guard */
#define VECTOR_H_

typedef struct vector {
    int index;
    int size;
    char** array;
} vector;

void init_vector(vector* vec,int size);

void push_back(char* element, vector* vec);

void clear(vector* vec);

char** copyOfArray(vector* vec);

#endif
