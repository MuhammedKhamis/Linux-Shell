#include "logger.h"
#include "commandState.h"

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <wait.h>

/**
 *
 *  handler that fires when the child dies
 *
 * @param signal
 */
void handler(int signal){
    if(signal == SIGCHLD){
        appendToLogger("Child is Terminated\n");
    }
}

/**
 *  set a signal listener to the child process to trigger the handler when the signal fires.
 *
 */

void init_signal(){
    signal(SIGCHLD,handler);
}

/**
 *
 *      execute the basic function as ls, pwd, ps, ...etc.
 *
 * @param state
 * @param functionPtr
 * @return
 */

int execute_basic(commandState state, int (*functionPtr)(commandState)){
    int status;
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

/**
 *
 *      execute the special function as cd, echo, exit, ...etc.
 *
 * @param state
 * @param functionPtr
 * @return
 */

int execute_special(commandState state, int (*functionPtr)(commandState) ){

    if(state.background){
        execute_basic(state,functionPtr);
    }else{
        (*functionPtr)(state);
    }
}
