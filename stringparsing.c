#include "stringparsing.h"
#include "constants.h"
#include "environment.h"
#include "vector.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>

/**
 *      check if the character c in a number or alpha or an underscore
 * @param c
 * @return
 */
int isValid(char c){
    if(c=='_' || isalnum(c)){
        return 1;
    }
    return 0;
}
/**
 *
 *      check for the skip characters " \n\r\t\a"
 *
 * @param c
 * @return
 */
int skip(char c){
    if(c==' ' || c=='\n' || c=='\t' || c=='\r' || c=='\a'){
        return 1;
    }
    return 0;
}
/**
 *
 *   get substring from index start to index end from string
 *
 * @param string
 * @param start
 * @param end
 * @return
 */
char* subString(char* string , int start , int end){
    size_t sz = (end-start+1)* sizeof(char);
    char* tmp = malloc(sz);
    memset(tmp, '\0', sz);
    int i = 0;
    while((i+start)<end){
        tmp[i]=string[start+i];
        i++;
    }
    return tmp;
}

/**
 *
 *      remove the variables in the given command e.g. $x $x_
 *
 * @param command
 * @param state
 * @return
 */

//First we Unlock $
char* unlock_dollar(char* command,commandState* state){
    char* newCommand = malloc(MAX_STRING_SIZE*sizeof (char));
    memset(newCommand, '\0', MAX_STRING_SIZE * sizeof(char));
    size_t n = strlen(command);
    if( (n>1)  && (command[0]=='$' || (command[0]=='\"' && command[1]=='$'))){
        state->forcedBasic=1;
    }
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
                    char str[6]={'\0'};
                    sprintf(str,"%d",getpid());
                    strcat(newCommand,str);
                    i=j;
                }else{
                    strcat(newCommand,&command[i]);
                    i=j-1;
                }
            }else{
                char* sub = subString(command, i+1, j);
                char* var = get_variable(sub);
                if(var) {
                    strcat(newCommand, var);
                    free(var);
                }
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

/**
 *
 *      divide the command into arguments and analysis it , then put the results
 *      in the state parameter.
 *
 * @param command
 * @param state
 */
void divide_into_arguments(char* command , commandState* state){
    vector vec ;
    init_vector(&vec, DEFAULT_VECTOR_SIZE);
    int n = (int)strlen(command);
    int i ;
    int out=1;
    int mask = 0;
    int turn = 0;
    for(i=0;i<n;i++){
        if(skip(command[i]))
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
            }else if(state->arg_list[size-2][strlen(state->arg_list[size-2])-2]=='&'){
                state->arg_list[size-2][strlen(state->arg_list[size-2])-1]='\0';
                state->background=1;
            }
        }
        state->sz=size;
    }
    clear(&vec);
}
/**
 *
 *      takes the command and parse it back.
 *
 * @param command
 * @return the state of the command given to the function.
 */

commandState parse_command(char* command){
    commandState state = {.arg_list = NULL , .background = 0 , .sz = 0 , .mask=0 , .forcedBasic = 0} ;
    char* newCommand = unlock_dollar(command,&state);
    divide_into_arguments(newCommand, &state);
    return state;
}
