# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ekin/Projects/ICE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ekin/Projects/ICE/build

# Include any dependencies generated for this target.
include src/ICE/core/CMakeFiles/ICE_CORE.dir/depend.make

# Include the progress variables for this target.
include src/ICE/core/CMakeFiles/ICE_CORE.dir/progress.make

# Include the compile flags for this target's objects.
include src/ICE/core/CMakeFiles/ICE_CORE.dir/flags.make

src/ICE/core/CMakeFiles/ICE_CORE.dir/log.cpp.o: src/ICE/core/CMakeFiles/ICE_CORE.dir/flags.make
src/ICE/core/CMakeFiles/ICE_CORE.dir/log.cpp.o: ../src/ICE/core/log.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/ICE/core/CMakeFiles/ICE_CORE.dir/log.cpp.o"
	cd /home/ekin/Projects/ICE/build/src/ICE/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ICE_CORE.dir/log.cpp.o -c /home/ekin/Projects/ICE/src/ICE/core/log.cpp

src/ICE/core/CMakeFiles/ICE_CORE.dir/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ICE_CORE.dir/log.cpp.i"
	cd /home/ekin/Projects/ICE/build/src/ICE/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/src/ICE/core/log.cpp > CMakeFiles/ICE_CORE.dir/log.cpp.i

src/ICE/core/CMakeFiles/ICE_CORE.dir/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ICE_CORE.dir/log.cpp.s"
	cd /home/ekin/Projects/ICE/build/src/ICE/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/src/ICE/core/log.cpp -o CMakeFiles/ICE_CORE.dir/log.cpp.s

# Object files for target ICE_CORE
ICE_CORE_OBJECTS = \
"CMakeFiles/ICE_CORE.dir/log.cpp.o"

# External object files for target ICE_CORE
ICE_CORE_EXTERNAL_OBJECTS =

../lib/libICE_CORE.a: src/ICE/core/CMakeFiles/ICE_CORE.dir/log.cpp.o
../lib/libICE_CORE.a: src/ICE/core/CMakeFiles/ICE_CORE.dir/build.make
../lib/libICE_CORE.a: src/ICE/core/CMakeFiles/ICE_CORE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../lib/libICE_CORE.a"
	cd /home/ekin/Projects/ICE/build/src/ICE/core && $(CMAKE_COMMAND) -P CMakeFiles/ICE_CORE.dir/cmake_clean_target.cmake
	cd /home/ekin/Projects/ICE/build/src/ICE/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ICE_CORE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/ICE/core/CMakeFiles/ICE_CORE.dir/build: ../lib/libICE_CORE.a

.PHONY : src/ICE/core/CMakeFiles/ICE_CORE.dir/build

src/ICE/core/CMakeFiles/ICE_CORE.dir/clean:
	cd /home/ekin/Projects/ICE/build/src/ICE/core && $(CMAKE_COMMAND) -P CMakeFiles/ICE_CORE.dir/cmake_clean.cmake
.PHONY : src/ICE/core/CMakeFiles/ICE_CORE.dir/clean

src/ICE/core/CMakeFiles/ICE_CORE.dir/depend:
	cd /home/ekin/Projects/ICE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ekin/Projects/ICE /home/ekin/Projects/ICE/src/ICE/core /home/ekin/Projects/ICE/build /home/ekin/Projects/ICE/build/src/ICE/core /home/ekin/Projects/ICE/build/src/ICE/core/CMakeFiles/ICE_CORE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/ICE/core/CMakeFiles/ICE_CORE.dir/depend

