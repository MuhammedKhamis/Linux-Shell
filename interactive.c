#include "interactive.h"
#include "singleCommandHandler.h"
#include "logger.h"

#include <stdio.h>
#include <stdlib.h>

/**
 *
 *  Interactive mode Activated B)
 *
 */

void interactive(){
    char* command = NULL;
    size_t len = 0;
    while(1){
        printf("SHELL>>");
        if(getline(&command, &len, stdin) == -1){
            appendToLogger("Error from Reading from Console\n");
            printf("\n");
            free(command);
            exit(1);
        }else{
            executeCommand(command);
        }
    }

}
