# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/specialized_signals
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/specialized_signals
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/2.1/specialized_signals/specialized_signals "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/specialized_signals/specialized_signals" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/2.1/specialized_signals" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/specialized_signals/golden.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/2.1/specialized_signals/specialized_signals PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/specialized_signals/CMakeLists.txt;55;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/2.1/specialized_signals/CMakeLists.txt;0;")
