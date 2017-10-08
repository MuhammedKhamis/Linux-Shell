#include "stringparsing.h"
#include "constants.h"
#include "environment.h"
#include "vector.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>


int isValid(char c){
    if(c=='_' || isalnum(c)){
        return 1;
    }
    return 0;
}
char* subString(char* string , int start , int end){
    char* tmp = malloc((end-start+1)* sizeof(char));
    memset(tmp, '\0', end-start+1);
    int i = 0;
    while((i+start)<end){
        tmp[i]=string[start+i];
        i++;
    }
    return tmp;
}

//First we Unlock $
char* unlock_dollar(char* command){
    char* newCommand = malloc(MAX_STRING_SIZE*sizeof (char));
    memset(newCommand, '\0', MAX_STRING_SIZE * sizeof(char));
    size_t n = strlen(command);
    int i;
    for(i=0;i<n;i++){
        if(command[i]=='$'){
            int j = i+1;
            while(j<n && isValid(command[j]) ){
                j++;
            }
            //Nothing valid after $
            if(j==i+1){
                if(command[j]=='$'){
                    strcat(newCommand,get_variable("$$"));
                    i=j;
                }else{
                    i=j-1;
                }
            }else{
                char* sub = subString(command, i+1, j);
                strcat(newCommand,get_variable(sub));
                free(sub);
                i=j-1;
            }
        }else{
            char tmp[2]={'\0'};
            tmp[0]=command[i];
            strcat(newCommand,&tmp[0]);
        }
    }
    return newCommand;
}
void divide_into_arguments(char* command , commandState* state){
    vector vec ;
    init_vector(&vec, DEFAULT_VECTOR_SIZE);
    int n = (int)strlen(command);
    int i ;
    int out=1;
    int mask = 0;
    int turn = 0;
    for(i=0;i<n;i++){
        if(command[i]==' ' || command[i]=='\n')
            continue;
        int j = i;
        int margin=0;
        if(command[i] != '\"'){
            while(j<n && (command[j] != ' ') && (command[j] != '\"') && (command[j] != '\n')){
                j++;
            }
            margin=0;
            turn++;
        }else{
            out = 0;
            j++;
            while(j<n && command[j] != '\"'){
                j++;
            }
            margin=1;
            if(command[j]=='\"'){
                out=1;
            }
            mask = mask |  (1 << turn);
        }
        char tmp[MAX_STRING_SIZE]={'\0'};
        strncpy(tmp,command+i+margin,j-i-margin);
        push_back(tmp,&vec);
        i=j-1+margin;
    }
    push_back(NULL,&vec);
    if(out){
        state->mask = mask;
        state->arg_list = copyOfArray(&vec);
        int size = vec.index;
        if(size > 1){
            if(!strcmp(state->arg_list[size-2], "&")){
                state->arg_list[size-2] = NULL;
                state->background = 1;
            }
        }
        state->sz=size;
    }
    clear(&vec);
}

commandState parse_command(char* command){
    commandState state = {.arg_list = NULL , .background = 0 , .sz = 0 , .mask=0} ;
    char* newCommand = unlock_dollar(command);
    divide_into_arguments(newCommand, &state);
    ////////////////////////Crime Scene//////////////////////////////////
    // This line cause problems for the second input as Interactive mode
    //free(command);
    ///////////////////////////////////////////////////////////////////
    return state;
}
