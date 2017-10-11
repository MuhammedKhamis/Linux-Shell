#include "logger.h"
#include "constants.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

/**
 *
 *      append the string to the logger file.
 *
 * @param input
 * @return
 */

int appendToLogger(const char* input){
    FILE* fp = fopen(loggerFile,"a");
    if (fp == NULL){
        printf("File not found\n");
        return -1;
    }
    fprintf(fp,"%s",input);
    fclose(fp);
    return 0;
}
/**
 *
 *  initialize the logger environment.
 *
 */
void init_logger(){
    loggerFile= malloc(MAX_STRING_SIZE*sizeof (*loggerFile));
    memset(loggerFile,'\0',MAX_STRING_SIZE*sizeof(*loggerFile));
    getcwd(loggerFile,MAX_STRING_SIZE*sizeof(*loggerFile));
    strcat(loggerFile,"/");
    strcat(loggerFile,"logger.txt");
}
