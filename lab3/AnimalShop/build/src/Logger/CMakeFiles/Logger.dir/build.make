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
include src/Logger/CMakeFiles/Logger.dir/depend.make

# Include the progress variables for this target.
include src/Logger/CMakeFiles/Logger.dir/progress.make

# Include the compile flags for this target's objects.
include src/Logger/CMakeFiles/Logger.dir/flags.make

src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o: src/Logger/CMakeFiles/Logger.dir/flags.make
src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o: /home/batman/prj/mirea/ksp/lab3/libs/Logger/Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/batman/prj/mirea/ksp/lab3/AnimalShop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Logger.dir/Logger.cpp.o -c /home/batman/prj/mirea/ksp/lab3/libs/Logger/Logger.cpp

src/Logger/CMakeFiles/Logger.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Logger.dir/Logger.cpp.i"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/batman/prj/mirea/ksp/lab3/libs/Logger/Logger.cpp > CMakeFiles/Logger.dir/Logger.cpp.i

src/Logger/CMakeFiles/Logger.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Logger.dir/Logger.cpp.s"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/batman/prj/mirea/ksp/lab3/libs/Logger/Logger.cpp -o CMakeFiles/Logger.dir/Logger.cpp.s

src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.requires:

.PHONY : src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.requires

src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.provides: src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.requires
	$(MAKE) -f src/Logger/CMakeFiles/Logger.dir/build.make src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.provides.build
.PHONY : src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.provides

src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.provides.build: src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o


# Object files for target Logger
Logger_OBJECTS = \
"CMakeFiles/Logger.dir/Logger.cpp.o"

# External object files for target Logger
Logger_EXTERNAL_OBJECTS =

src/Logger/libLogger.a: src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o
src/Logger/libLogger.a: src/Logger/CMakeFiles/Logger.dir/build.make
src/Logger/libLogger.a: src/Logger/CMakeFiles/Logger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/batman/prj/mirea/ksp/lab3/AnimalShop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libLogger.a"
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger && $(CMAKE_COMMAND) -P CMakeFiles/Logger.dir/cmake_clean_target.cmake
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Logger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Logger/CMakeFiles/Logger.dir/build: src/Logger/libLogger.a

.PHONY : src/Logger/CMakeFiles/Logger.dir/build

src/Logger/CMakeFiles/Logger.dir/requires: src/Logger/CMakeFiles/Logger.dir/Logger.cpp.o.requires

.PHONY : src/Logger/CMakeFiles/Logger.dir/requires

src/Logger/CMakeFiles/Logger.dir/clean:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger && $(CMAKE_COMMAND) -P CMakeFiles/Logger.dir/cmake_clean.cmake
.PHONY : src/Logger/CMakeFiles/Logger.dir/clean

src/Logger/CMakeFiles/Logger.dir/depend:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/batman/prj/mirea/ksp/lab3/AnimalShop /home/batman/prj/mirea/ksp/lab3/libs/Logger /home/batman/prj/mirea/ksp/lab3/AnimalShop/build /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/Logger/CMakeFiles/Logger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Logger/CMakeFiles/Logger.dir/depend
