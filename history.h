#ifndef HISTORY_H_   /* Include guard */
#define HISTORY_H_

char* historyFile;

void init_history();

int printHistory();

int appendToHistory(const char* command);

#endif
