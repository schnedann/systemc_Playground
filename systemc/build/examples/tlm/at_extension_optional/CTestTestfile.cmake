# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/tlm/at_extension_optional
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/tlm/at_extension_optional
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/tlm/at_extension_optional/at_extension_optional "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/tlm/at_extension_optional/at_extension_optional" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/tlm/at_extension_optional" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/tlm/at_extension_optional/results/expected.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/tlm/at_extension_optional/at_extension_optional PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/tlm/at_extension_optional/CMakeLists.txt;64;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/tlm/at_extension_optional/CMakeLists.txt;0;")
