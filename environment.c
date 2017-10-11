#include "environment.h"
#include "constants.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

/**
 *
 *  check if key is valid until the = sign
 *
 * @param key
 * @return
 */

int isValidKey(char* key){
    while(key){
        if(*key=='='){
            break;
        }
        if( !isalnum(*key) && *key!='_'){
            return 1;
        }
        key++;
    }
    return 0;
}

/**
 *  initialize the variable environment
 *
 */

void init_variable(){
    size = DEFAULT_VECTOR_SIZE;
    ind = 0;
    list = malloc(size*sizeof(*list));
}
/**
 *
 *  insert the element at the end of the table.
 *
 * @param element
 */

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
/**
 *
 *      get the value of the given key from the table.
 *
 * @param key
 * @return
 */

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
    return NULL;
}
/**
 *
 *      pares the expression and send it to the insert function
 *      to add the pair of key and value.
 *
 * @param expression
 * @return
 */
int addVar(char* expression){
    char* data;
    if((data = strstr(expression,"=")) != NULL){
        envVariable var ;
        int sz = strlen(expression);
        var.key = (char*)malloc(sizeof(char)*sz);
        memset(var.key, '\0', sizeof(var.key));
        var.value = (char*)malloc(sizeof(char)*sz);
        memset(var.value, '\0', sizeof(var.value));
        strncpy(var.key, expression, data-expression);
        strncpy(var.value, data+1, expression+sz-data);
        if(!isValidKey(expression)){
            insert_variable(&var);
            return 0;
        }
        return 1;
    }
    return 1;
}

/**
 *
 *  print all key, value pair in the list
 *
 * @param c
 */

void printValues(char c){
    int i;
    for(i = 0 ; i < ind;i++){
        printf("%s=%s%c",list[i]->key,list[i]->value,c);
    }
}
/**
 *
 *      free the list
 *
 */

void free_env(){
    int i = 0;
    for(;i < ind ; i++){
        free(list[i]);
    }
    free(list);
    ind = size = 0;
}
