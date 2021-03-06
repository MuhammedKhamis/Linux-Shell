#include "singleCommandHandler.h"
#include "special.h"
#include "basic.h"
#include "executer.h"
#include "history.h"
#include "stringparsing.h"

#include <stdio.h>
#include <string.h>

/**
 *      skips the white characters at the beginning of the command.
 * @param command
 * @return
 */
char* skipWhite(char* command){
    int i = 0;
    while(command[i++] == ' ');
    return command;
}

/**
 *
 *      execute the command given to the function.
 *
 * @param command
 */
void executeCommand(char* command){
    command = skipWhite(command);
    if(command[0]=='\n'){
        return;
    }
    if(strlen(command) > 512){
        perror("Big size Command");
        fprintf(stderr,"Command size is bigger than 512 characters\n");
        return;
    }
    appendToHistory(command);
    commandState state = parse_command(command);
    // send it to Special
    if( special(state) == 0  && !state.forcedBasic ){
        execute_special(state, validFunction);
    }else{
        // send it to Basic
        execute_basic(state,&basic);
    }
}
