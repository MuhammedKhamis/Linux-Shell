#include "batch.h"
#include "interactive.h"
#include "environment.h"
#include "history.h"
#include "logger.h"
#include "executer.h"

#include <unistd.h>
/**
 *
 *      initialize the environment before the mode starts
 *
 * @param envp
 */
void init_env(char* envp[]){
    init_variable();
    init_history();
    init_logger();
    init_signal();
    int i = 0;
    while (envp[i]){
        addVar(envp[i++]);
    }
    chdir(get_variable("HOME"));
}

/**
 *      the main function ^_^
 * @param argc
 * @param argv
 * @param envp
 * @return
 */
int main(int argc, char* argv[],char* envp[]) {
    init_env(envp);

    if (argc > 1){
        // Batch Mode
        batch(argv[1]);
    }else{
        // Interactive Mode
        interactive();
    }
    return 0;
}
