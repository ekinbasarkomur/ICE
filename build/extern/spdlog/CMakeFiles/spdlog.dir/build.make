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
include extern/spdlog/CMakeFiles/spdlog.dir/depend.make

# Include the progress variables for this target.
include extern/spdlog/CMakeFiles/spdlog.dir/progress.make

# Include the compile flags for this target's objects.
include extern/spdlog/CMakeFiles/spdlog.dir/flags.make

extern/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o: ../extern/spdlog/src/spdlog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/spdlog.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/spdlog.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/spdlog.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/spdlog.cpp > CMakeFiles/spdlog.dir/src/spdlog.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/spdlog.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/spdlog.cpp -o CMakeFiles/spdlog.dir/src/spdlog.cpp.s

extern/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o: ../extern/spdlog/src/stdout_sinks.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/stdout_sinks.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/stdout_sinks.cpp > CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/stdout_sinks.cpp -o CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.s

extern/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o: ../extern/spdlog/src/color_sinks.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/color_sinks.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/color_sinks.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/color_sinks.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/color_sinks.cpp > CMakeFiles/spdlog.dir/src/color_sinks.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/color_sinks.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/color_sinks.cpp -o CMakeFiles/spdlog.dir/src/color_sinks.cpp.s

extern/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o: ../extern/spdlog/src/file_sinks.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/file_sinks.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/file_sinks.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/file_sinks.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/file_sinks.cpp > CMakeFiles/spdlog.dir/src/file_sinks.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/file_sinks.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/file_sinks.cpp -o CMakeFiles/spdlog.dir/src/file_sinks.cpp.s

extern/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o: ../extern/spdlog/src/async.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/async.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/async.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/async.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/async.cpp > CMakeFiles/spdlog.dir/src/async.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/async.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/async.cpp -o CMakeFiles/spdlog.dir/src/async.cpp.s

extern/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o: ../extern/spdlog/src/cfg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/cfg.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/cfg.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/cfg.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/cfg.cpp > CMakeFiles/spdlog.dir/src/cfg.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/cfg.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/cfg.cpp -o CMakeFiles/spdlog.dir/src/cfg.cpp.s

extern/spdlog/CMakeFiles/spdlog.dir/src/fmt.cpp.o: extern/spdlog/CMakeFiles/spdlog.dir/flags.make
extern/spdlog/CMakeFiles/spdlog.dir/src/fmt.cpp.o: ../extern/spdlog/src/fmt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object extern/spdlog/CMakeFiles/spdlog.dir/src/fmt.cpp.o"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spdlog.dir/src/fmt.cpp.o -c /home/ekin/Projects/ICE/extern/spdlog/src/fmt.cpp

extern/spdlog/CMakeFiles/spdlog.dir/src/fmt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/fmt.cpp.i"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekin/Projects/ICE/extern/spdlog/src/fmt.cpp > CMakeFiles/spdlog.dir/src/fmt.cpp.i

extern/spdlog/CMakeFiles/spdlog.dir/src/fmt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/fmt.cpp.s"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekin/Projects/ICE/extern/spdlog/src/fmt.cpp -o CMakeFiles/spdlog.dir/src/fmt.cpp.s

# Object files for target spdlog
spdlog_OBJECTS = \
"CMakeFiles/spdlog.dir/src/spdlog.cpp.o" \
"CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o" \
"CMakeFiles/spdlog.dir/src/color_sinks.cpp.o" \
"CMakeFiles/spdlog.dir/src/file_sinks.cpp.o" \
"CMakeFiles/spdlog.dir/src/async.cpp.o" \
"CMakeFiles/spdlog.dir/src/cfg.cpp.o" \
"CMakeFiles/spdlog.dir/src/fmt.cpp.o"

# External object files for target spdlog
spdlog_EXTERNAL_OBJECTS =

extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/src/fmt.cpp.o
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/build.make
extern/spdlog/libspdlog.a: extern/spdlog/CMakeFiles/spdlog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ekin/Projects/ICE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libspdlog.a"
	cd /home/ekin/Projects/ICE/build/extern/spdlog && $(CMAKE_COMMAND) -P CMakeFiles/spdlog.dir/cmake_clean_target.cmake
	cd /home/ekin/Projects/ICE/build/extern/spdlog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spdlog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/spdlog/CMakeFiles/spdlog.dir/build: extern/spdlog/libspdlog.a

.PHONY : extern/spdlog/CMakeFiles/spdlog.dir/build

extern/spdlog/CMakeFiles/spdlog.dir/clean:
	cd /home/ekin/Projects/ICE/build/extern/spdlog && $(CMAKE_COMMAND) -P CMakeFiles/spdlog.dir/cmake_clean.cmake
.PHONY : extern/spdlog/CMakeFiles/spdlog.dir/clean

extern/spdlog/CMakeFiles/spdlog.dir/depend:
	cd /home/ekin/Projects/ICE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ekin/Projects/ICE /home/ekin/Projects/ICE/extern/spdlog /home/ekin/Projects/ICE/build /home/ekin/Projects/ICE/build/extern/spdlog /home/ekin/Projects/ICE/build/extern/spdlog/CMakeFiles/spdlog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extern/spdlog/CMakeFiles/spdlog.dir/depend

