# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build

# Include any dependencies generated for this target.
include src/CMakeFiles/basic_socket.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/basic_socket.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/basic_socket.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/basic_socket.dir/flags.make

src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o: src/CMakeFiles/basic_socket.dir/flags.make
src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o: ../src/payload/basicbuilder.cpp
src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o: src/CMakeFiles/basic_socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o -MF CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o.d -o CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o -c /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/payload/basicbuilder.cpp

src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.i"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/payload/basicbuilder.cpp > CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.i

src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.s"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/payload/basicbuilder.cpp -o CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.s

src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o: src/CMakeFiles/basic_socket.dir/flags.make
src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o: ../src/socket/sessionhandler.cpp
src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o: src/CMakeFiles/basic_socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o -MF CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o.d -o CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o -c /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/sessionhandler.cpp

src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.i"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/sessionhandler.cpp > CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.i

src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.s"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/sessionhandler.cpp -o CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.s

src/CMakeFiles/basic_socket.dir/socket/client.cpp.o: src/CMakeFiles/basic_socket.dir/flags.make
src/CMakeFiles/basic_socket.dir/socket/client.cpp.o: ../src/socket/client.cpp
src/CMakeFiles/basic_socket.dir/socket/client.cpp.o: src/CMakeFiles/basic_socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/basic_socket.dir/socket/client.cpp.o"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/basic_socket.dir/socket/client.cpp.o -MF CMakeFiles/basic_socket.dir/socket/client.cpp.o.d -o CMakeFiles/basic_socket.dir/socket/client.cpp.o -c /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/client.cpp

src/CMakeFiles/basic_socket.dir/socket/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic_socket.dir/socket/client.cpp.i"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/client.cpp > CMakeFiles/basic_socket.dir/socket/client.cpp.i

src/CMakeFiles/basic_socket.dir/socket/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic_socket.dir/socket/client.cpp.s"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/client.cpp -o CMakeFiles/basic_socket.dir/socket/client.cpp.s

src/CMakeFiles/basic_socket.dir/socket/server.cpp.o: src/CMakeFiles/basic_socket.dir/flags.make
src/CMakeFiles/basic_socket.dir/socket/server.cpp.o: ../src/socket/server.cpp
src/CMakeFiles/basic_socket.dir/socket/server.cpp.o: src/CMakeFiles/basic_socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/basic_socket.dir/socket/server.cpp.o"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/basic_socket.dir/socket/server.cpp.o -MF CMakeFiles/basic_socket.dir/socket/server.cpp.o.d -o CMakeFiles/basic_socket.dir/socket/server.cpp.o -c /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/server.cpp

src/CMakeFiles/basic_socket.dir/socket/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic_socket.dir/socket/server.cpp.i"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/server.cpp > CMakeFiles/basic_socket.dir/socket/server.cpp.i

src/CMakeFiles/basic_socket.dir/socket/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic_socket.dir/socket/server.cpp.s"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src/socket/server.cpp -o CMakeFiles/basic_socket.dir/socket/server.cpp.s

# Object files for target basic_socket
basic_socket_OBJECTS = \
"CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o" \
"CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o" \
"CMakeFiles/basic_socket.dir/socket/client.cpp.o" \
"CMakeFiles/basic_socket.dir/socket/server.cpp.o"

# External object files for target basic_socket
basic_socket_EXTERNAL_OBJECTS =

lib/libbasic_socket.a: src/CMakeFiles/basic_socket.dir/payload/basicbuilder.cpp.o
lib/libbasic_socket.a: src/CMakeFiles/basic_socket.dir/socket/sessionhandler.cpp.o
lib/libbasic_socket.a: src/CMakeFiles/basic_socket.dir/socket/client.cpp.o
lib/libbasic_socket.a: src/CMakeFiles/basic_socket.dir/socket/server.cpp.o
lib/libbasic_socket.a: src/CMakeFiles/basic_socket.dir/build.make
lib/libbasic_socket.a: src/CMakeFiles/basic_socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../lib/libbasic_socket.a"
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && $(CMAKE_COMMAND) -P CMakeFiles/basic_socket.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basic_socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/basic_socket.dir/build: lib/libbasic_socket.a
.PHONY : src/CMakeFiles/basic_socket.dir/build

src/CMakeFiles/basic_socket.dir/clean:
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src && $(CMAKE_COMMAND) -P CMakeFiles/basic_socket.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/basic_socket.dir/clean

src/CMakeFiles/basic_socket.dir/depend:
	cd /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/src /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src /mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/cpp-src/basic/build/src/CMakeFiles/basic_socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/basic_socket.dir/depend

