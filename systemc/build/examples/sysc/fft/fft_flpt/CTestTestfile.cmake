# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_flpt
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/fft/fft_flpt
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/fft/fft_flpt/fft_flpt "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/fft/fft_flpt/fft_flpt" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/fft/fft_flpt" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_flpt/golden.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/fft/fft_flpt/fft_flpt PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_flpt/CMakeLists.txt;75;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_flpt/CMakeLists.txt;0;")
