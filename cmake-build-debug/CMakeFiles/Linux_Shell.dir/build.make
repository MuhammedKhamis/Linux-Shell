# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Linux_Shell.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Linux_Shell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Linux_Shell.dir/flags.make

CMakeFiles/Linux_Shell.dir/main.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Linux_Shell.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/main.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/main.c"

CMakeFiles/Linux_Shell.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/main.c" > CMakeFiles/Linux_Shell.dir/main.c.i

CMakeFiles/Linux_Shell.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/main.c" -o CMakeFiles/Linux_Shell.dir/main.c.s

CMakeFiles/Linux_Shell.dir/main.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/main.c.o.requires

CMakeFiles/Linux_Shell.dir/main.c.o.provides: CMakeFiles/Linux_Shell.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/main.c.o.provides

CMakeFiles/Linux_Shell.dir/main.c.o.provides.build: CMakeFiles/Linux_Shell.dir/main.c.o


CMakeFiles/Linux_Shell.dir/fileHandler.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/fileHandler.c.o: ../fileHandler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Linux_Shell.dir/fileHandler.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/fileHandler.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/fileHandler.c"

CMakeFiles/Linux_Shell.dir/fileHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/fileHandler.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/fileHandler.c" > CMakeFiles/Linux_Shell.dir/fileHandler.c.i

CMakeFiles/Linux_Shell.dir/fileHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/fileHandler.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/fileHandler.c" -o CMakeFiles/Linux_Shell.dir/fileHandler.c.s

CMakeFiles/Linux_Shell.dir/fileHandler.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/fileHandler.c.o.requires

CMakeFiles/Linux_Shell.dir/fileHandler.c.o.provides: CMakeFiles/Linux_Shell.dir/fileHandler.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/fileHandler.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/fileHandler.c.o.provides

CMakeFiles/Linux_Shell.dir/fileHandler.c.o.provides.build: CMakeFiles/Linux_Shell.dir/fileHandler.c.o


CMakeFiles/Linux_Shell.dir/basic.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/basic.c.o: ../basic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Linux_Shell.dir/basic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/basic.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/basic.c"

CMakeFiles/Linux_Shell.dir/basic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/basic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/basic.c" > CMakeFiles/Linux_Shell.dir/basic.c.i

CMakeFiles/Linux_Shell.dir/basic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/basic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/basic.c" -o CMakeFiles/Linux_Shell.dir/basic.c.s

CMakeFiles/Linux_Shell.dir/basic.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/basic.c.o.requires

CMakeFiles/Linux_Shell.dir/basic.c.o.provides: CMakeFiles/Linux_Shell.dir/basic.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/basic.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/basic.c.o.provides

CMakeFiles/Linux_Shell.dir/basic.c.o.provides.build: CMakeFiles/Linux_Shell.dir/basic.c.o


CMakeFiles/Linux_Shell.dir/batch.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/batch.c.o: ../batch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Linux_Shell.dir/batch.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/batch.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/batch.c"

CMakeFiles/Linux_Shell.dir/batch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/batch.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/batch.c" > CMakeFiles/Linux_Shell.dir/batch.c.i

CMakeFiles/Linux_Shell.dir/batch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/batch.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/batch.c" -o CMakeFiles/Linux_Shell.dir/batch.c.s

CMakeFiles/Linux_Shell.dir/batch.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/batch.c.o.requires

CMakeFiles/Linux_Shell.dir/batch.c.o.provides: CMakeFiles/Linux_Shell.dir/batch.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/batch.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/batch.c.o.provides

CMakeFiles/Linux_Shell.dir/batch.c.o.provides.build: CMakeFiles/Linux_Shell.dir/batch.c.o


CMakeFiles/Linux_Shell.dir/environment.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/environment.c.o: ../environment.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Linux_Shell.dir/environment.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/environment.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/environment.c"

CMakeFiles/Linux_Shell.dir/environment.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/environment.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/environment.c" > CMakeFiles/Linux_Shell.dir/environment.c.i

CMakeFiles/Linux_Shell.dir/environment.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/environment.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/environment.c" -o CMakeFiles/Linux_Shell.dir/environment.c.s

CMakeFiles/Linux_Shell.dir/environment.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/environment.c.o.requires

CMakeFiles/Linux_Shell.dir/environment.c.o.provides: CMakeFiles/Linux_Shell.dir/environment.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/environment.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/environment.c.o.provides

CMakeFiles/Linux_Shell.dir/environment.c.o.provides.build: CMakeFiles/Linux_Shell.dir/environment.c.o


CMakeFiles/Linux_Shell.dir/executer.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/executer.c.o: ../executer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Linux_Shell.dir/executer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/executer.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/executer.c"

CMakeFiles/Linux_Shell.dir/executer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/executer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/executer.c" > CMakeFiles/Linux_Shell.dir/executer.c.i

CMakeFiles/Linux_Shell.dir/executer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/executer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/executer.c" -o CMakeFiles/Linux_Shell.dir/executer.c.s

CMakeFiles/Linux_Shell.dir/executer.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/executer.c.o.requires

CMakeFiles/Linux_Shell.dir/executer.c.o.provides: CMakeFiles/Linux_Shell.dir/executer.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/executer.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/executer.c.o.provides

CMakeFiles/Linux_Shell.dir/executer.c.o.provides.build: CMakeFiles/Linux_Shell.dir/executer.c.o


CMakeFiles/Linux_Shell.dir/history.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/history.c.o: ../history.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Linux_Shell.dir/history.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/history.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/history.c"

CMakeFiles/Linux_Shell.dir/history.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/history.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/history.c" > CMakeFiles/Linux_Shell.dir/history.c.i

CMakeFiles/Linux_Shell.dir/history.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/history.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/history.c" -o CMakeFiles/Linux_Shell.dir/history.c.s

CMakeFiles/Linux_Shell.dir/history.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/history.c.o.requires

CMakeFiles/Linux_Shell.dir/history.c.o.provides: CMakeFiles/Linux_Shell.dir/history.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/history.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/history.c.o.provides

CMakeFiles/Linux_Shell.dir/history.c.o.provides.build: CMakeFiles/Linux_Shell.dir/history.c.o


CMakeFiles/Linux_Shell.dir/interactive.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/interactive.c.o: ../interactive.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Linux_Shell.dir/interactive.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/interactive.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/interactive.c"

CMakeFiles/Linux_Shell.dir/interactive.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/interactive.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/interactive.c" > CMakeFiles/Linux_Shell.dir/interactive.c.i

CMakeFiles/Linux_Shell.dir/interactive.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/interactive.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/interactive.c" -o CMakeFiles/Linux_Shell.dir/interactive.c.s

CMakeFiles/Linux_Shell.dir/interactive.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/interactive.c.o.requires

CMakeFiles/Linux_Shell.dir/interactive.c.o.provides: CMakeFiles/Linux_Shell.dir/interactive.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/interactive.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/interactive.c.o.provides

CMakeFiles/Linux_Shell.dir/interactive.c.o.provides.build: CMakeFiles/Linux_Shell.dir/interactive.c.o


CMakeFiles/Linux_Shell.dir/logger.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/logger.c.o: ../logger.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/Linux_Shell.dir/logger.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/logger.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/logger.c"

CMakeFiles/Linux_Shell.dir/logger.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/logger.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/logger.c" > CMakeFiles/Linux_Shell.dir/logger.c.i

CMakeFiles/Linux_Shell.dir/logger.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/logger.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/logger.c" -o CMakeFiles/Linux_Shell.dir/logger.c.s

CMakeFiles/Linux_Shell.dir/logger.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/logger.c.o.requires

CMakeFiles/Linux_Shell.dir/logger.c.o.provides: CMakeFiles/Linux_Shell.dir/logger.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/logger.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/logger.c.o.provides

CMakeFiles/Linux_Shell.dir/logger.c.o.provides.build: CMakeFiles/Linux_Shell.dir/logger.c.o


CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o: ../singleCommandHandler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/singleCommandHandler.c"

CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/singleCommandHandler.c" > CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.i

CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/singleCommandHandler.c" -o CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.s

CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.requires

CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.provides: CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.provides

CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.provides.build: CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o


CMakeFiles/Linux_Shell.dir/special.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/special.c.o: ../special.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/Linux_Shell.dir/special.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/special.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/special.c"

CMakeFiles/Linux_Shell.dir/special.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/special.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/special.c" > CMakeFiles/Linux_Shell.dir/special.c.i

CMakeFiles/Linux_Shell.dir/special.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/special.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/special.c" -o CMakeFiles/Linux_Shell.dir/special.c.s

CMakeFiles/Linux_Shell.dir/special.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/special.c.o.requires

CMakeFiles/Linux_Shell.dir/special.c.o.provides: CMakeFiles/Linux_Shell.dir/special.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/special.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/special.c.o.provides

CMakeFiles/Linux_Shell.dir/special.c.o.provides.build: CMakeFiles/Linux_Shell.dir/special.c.o


CMakeFiles/Linux_Shell.dir/stringparsing.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/stringparsing.c.o: ../stringparsing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/Linux_Shell.dir/stringparsing.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/stringparsing.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/stringparsing.c"

CMakeFiles/Linux_Shell.dir/stringparsing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/stringparsing.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/stringparsing.c" > CMakeFiles/Linux_Shell.dir/stringparsing.c.i

CMakeFiles/Linux_Shell.dir/stringparsing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/stringparsing.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/stringparsing.c" -o CMakeFiles/Linux_Shell.dir/stringparsing.c.s

CMakeFiles/Linux_Shell.dir/stringparsing.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/stringparsing.c.o.requires

CMakeFiles/Linux_Shell.dir/stringparsing.c.o.provides: CMakeFiles/Linux_Shell.dir/stringparsing.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/stringparsing.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/stringparsing.c.o.provides

CMakeFiles/Linux_Shell.dir/stringparsing.c.o.provides.build: CMakeFiles/Linux_Shell.dir/stringparsing.c.o


CMakeFiles/Linux_Shell.dir/vector.c.o: CMakeFiles/Linux_Shell.dir/flags.make
CMakeFiles/Linux_Shell.dir/vector.c.o: ../vector.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/Linux_Shell.dir/vector.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Linux_Shell.dir/vector.c.o   -c "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/vector.c"

CMakeFiles/Linux_Shell.dir/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Linux_Shell.dir/vector.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/vector.c" > CMakeFiles/Linux_Shell.dir/vector.c.i

CMakeFiles/Linux_Shell.dir/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Linux_Shell.dir/vector.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/vector.c" -o CMakeFiles/Linux_Shell.dir/vector.c.s

CMakeFiles/Linux_Shell.dir/vector.c.o.requires:

.PHONY : CMakeFiles/Linux_Shell.dir/vector.c.o.requires

CMakeFiles/Linux_Shell.dir/vector.c.o.provides: CMakeFiles/Linux_Shell.dir/vector.c.o.requires
	$(MAKE) -f CMakeFiles/Linux_Shell.dir/build.make CMakeFiles/Linux_Shell.dir/vector.c.o.provides.build
.PHONY : CMakeFiles/Linux_Shell.dir/vector.c.o.provides

CMakeFiles/Linux_Shell.dir/vector.c.o.provides.build: CMakeFiles/Linux_Shell.dir/vector.c.o


# Object files for target Linux_Shell
Linux_Shell_OBJECTS = \
"CMakeFiles/Linux_Shell.dir/main.c.o" \
"CMakeFiles/Linux_Shell.dir/fileHandler.c.o" \
"CMakeFiles/Linux_Shell.dir/basic.c.o" \
"CMakeFiles/Linux_Shell.dir/batch.c.o" \
"CMakeFiles/Linux_Shell.dir/environment.c.o" \
"CMakeFiles/Linux_Shell.dir/executer.c.o" \
"CMakeFiles/Linux_Shell.dir/history.c.o" \
"CMakeFiles/Linux_Shell.dir/interactive.c.o" \
"CMakeFiles/Linux_Shell.dir/logger.c.o" \
"CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o" \
"CMakeFiles/Linux_Shell.dir/special.c.o" \
"CMakeFiles/Linux_Shell.dir/stringparsing.c.o" \
"CMakeFiles/Linux_Shell.dir/vector.c.o"

# External object files for target Linux_Shell
Linux_Shell_EXTERNAL_OBJECTS =

Linux_Shell: CMakeFiles/Linux_Shell.dir/main.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/fileHandler.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/basic.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/batch.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/environment.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/executer.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/history.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/interactive.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/logger.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/special.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/stringparsing.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/vector.c.o
Linux_Shell: CMakeFiles/Linux_Shell.dir/build.make
Linux_Shell: CMakeFiles/Linux_Shell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable Linux_Shell"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Linux_Shell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Linux_Shell.dir/build: Linux_Shell

.PHONY : CMakeFiles/Linux_Shell.dir/build

CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/main.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/fileHandler.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/basic.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/batch.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/environment.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/executer.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/history.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/interactive.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/logger.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/singleCommandHandler.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/special.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/stringparsing.c.o.requires
CMakeFiles/Linux_Shell.dir/requires: CMakeFiles/Linux_Shell.dir/vector.c.o.requires

.PHONY : CMakeFiles/Linux_Shell.dir/requires

CMakeFiles/Linux_Shell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Linux_Shell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Linux_Shell.dir/clean

CMakeFiles/Linux_Shell.dir/depend:
	cd "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell" "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell" "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug" "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug" "/media/muhammed/Shared/Work/CSED 19/C/3rd Year/Operating System/Linux-Shell/cmake-build-debug/CMakeFiles/Linux_Shell.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Linux_Shell.dir/depend

