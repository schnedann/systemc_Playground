# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/reset_signal_is
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/reset_signal_is
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/2.1/reset_signal_is/reset_signal_is "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/reset_signal_is/reset_signal_is" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/reset_signal_is" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/reset_signal_is/golden.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/2.1/reset_signal_is/reset_signal_is PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/reset_signal_is/CMakeLists.txt;44;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/reset_signal_is/CMakeLists.txt;0;")
