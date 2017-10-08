#include <stdio.h>
#include <stdlib.h>
#include "vector.h"
#include "fileHandler.h"
#include "constants.h"

char* nullArray[] = {NULL};

char** readFile(const char* fileName){
    char * line = NULL;
    size_t len = 0;
    ssize_t read;
    FILE* fp = fopen(fileName,"r");
    if (fp == NULL){
        printf("File not found\n");
        return nullArray;
    }
    vector vec;
    init_vector(&vec,DEFAULT_VECTOR_SIZE);
    while ((read = getline(&line, &len, fp)) != -1) {
        // Store in vector;
        push_back(line,&vec);
    }
    fclose(fp);
    if (line)
        free(line);
    // I guess there will be a bug in Here , pointers xD
    push_back(NULL,&vec);
    char** res = copyOfArray(&vec);
    clear(&vec);
    return res;
}
