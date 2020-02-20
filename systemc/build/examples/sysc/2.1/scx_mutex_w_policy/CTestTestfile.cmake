# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/scx_mutex_w_policy
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/scx_mutex_w_policy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/2.1/scx_mutex_w_policy/scx_mutex_w_policy "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/scx_mutex_w_policy/scx_mutex_w_policy" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/scx_mutex_w_policy" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/scx_mutex_w_policy/golden.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/2.1/scx_mutex_w_policy/scx_mutex_w_policy PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/scx_mutex_w_policy/CMakeLists.txt;44;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/scx_mutex_w_policy/CMakeLists.txt;0;")
