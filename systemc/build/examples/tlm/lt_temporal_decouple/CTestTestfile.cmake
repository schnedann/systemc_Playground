# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/tlm/lt_temporal_decouple
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/tlm/lt_temporal_decouple
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/tlm/lt_temporal_decouple/lt_temporal_decouple "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/tlm/lt_temporal_decouple/lt_temporal_decouple" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/tlm/lt_temporal_decouple" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/tlm/lt_temporal_decouple/results/expected.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/tlm/lt_temporal_decouple/lt_temporal_decouple PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/tlm/lt_temporal_decouple/CMakeLists.txt;65;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/tlm/lt_temporal_decouple/CMakeLists.txt;0;")
