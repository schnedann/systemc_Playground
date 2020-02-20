# CMake generated Testfile for 
# Source directory: /home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_fxpt
# Build directory: /home/danny/ramdisk/systemc/systemc/build/examples/sysc/fft/fft_fxpt
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(examples/sysc/fft/fft_fxpt/fft_fxpt "/usr/bin/cmake" "-DTEST_EXE=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/fft/fft_fxpt/fft_fxpt" "-DTEST_DIR=/home/danny/ramdisk/systemc/systemc/build/examples/sysc/fft/fft_fxpt" "-DTEST_INPUT=" "-DTEST_GOLDEN=/home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_fxpt/golden.log" "-DTEST_FILTER=" "-DDIFF_COMMAND=/usr/bin/diff" "-DDIFF_OPTIONS=-u" "-P" "/home/danny/ramdisk/systemc/systemc/cmake/run_test.cmake")
set_tests_properties(examples/sysc/fft/fft_fxpt/fft_fxpt PROPERTIES  FAIL_REGULAR_EXPRESSION "^[*][*][*]ERROR" _BACKTRACE_TRIPLES "/home/danny/ramdisk/systemc/systemc/examples/CMakeLists.txt;137;add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_fxpt/CMakeLists.txt;74;configure_and_add_test;/home/danny/ramdisk/systemc/systemc/examples/sysc/fft/fft_fxpt/CMakeLists.txt;0;")
