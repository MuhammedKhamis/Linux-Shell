#ifndef LOGGER_H_   /* Include guard */
#define LOGGER_H_

char* loggerFile;

int appendToLogger(const char* input);

void init_logger();

#endif
