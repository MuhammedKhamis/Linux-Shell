#include "basic.h"
#include "environment.h"
#include "constants.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

/**
 *      execute the basic command as ls, pwd, ps, ...etc.
 * @param state
 * @return
 */

int basic(commandState state){

    char* path = get_variable("PATH");
    char* data = strtok(path,":");
    while( data != NULL){
        char* tmp = malloc(MAX_STRING_SIZE* sizeof (char));
        memset(tmp, '\0', MAX_STRING_SIZE* sizeof(char));
        strcat(tmp, data);
        strcat(tmp, "/");
        strcat(tmp, state.arg_list[0]);
        execv(tmp,state.arg_list);
        data = strtok(NULL, ":");
        free(tmp);
    }
    free(data);
    execv(state.arg_list[0],state.arg_list);
    perror("Error in execv Command");
    fprintf(stderr,"Error in command to execv\n");
}
