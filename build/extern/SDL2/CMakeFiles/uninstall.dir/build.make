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

# Utility rule file for uninstall.

# Include the progress variables for this target.
include extern/SDL2/CMakeFiles/uninstall.dir/progress.make

extern/SDL2/CMakeFiles/uninstall:
	cd /home/ekin/Projects/ICE/build/extern/SDL2 && /usr/bin/cmake -P /home/ekin/Projects/ICE/build/extern/SDL2/cmake_uninstall.cmake

uninstall: extern/SDL2/CMakeFiles/uninstall
uninstall: extern/SDL2/CMakeFiles/uninstall.dir/build.make

.PHONY : uninstall

# Rule to build all files generated by this target.
extern/SDL2/CMakeFiles/uninstall.dir/build: uninstall

.PHONY : extern/SDL2/CMakeFiles/uninstall.dir/build

extern/SDL2/CMakeFiles/uninstall.dir/clean:
	cd /home/ekin/Projects/ICE/build/extern/SDL2 && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : extern/SDL2/CMakeFiles/uninstall.dir/clean

extern/SDL2/CMakeFiles/uninstall.dir/depend:
	cd /home/ekin/Projects/ICE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ekin/Projects/ICE /home/ekin/Projects/ICE/extern/SDL2 /home/ekin/Projects/ICE/build /home/ekin/Projects/ICE/build/extern/SDL2 /home/ekin/Projects/ICE/build/extern/SDL2/CMakeFiles/uninstall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extern/SDL2/CMakeFiles/uninstall.dir/depend
