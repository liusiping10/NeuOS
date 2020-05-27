# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nvidia/energymon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/energymon/build

# Include any dependencies generated for this target.
include shmem/CMakeFiles/energymon-shmem.dir/depend.make

# Include the progress variables for this target.
include shmem/CMakeFiles/energymon-shmem.dir/progress.make

# Include the compile flags for this target's objects.
include shmem/CMakeFiles/energymon-shmem.dir/flags.make

shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o: shmem/CMakeFiles/energymon-shmem.dir/flags.make
shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o: ../shmem/energymon-shmem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o"
	cd /home/nvidia/energymon/build/shmem && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o   -c /home/nvidia/energymon/shmem/energymon-shmem.c

shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/energymon-shmem.dir/energymon-shmem.c.i"
	cd /home/nvidia/energymon/build/shmem && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nvidia/energymon/shmem/energymon-shmem.c > CMakeFiles/energymon-shmem.dir/energymon-shmem.c.i

shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/energymon-shmem.dir/energymon-shmem.c.s"
	cd /home/nvidia/energymon/build/shmem && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nvidia/energymon/shmem/energymon-shmem.c -o CMakeFiles/energymon-shmem.dir/energymon-shmem.c.s

shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.requires:

.PHONY : shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.requires

shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.provides: shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.requires
	$(MAKE) -f shmem/CMakeFiles/energymon-shmem.dir/build.make shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.provides.build
.PHONY : shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.provides

shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.provides.build: shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o


shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o: shmem/CMakeFiles/energymon-shmem.dir/flags.make
shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o: ../src/energymon-util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o"
	cd /home/nvidia/energymon/build/shmem && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o   -c /home/nvidia/energymon/src/energymon-util.c

shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.i"
	cd /home/nvidia/energymon/build/shmem && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nvidia/energymon/src/energymon-util.c > CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.i

shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.s"
	cd /home/nvidia/energymon/build/shmem && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nvidia/energymon/src/energymon-util.c -o CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.s

shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.requires:

.PHONY : shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.requires

shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.provides: shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.requires
	$(MAKE) -f shmem/CMakeFiles/energymon-shmem.dir/build.make shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.provides.build
.PHONY : shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.provides

shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.provides.build: shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o


# Object files for target energymon-shmem
energymon__shmem_OBJECTS = \
"CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o" \
"CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o"

# External object files for target energymon-shmem
energymon__shmem_EXTERNAL_OBJECTS =

lib/libenergymon-shmem.so: shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o
lib/libenergymon-shmem.so: shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o
lib/libenergymon-shmem.so: shmem/CMakeFiles/energymon-shmem.dir/build.make
lib/libenergymon-shmem.so: shmem/CMakeFiles/energymon-shmem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared library ../lib/libenergymon-shmem.so"
	cd /home/nvidia/energymon/build/shmem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/energymon-shmem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shmem/CMakeFiles/energymon-shmem.dir/build: lib/libenergymon-shmem.so

.PHONY : shmem/CMakeFiles/energymon-shmem.dir/build

shmem/CMakeFiles/energymon-shmem.dir/requires: shmem/CMakeFiles/energymon-shmem.dir/energymon-shmem.c.o.requires
shmem/CMakeFiles/energymon-shmem.dir/requires: shmem/CMakeFiles/energymon-shmem.dir/__/src/energymon-util.c.o.requires

.PHONY : shmem/CMakeFiles/energymon-shmem.dir/requires

shmem/CMakeFiles/energymon-shmem.dir/clean:
	cd /home/nvidia/energymon/build/shmem && $(CMAKE_COMMAND) -P CMakeFiles/energymon-shmem.dir/cmake_clean.cmake
.PHONY : shmem/CMakeFiles/energymon-shmem.dir/clean

shmem/CMakeFiles/energymon-shmem.dir/depend:
	cd /home/nvidia/energymon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/energymon /home/nvidia/energymon/shmem /home/nvidia/energymon/build /home/nvidia/energymon/build/shmem /home/nvidia/energymon/build/shmem/CMakeFiles/energymon-shmem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shmem/CMakeFiles/energymon-shmem.dir/depend
