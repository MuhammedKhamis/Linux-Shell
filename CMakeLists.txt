cmake_minimum_required(VERSION 3.7)
project(Linux_Shell)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c fileHandler.c fileHandler.h basic.c basic.h batch.c batch.h commandState.h constants.h environment.c environment.h executer.c executer.h history.c history.h interactive.c interactive.h logger.c logger.h singleCommandHandler.c singleCommandHandler.h special.c special.h stringparsing.c stringparsing.h vector.c vector.h)
add_executable(Linux_Shell ${SOURCE_FILES})