# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/tlm/lt_dmi
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/tlm/lt_dmi
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/tlm/lt_dmi/lt_dmi "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/tlm/lt_dmi/lt_dmi" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/tlm/lt_dmi" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/tlm/lt_dmi/results/expected.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/tlm/lt_dmi/lt_dmi PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/tlm/lt_dmi/CMakeLists.txt;61;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/tlm/lt_dmi/CMakeLists.txt;0;")
