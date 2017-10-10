#include "logger.h"
#include "commandState.h"

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <wait.h>


void handler(int signal){
    if(signal == SIGCHLD){
        appendToLogger("Child is Terminated\n");
    }
}

int execute_basic(commandState state, int (*functionPtr)(commandState)){
    int status;
    signal(SIGCHLD,handler);
    pid_t child_pid = fork();
    if(child_pid == 0){
        //In Child
        (*functionPtr)(state);
        kill(getpid(),SIGINT);
    }else{
        // In Parent
        appendToLogger("Child is Created\n");
        if(!state.background){
            do {
                  waitpid(child_pid, &status, WUNTRACED);
            } while (!WIFEXITED(status) && !WIFSIGNALED(status));
        }
    }
}

int execute_special(commandState state, int (*functionPtr)(commandState) ){

    if(state.background){
        execute_basic(state,functionPtr);
    }else{
        (*functionPtr)(state);
    }
}
