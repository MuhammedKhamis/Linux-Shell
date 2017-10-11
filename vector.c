#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "vector.h"

/**
 *
 *      initialize the vector data structure provided to the function as a pointer
 *      with the size given to the function.
 *
 * @param vec
 * @param size
 */
void init_vector(vector* vec,int size){
    vec->size = size;
    vec->index = 0;
    vec->array = malloc(size *  sizeof *(vec->array) );
}
/**
 *
 *      push an element at the back of the array.
 *
 * @param element
 * @param vec
 */
void push_back(char* element, vector* vec){
    if(vec->size == vec->index){
        vec->size*=2;
        vec->array = realloc(vec->array,(vec->size) * sizeof(*(vec->array)));
    }
    if(element == NULL){
        vec->array[vec->index] = NULL;
    }else{
        vec->array[vec->index] = malloc(strlen(element) * sizeof(*(vec->array[vec->index])) );
        memset(vec->array[vec->index],'\0',sizeof(vec->array[vec->index]));
        strcpy(vec->array[vec->index], element);
    }
    vec->index++;
}

/**
 *
 *    clear the vector sent to the function as pointer.
 *
 * @param vec
 */

void clear(vector* vec){
    free(vec->array);
    vec->array = NULL;
    vec->index = vec->size=0;
}

/**
 *
 *      make a copy of the inputs in the vector
 *
 * @param vec
 * @return array of string each one contains an element in the vector.
 */

char** copyOfArray(vector* vec){
    char** res = malloc(vec->index * sizeof *res );
    int i;
    for(i = 0 ; i < vec->index;i++){
        res[i] = vec->array[i];
    }
    return res;
}
