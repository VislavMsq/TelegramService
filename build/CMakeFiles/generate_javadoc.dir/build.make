# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vladislavmosuyk/td/example/java

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vladislavmosuyk/td/example/java/build

# Utility rule file for generate_javadoc.

# Include any custom commands dependencies for this target.
include CMakeFiles/generate_javadoc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/generate_javadoc.dir/progress.make

CMakeFiles/generate_javadoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/vladislavmosuyk/td/example/java/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Javadoc documentation"
	cd /Users/vladislavmosuyk/td/example/java && /Users/vladislavmosuyk/Library/Java/JavaVirtualMachines/openjdk-21.0.2/Contents/Home/bin/javadoc -encoding UTF-8 -charset UTF-8 -d /Users/vladislavmosuyk/td/example/java/bin/../docs org.drinkless.tdlib

generate_javadoc: CMakeFiles/generate_javadoc
generate_javadoc: CMakeFiles/generate_javadoc.dir/build.make
.PHONY : generate_javadoc

# Rule to build all files generated by this target.
CMakeFiles/generate_javadoc.dir/build: generate_javadoc
.PHONY : CMakeFiles/generate_javadoc.dir/build

CMakeFiles/generate_javadoc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/generate_javadoc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/generate_javadoc.dir/clean

CMakeFiles/generate_javadoc.dir/depend:
	cd /Users/vladislavmosuyk/td/example/java/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vladislavmosuyk/td/example/java /Users/vladislavmosuyk/td/example/java /Users/vladislavmosuyk/td/example/java/build /Users/vladislavmosuyk/td/example/java/build /Users/vladislavmosuyk/td/example/java/build/CMakeFiles/generate_javadoc.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/generate_javadoc.dir/depend

