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
CMAKE_SOURCE_DIR = /home/xin/libkondo4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xin/libkondo4/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/test_ics.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_ics.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_ics.dir/flags.make

CMakeFiles/test_ics.dir/utils/test_ics.c.o: CMakeFiles/test_ics.dir/flags.make
CMakeFiles/test_ics.dir/utils/test_ics.c.o: ../utils/test_ics.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xin/libkondo4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_ics.dir/utils/test_ics.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_ics.dir/utils/test_ics.c.o   -c /home/xin/libkondo4/utils/test_ics.c

CMakeFiles/test_ics.dir/utils/test_ics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_ics.dir/utils/test_ics.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xin/libkondo4/utils/test_ics.c > CMakeFiles/test_ics.dir/utils/test_ics.c.i

CMakeFiles/test_ics.dir/utils/test_ics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_ics.dir/utils/test_ics.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xin/libkondo4/utils/test_ics.c -o CMakeFiles/test_ics.dir/utils/test_ics.c.s

CMakeFiles/test_ics.dir/utils/test_ics.c.o.requires:

.PHONY : CMakeFiles/test_ics.dir/utils/test_ics.c.o.requires

CMakeFiles/test_ics.dir/utils/test_ics.c.o.provides: CMakeFiles/test_ics.dir/utils/test_ics.c.o.requires
	$(MAKE) -f CMakeFiles/test_ics.dir/build.make CMakeFiles/test_ics.dir/utils/test_ics.c.o.provides.build
.PHONY : CMakeFiles/test_ics.dir/utils/test_ics.c.o.provides

CMakeFiles/test_ics.dir/utils/test_ics.c.o.provides.build: CMakeFiles/test_ics.dir/utils/test_ics.c.o


CMakeFiles/test_ics.dir/src/ics.c.o: CMakeFiles/test_ics.dir/flags.make
CMakeFiles/test_ics.dir/src/ics.c.o: ../src/ics.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xin/libkondo4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/test_ics.dir/src/ics.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_ics.dir/src/ics.c.o   -c /home/xin/libkondo4/src/ics.c

CMakeFiles/test_ics.dir/src/ics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_ics.dir/src/ics.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xin/libkondo4/src/ics.c > CMakeFiles/test_ics.dir/src/ics.c.i

CMakeFiles/test_ics.dir/src/ics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_ics.dir/src/ics.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xin/libkondo4/src/ics.c -o CMakeFiles/test_ics.dir/src/ics.c.s

CMakeFiles/test_ics.dir/src/ics.c.o.requires:

.PHONY : CMakeFiles/test_ics.dir/src/ics.c.o.requires

CMakeFiles/test_ics.dir/src/ics.c.o.provides: CMakeFiles/test_ics.dir/src/ics.c.o.requires
	$(MAKE) -f CMakeFiles/test_ics.dir/build.make CMakeFiles/test_ics.dir/src/ics.c.o.provides.build
.PHONY : CMakeFiles/test_ics.dir/src/ics.c.o.provides

CMakeFiles/test_ics.dir/src/ics.c.o.provides.build: CMakeFiles/test_ics.dir/src/ics.c.o


CMakeFiles/test_ics.dir/src/rcb4.c.o: CMakeFiles/test_ics.dir/flags.make
CMakeFiles/test_ics.dir/src/rcb4.c.o: ../src/rcb4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xin/libkondo4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/test_ics.dir/src/rcb4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_ics.dir/src/rcb4.c.o   -c /home/xin/libkondo4/src/rcb4.c

CMakeFiles/test_ics.dir/src/rcb4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_ics.dir/src/rcb4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xin/libkondo4/src/rcb4.c > CMakeFiles/test_ics.dir/src/rcb4.c.i

CMakeFiles/test_ics.dir/src/rcb4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_ics.dir/src/rcb4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xin/libkondo4/src/rcb4.c -o CMakeFiles/test_ics.dir/src/rcb4.c.s

CMakeFiles/test_ics.dir/src/rcb4.c.o.requires:

.PHONY : CMakeFiles/test_ics.dir/src/rcb4.c.o.requires

CMakeFiles/test_ics.dir/src/rcb4.c.o.provides: CMakeFiles/test_ics.dir/src/rcb4.c.o.requires
	$(MAKE) -f CMakeFiles/test_ics.dir/build.make CMakeFiles/test_ics.dir/src/rcb4.c.o.provides.build
.PHONY : CMakeFiles/test_ics.dir/src/rcb4.c.o.provides

CMakeFiles/test_ics.dir/src/rcb4.c.o.provides.build: CMakeFiles/test_ics.dir/src/rcb4.c.o


# Object files for target test_ics
test_ics_OBJECTS = \
"CMakeFiles/test_ics.dir/utils/test_ics.c.o" \
"CMakeFiles/test_ics.dir/src/ics.c.o" \
"CMakeFiles/test_ics.dir/src/rcb4.c.o"

# External object files for target test_ics
test_ics_EXTERNAL_OBJECTS =

test_ics: CMakeFiles/test_ics.dir/utils/test_ics.c.o
test_ics: CMakeFiles/test_ics.dir/src/ics.c.o
test_ics: CMakeFiles/test_ics.dir/src/rcb4.c.o
test_ics: CMakeFiles/test_ics.dir/build.make
test_ics: /usr/local/lib/libftdi1.so
test_ics: CMakeFiles/test_ics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xin/libkondo4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable test_ics"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_ics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_ics.dir/build: test_ics

.PHONY : CMakeFiles/test_ics.dir/build

CMakeFiles/test_ics.dir/requires: CMakeFiles/test_ics.dir/utils/test_ics.c.o.requires
CMakeFiles/test_ics.dir/requires: CMakeFiles/test_ics.dir/src/ics.c.o.requires
CMakeFiles/test_ics.dir/requires: CMakeFiles/test_ics.dir/src/rcb4.c.o.requires

.PHONY : CMakeFiles/test_ics.dir/requires

CMakeFiles/test_ics.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_ics.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_ics.dir/clean

CMakeFiles/test_ics.dir/depend:
	cd /home/xin/libkondo4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xin/libkondo4 /home/xin/libkondo4 /home/xin/libkondo4/cmake-build-debug /home/xin/libkondo4/cmake-build-debug /home/xin/libkondo4/cmake-build-debug/CMakeFiles/test_ics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_ics.dir/depend

