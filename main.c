#include "batch.h"
#include "interactive.h"
#include "environment.h"
#include "history.h"
#include "logger.h"

#include <unistd.h>

void init_env(){
    init_variable();
    init_history();
    init_logger();
    chdir(get_variable("HOME"));
}

int main(int argc, char const *argv[]) {
    init_env();
    if (argc > 1){
        // Batch Mode
        batch(argv[1]);
    }else{
        // Interactive Mode
        interactive();
    }
    return 0;
}
