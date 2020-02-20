# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/risc_cpu
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/risc_cpu
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/risc_cpu/risc_cpu "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/risc_cpu/risc_cpu" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/risc_cpu" "-DTEST_INPUT=" "-DTEST_GOLDEN=" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/risc_cpu/risc_cpu PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/risc_cpu/CMakeLists.txt;86;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/risc_cpu/CMakeLists.txt;0;")
