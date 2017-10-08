#include "history.h"
#include "constants.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int printHistory(){
    char* line = NULL;
    size_t len = 0;
    ssize_t read;
    FILE* fp = fopen(historyFile,"r");
    if (fp == NULL){
        printf("File not found\n");
        return -1;
    }
    while ((read = getline(&line, &len, fp)) != -1) {
        printf("%s",line);
    }
    fclose(fp);
    if (line)
        free(line);
    return 0;
}
int appendToHistory(const char* command){
    FILE* fp = fopen(historyFile,"a");
    if (fp == NULL){
        printf("File not found\n");
        return -1;
    }
    fprintf(fp,"%s",command);
    fclose(fp);
    return 0;
}
void init_history(){
    historyFile= malloc(MAX_STRING_SIZE*sizeof (*historyFile));
    memset(historyFile,'\0',MAX_STRING_SIZE*sizeof(*historyFile));
    getcwd(historyFile,MAX_STRING_SIZE*sizeof(*historyFile));
    strcat(historyFile,"/");
    strcat(historyFile,"history.txt");
}