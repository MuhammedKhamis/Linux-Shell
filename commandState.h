#ifndef COMMANDSTATE_H_   /* Include guard */
#define COMMANDSTATE_H_

typedef struct commandState{

    char** arg_list;
    int background;
    int sz;
    int mask;
    int forcedBasic;

}commandState;

#endif
