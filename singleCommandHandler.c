#include "singleCommandHandler.h"
#include "special.h"
#include "basic.h"
#include "executer.h"
#include "history.h"
#include "stringparsing.h"


void executeCommand(char* command){
    appendToHistory(command);
    commandState state = parse_command(command);
    // send it to Special
    if( special(state) == 0 ){
        execute_special(state, validFunction);
    }else{
        // send it to Basic
        execute_basic(state,&basic);
    }
}
