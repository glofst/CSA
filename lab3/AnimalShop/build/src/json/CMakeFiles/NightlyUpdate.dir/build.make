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

# Utility rule file for NightlyUpdate.

# Include the progress variables for this target.
include src/json/CMakeFiles/NightlyUpdate.dir/progress.make

src/json/CMakeFiles/NightlyUpdate:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/json && /usr/bin/ctest -D NightlyUpdate

NightlyUpdate: src/json/CMakeFiles/NightlyUpdate
NightlyUpdate: src/json/CMakeFiles/NightlyUpdate.dir/build.make

.PHONY : NightlyUpdate

# Rule to build all files generated by this target.
src/json/CMakeFiles/NightlyUpdate.dir/build: NightlyUpdate

.PHONY : src/json/CMakeFiles/NightlyUpdate.dir/build

src/json/CMakeFiles/NightlyUpdate.dir/clean:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/json && $(CMAKE_COMMAND) -P CMakeFiles/NightlyUpdate.dir/cmake_clean.cmake
.PHONY : src/json/CMakeFiles/NightlyUpdate.dir/clean

src/json/CMakeFiles/NightlyUpdate.dir/depend:
	cd /home/batman/prj/mirea/ksp/lab3/AnimalShop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/batman/prj/mirea/ksp/lab3/AnimalShop /home/batman/prj/mirea/ksp/lab3/libs/json /home/batman/prj/mirea/ksp/lab3/AnimalShop/build /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/json /home/batman/prj/mirea/ksp/lab3/AnimalShop/build/src/json/CMakeFiles/NightlyUpdate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/json/CMakeFiles/NightlyUpdate.dir/depend

