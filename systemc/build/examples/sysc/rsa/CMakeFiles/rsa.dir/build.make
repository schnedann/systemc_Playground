# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/danny/ramdisk/systemc/systemc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/danny/ramdisk/systemc/systemc/build

# Include any dependencies generated for this target.
include examples/sysc/rsa/CMakeFiles/rsa.dir/depend.make

# Include the progress variables for this target.
include examples/sysc/rsa/CMakeFiles/rsa.dir/progress.make

# Include the compile flags for this target's objects.
include examples/sysc/rsa/CMakeFiles/rsa.dir/flags.make

examples/sysc/rsa/CMakeFiles/rsa.dir/rsa.cpp.o: examples/sysc/rsa/CMakeFiles/rsa.dir/flags.make
examples/sysc/rsa/CMakeFiles/rsa.dir/rsa.cpp.o: ../examples/sysc/rsa/rsa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danny/ramdisk/systemc/systemc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/sysc/rsa/CMakeFiles/rsa.dir/rsa.cpp.o"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rsa.dir/rsa.cpp.o -c /home/danny/ramdisk/systemc/systemc/examples/sysc/rsa/rsa.cpp

examples/sysc/rsa/CMakeFiles/rsa.dir/rsa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rsa.dir/rsa.cpp.i"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danny/ramdisk/systemc/systemc/examples/sysc/rsa/rsa.cpp > CMakeFiles/rsa.dir/rsa.cpp.i

examples/sysc/rsa/CMakeFiles/rsa.dir/rsa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rsa.dir/rsa.cpp.s"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danny/ramdisk/systemc/systemc/examples/sysc/rsa/rsa.cpp -o CMakeFiles/rsa.dir/rsa.cpp.s

# Object files for target rsa
rsa_OBJECTS = \
"CMakeFiles/rsa.dir/rsa.cpp.o"

# External object files for target rsa
rsa_EXTERNAL_OBJECTS =

examples/sysc/rsa/rsa: examples/sysc/rsa/CMakeFiles/rsa.dir/rsa.cpp.o
examples/sysc/rsa/rsa: examples/sysc/rsa/CMakeFiles/rsa.dir/build.make
examples/sysc/rsa/rsa: src/libsystemc.so.2.3.3
examples/sysc/rsa/rsa: examples/sysc/rsa/CMakeFiles/rsa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danny/ramdisk/systemc/systemc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rsa"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rsa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/sysc/rsa/CMakeFiles/rsa.dir/build: examples/sysc/rsa/rsa

.PHONY : examples/sysc/rsa/CMakeFiles/rsa.dir/build

examples/sysc/rsa/CMakeFiles/rsa.dir/clean:
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa && $(CMAKE_COMMAND) -P CMakeFiles/rsa.dir/cmake_clean.cmake
.PHONY : examples/sysc/rsa/CMakeFiles/rsa.dir/clean

examples/sysc/rsa/CMakeFiles/rsa.dir/depend:
	cd /home/danny/ramdisk/systemc/systemc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danny/ramdisk/systemc/systemc /home/danny/ramdisk/systemc/systemc/examples/sysc/rsa /home/danny/ramdisk/systemc/systemc/build /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa /home/danny/ramdisk/systemc/systemc/build/examples/sysc/rsa/CMakeFiles/rsa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/sysc/rsa/CMakeFiles/rsa.dir/depend

