#ifndef EXECUTER_H_   /* Include guard */
#define EXECUTER_H_

#include "commandState.h"


void init_signal();

int execute_basic(commandState state, int (*functionPtr)(commandState));


int execute_special(commandState state, int (*functionPtr)(commandState));

#endif
