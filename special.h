#ifndef SPECIAL_H_   /* Include guard */
#define SPECIAL_H_

#include "commandState.h"

typedef int (*functionPtr)(commandState);

functionPtr validFunction;

int special(commandState state);

#endif
