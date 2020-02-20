# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_ttd
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_ttd
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/2.3/sc_ttd/sc_ttd "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_ttd/sc_ttd" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.3/sc_ttd" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_ttd/golden.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/2.3/sc_ttd/sc_ttd PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_ttd/CMakeLists.txt;45;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.3/sc_ttd/CMakeLists.txt;0;")
