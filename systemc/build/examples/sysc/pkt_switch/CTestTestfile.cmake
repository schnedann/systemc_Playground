# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/pkt_switch
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/pkt_switch
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/pkt_switch/pkt_switch "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/pkt_switch/pkt_switch" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/pkt_switch" "-DTEST_INPUT=" "-DTEST_GOLDEN=" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/pkt_switch/pkt_switch PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/pkt_switch/CMakeLists.txt;56;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/pkt_switch/CMakeLists.txt;0;")
