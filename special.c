#include "special.h"
#include "constants.h"
#include "environment.h"
#include "history.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <wait.h>

int echo(commandState state);
int cd(commandState state);
int quit(commandState state);
int history(commandState state);
int equal(commandState state);
int export(commandState state);
int comment(commandState state);
int printenv(commandState state);
void free_arg_list(char** arg_list);

/**
 *
 *      determine which function of those will be applied and save its address in
 *      function pointer (validFunction) attribute to use it later.
 *
 * @param state
 * @return
 */

int special(commandState state){
    // Size needed
    if(state.sz < 2){
        perror("Error in Command Size");
        fprintf(stderr,"Error in the size of the command\n");
        return -1;
    }
    if(!strcasecmp(state.arg_list[0], "printenv")){
        validFunction = &printenv;
        return 0;
    }
    if(!strcasecmp(state.arg_list[0], "echo")){
        validFunction = &echo;
        return 0;
    }
    if(!strcasecmp(state.arg_list[0], "cd")){
        validFunction = &cd;
        return 0;
    }
    if(!strcasecmp(state.arg_list[0], "exit")){
        validFunction = &quit;
        return 0;
    }
    if(!strcasecmp(state.arg_list[0], "history")){
        validFunction = &history;
        return 0;
    }
    if(!strcasecmp(state.arg_list[0], "export")){
        validFunction = &export;
        return 0;
    }
    if(state.arg_list[0][0] == '#'){
        validFunction = &comment;
        return 0;
    }
    if(strstr(state.arg_list[0], "=")){
        validFunction = &equal;
        return 0;
    }

    return -1;
}

/**
 *
 *      changes the current work directory.
 *
 * @param state
 * @return
 */

int cd(commandState state){
    char path[MAX_STRING_SIZE]={'\0'};
    int i = 1;
    while(state.arg_list[i] != NULL){
        strcat(path, state.arg_list[i++]);
    }
    char cwd[MAX_STRING_SIZE]={'\0'};
    int r;
    if(path[0] == '/')
    {
        //true for dir w.r.t. /
        r = chdir(path);
    }else if(path[0] == '~' || path[0] == '\0'){
        char* tmp = path+1;
        strcat(cwd,get_variable("HOME"));
        strcat(cwd,tmp);
        r = chdir(cwd);
    }else{
        // true for the dir in cwd
        getcwd(cwd,sizeof(cwd));
        strcat(cwd,"/");
        strcat(cwd,path);
        r = chdir(cwd);
    }
    if(r){
        perror("Error in cd");
        fprintf(stderr,"Error in the cd Command\n");
    }
    free_arg_list(state.arg_list);
    return r;
}
/**
 *
 *      echo function that is resposible for printing out the arguments of the echo
 *
 * @param state
 * @return
 */
int echo(commandState state){
    int i = 1;
    while(state.arg_list[i] != NULL){
        printf("%s ",state.arg_list[i++]);
    }
    printf("\n");
    free_arg_list(state.arg_list);
    return 0;
}
/**
 *
 *  this functions fires when it got exit command.
 *
 * @param state
 * @return
 */
int quit(commandState state){
    free_env();
    free_arg_list(state.arg_list);
    kill(getpid(),SIGINT);
}
/**
 *
 *      ignore any comment ( # )
 *
 * @param state
 * @return
 */
int comment(commandState state){
    return 0;
}
/**
 *
 *      prints out the history of the commands from the history file
 *
 * @param state
 * @return
 */
int history(commandState state){
    if(state.arg_list[1]== NULL){
        // open file and print it;
        printHistory();
    }
    free_arg_list(state.arg_list);
    return 0;
}
/**
 *
 *      Assignment program aka =
 *
 * @param state
 * @return -1 if error happened
 *          0 if it's OK
 */

int equal(commandState state){
    int rVal = -1;
    if(state.sz==2){
        // SEE ENVIROMENTAL VARIABLES
        addVar(state.arg_list[0]);
        rVal = 0;
    }else if(state.sz == 3 && (state.mask & 2) ){
        // [ x= , "anything" ]
        size_t n = (strlen(state.arg_list[0])+strlen(state.arg_list[1]))+1;
        char data[n];
        memset(data,'\0',sizeof(data));
        strcat(data,state.arg_list[0]);
        strcat(data,state.arg_list[1]);
        free(state.arg_list[1]);
        state.arg_list[1]= NULL;
        state.arg_list[0]= realloc(state.arg_list[0],sizeof(data));
        strcpy(state.arg_list[0],data);
        addVar(state.arg_list[0]);
        rVal=0;
    }
    free_arg_list(state.arg_list);
    if(rVal){
        perror("Error In Assignment");
        fprintf(stderr,"Error happened while making assignment\n");
    }
    return rVal;
}
/**
 *      apply the export command.
 *
 *  Short Note: I don't know the difference between this and the assignment aka =.
 *
 * @param state
 * @return
 */
int export(commandState state){
    int i = 1;
    while(state.arg_list[i-1]!=NULL){
        state.arg_list[i-1] = state.arg_list[i];
        i++;
    }
    state.mask =  state.mask >> 1;
    state.sz--;
    int r = equal(state);
    if(r){
        perror("Error In Export");
        fprintf(stderr,"Error happened in export\n");
    }
    return r;
}
/**
 *      printenv function that is responsible for printing the environmental variables.
 *
 * @param state
 * @return
 */
int printenv(commandState state){
    char c='\n';
    int i = 1;
    while( state.arg_list[i]
           && (!strcmp(state.arg_list[i],"--null") || !strcmp(state.arg_list[i],"-0"))){
        i++;
        c='\0';
    }
    if(state.sz == i+1){
        printValues(c);
    }else{
        while(state.arg_list[i]!=NULL){
            char* data = get_variable(state.arg_list[i++]);
            if(data) {
                printf("%s%c", data, c);
            }
        }
    }
    return 0;
}
/**
 *  Free the argument list that takes to avoid memory leak
 *
 * @param arg_list
 */
void free_arg_list(char** arg_list){
    int i = 0;
    while(arg_list[i]!=NULL){
        free(arg_list[i]);
        arg_list[i]= NULL;
        i++;
    }
    free(arg_list);
}
