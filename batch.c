#include "batch.h"
#include "fileHandler.h"
#include "singleCommandHandler.h"
#include "logger.h"

#include <stdlib.h>

void batch(const char* fileName){
    // Read file and store it in commands
    char** commands = readFile(fileName);
    // execute commands
    int i = 0;
    appendToLogger("In Batch mode\n");
    while(commands[i] != NULL){
        // execute command
        executeCommand(commands[i]);
        i++;
    }

}
