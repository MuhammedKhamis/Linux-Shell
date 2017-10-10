#include "environment.h"
#include "constants.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void init_variable(){
    size = DEFAULT_VECTOR_SIZE;
    ind = 0;
    list = malloc(size*sizeof(*list));
    envVariable home =  { .key = "HOME" , .value = getenv("HOME") } ;
    insert_variable(&home);
    envVariable path =  { .key = "PATH" , .value = getenv("PATH") } ;
    insert_variable(&path);
}

void insert_variable(envVariable* element){
    int i = 0;
    for(;i < ind ; i++){
        if(strcmp(list[i]->key,element->key) == 0){
            list[i]->value = realloc(list[i]->value, (strlen(element->value)+1)*sizeof(char));
            strcpy(list[i]->value, element->value);
            //free(element);
            return;
        }
    }
    if(ind == size){
        size*=2;
        list = realloc(list, size*sizeof(*(list)));
    }
    list[ind] = malloc(sizeof *list[ind]);
    memcpy(list[ind], element, sizeof(envVariable));
    //free(element);
    ind++;
}

char* get_variable(char* key){
    int i = 0;
    for(;i < ind ; i++){
        if(strcmp(list[i]->key,key) == 0){
            size_t n = strlen(list[i]->value)*sizeof(char);
            char* tmp = malloc(n);
            memset(tmp,'\0',n);
            strcpy(tmp,list[i]->value);
            return tmp;
        }
    }
    return "";
}


void free_env(){
    int i = 0;
    for(;i < ind ; i++){
        free(list[i]);
    }
    free(list);
    ind = size = 0;
}
