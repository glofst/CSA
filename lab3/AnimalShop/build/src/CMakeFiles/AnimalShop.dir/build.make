# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/batman/prj/mirea/ksp/lab3/AnimalShop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/batman/prj/mirea/ksp/lab3/AnimalShop/build

# Include any dependencies generated for this target.
include src/CMakeFiles/AnimalShop.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/AnimalShop.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/AnimalShop.dir/flags.make

src/CMakeFiles/AnimalShop.dir/main.cpp.o: src/CMakeFiles/AnimalShop.dir/flags.make
src/CMakeFiles/AnimalShop.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/batman/prj/mirea/ksp/lab3/AnimalShop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/AnimalShop.dir/main.cpp.o"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AnimalShop.dir/main.cpp.o -c /home/batman/prj/mirea/ksp/lab3/AnimalShop/src/main.cpp

src/CMakeFiles/AnimalShop.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnimalShop.dir/main.cpp.i"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/batman/prj/mirea/ksp/lab3/AnimalShop/src/main.cpp > CMakeFiles/AnimalShop.dir/main.cpp.i

src/CMakeFiles/AnimalShop.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnimalShop.dir/main.cpp.s"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/batman/prj/mirea/ksp/lab3/AnimalShop/src/main.cpp -o CMakeFiles/AnimalShop.dir/main.cpp.s

src/CMakeFiles/AnimalShop.dir/main.cpp.o.requires:

.PHONY : src/CMakeFiles/AnimalShop.dir/main.cpp.o.requires

src/CMakeFiles/AnimalShop.dir/main.cpp.o.provides: src/CMakeFiles/AnimalShop.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/AnimalShop.dir/build.make src/CMakeFiles/AnimalShop.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/AnimalShop.dir/main.cpp.o.provides

src/CMakeFiles/AnimalShop.dir/main.cpp.o.provides.build: src/CMakeFiles/AnimalShop.dir/main.cpp.o


# Object files for target AnimalShop
AnimalShop_OBJECTS = \
"CMakeFiles/AnimalShop.dir/main.cpp.o"

# External object files for target AnimalShop
AnimalShop_EXTERNAL_OBJECTS =

src/AnimalShop: src/CMakeFiles/AnimalShop.dir/main.cpp.o
src/AnimalShop: src/CMakeFiles/AnimalShop.dir/build.make
src/AnimalShop: src/HTTPServer/libHTTPServer.a
src/AnimalShop: src/Logger/libLogger.a
src/AnimalShop: src/HTTPHandler/libHTTPHandler.a
src/AnimalShop: src/SimpleSQL/libSimpleSQL.a
src/AnimalShop: src/database/libdatabase.a
src/AnimalShop: src/SimpleSQL/libSimpleSQL.a
src/AnimalShop: /usr/lib/x86_64-linux-gnu/libmysqlclient.so
src/AnimalShop: src/CMakeFiles/AnimalShop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/batman/prj/mirea/ksp/lab3/AnimalShop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AnimalShop"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AnimalShop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/AnimalShop.dir/build: src/AnimalShop

.PHONY : src/CMakeFiles/AnimalShop.dir/build

src/CMakeFiles/AnimalShop.dir/requires: src/CMakeFiles/AnimalShop.dir/main.cpp.o.requires

.PHONY : src/CMakeFiles/AnimalShop.dir/requires

src/CMakeFiles/AnimalShop.dir/clean:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src && $(CMAKE_COMMAND) -P CMakeFiles/AnimalShop.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/AnimalShop.dir/clean

src/CMakeFiles/AnimalShop.dir/depend:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/batman/prj/mirea/ksp/lab3/AnimalShop /home/batman/prj/mirea/ksp/lab3/AnimalShop/src /home/batman/prj/mirea/ksp/lab3/AnimalShop/build /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/CMakeFiles/AnimalShop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/AnimalShop.dir/depend
