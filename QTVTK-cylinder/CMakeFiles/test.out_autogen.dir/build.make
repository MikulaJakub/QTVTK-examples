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
CMAKE_SOURCE_DIR = /home/jakub/Work/testing/QTVTK-change-color

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jakub/Work/testing/QTVTK-change-color

# Utility rule file for test.out_autogen.

# Include the progress variables for this target.
include CMakeFiles/test.out_autogen.dir/progress.make

CMakeFiles/test.out_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jakub/Work/testing/QTVTK-change-color/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC, UIC and RCC for target test.out"
	/usr/bin/cmake -E cmake_autogen /home/jakub/Work/testing/QTVTK-change-color/CMakeFiles/test.out_autogen.dir ""

test.out_autogen: CMakeFiles/test.out_autogen
test.out_autogen: CMakeFiles/test.out_autogen.dir/build.make

.PHONY : test.out_autogen

# Rule to build all files generated by this target.
CMakeFiles/test.out_autogen.dir/build: test.out_autogen

.PHONY : CMakeFiles/test.out_autogen.dir/build

CMakeFiles/test.out_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.out_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.out_autogen.dir/clean

CMakeFiles/test.out_autogen.dir/depend:
	cd /home/jakub/Work/testing/QTVTK-change-color && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jakub/Work/testing/QTVTK-change-color /home/jakub/Work/testing/QTVTK-change-color /home/jakub/Work/testing/QTVTK-change-color /home/jakub/Work/testing/QTVTK-change-color /home/jakub/Work/testing/QTVTK-change-color/CMakeFiles/test.out_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.out_autogen.dir/depend

