#ifndef ENVIROMENTAL_H_   /* Include guard */
#define ENVIROMENTAL_H_

typedef struct envVariable {
    char* key;
    char* value;

} envVariable;

envVariable** list;
int ind;
int size;

void init_variable();

void insert_variable(envVariable* var);

char* get_variable(char* key);

void free_env();

#endif
