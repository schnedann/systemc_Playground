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
include examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/depend.make

# Include the progress variables for this target.
include examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/progress.make

# Include the compile flags for this target's objects.
include examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/flags.make

examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/main.cpp.o: examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/flags.make
examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/main.cpp.o: ../examples/sysc/2.3/sc_rvd/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danny/ramdisk/systemc/systemc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/main.cpp.o"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc_rvd.dir/main.cpp.o -c /home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_rvd/main.cpp

examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc_rvd.dir/main.cpp.i"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_rvd/main.cpp > CMakeFiles/sc_rvd.dir/main.cpp.i

examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc_rvd.dir/main.cpp.s"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_rvd/main.cpp -o CMakeFiles/sc_rvd.dir/main.cpp.s

# Object files for target sc_rvd
sc_rvd_OBJECTS = \
"CMakeFiles/sc_rvd.dir/main.cpp.o"

# External object files for target sc_rvd
sc_rvd_EXTERNAL_OBJECTS =

examples/sysc/2.3/sc_rvd/sc_rvd: examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/main.cpp.o
examples/sysc/2.3/sc_rvd/sc_rvd: examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/build.make
examples/sysc/2.3/sc_rvd/sc_rvd: src/libsystemc.so.2.3.3
examples/sysc/2.3/sc_rvd/sc_rvd: examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danny/ramdisk/systemc/systemc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sc_rvd"
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sc_rvd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/build: examples/sysc/2.3/sc_rvd/sc_rvd

.PHONY : examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/build

examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/clean:
	cd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd && $(CMAKE_COMMAND) -P CMakeFiles/sc_rvd.dir/cmake_clean.cmake
.PHONY : examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/clean

examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/depend:
	cd /home/danny/ramdisk/systemc/systemc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danny/ramdisk/systemc/systemc /home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_rvd /home/danny/ramdisk/systemc/systemc/build /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/sysc/2.3/sc_rvd/CMakeFiles/sc_rvd.dir/depend

