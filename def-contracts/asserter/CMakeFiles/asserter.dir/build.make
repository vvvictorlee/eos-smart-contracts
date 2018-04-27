# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daniel/apps/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/apps/eos/build

# Utility rule file for asserter.

# Include the progress variables for this target.
include contracts/asserter/CMakeFiles/asserter.dir/progress.make

contracts/asserter/CMakeFiles/asserter: contracts/asserter/asserter.wast.hpp
contracts/asserter/CMakeFiles/asserter: contracts/asserter/asserter.abi.hpp


contracts/asserter/asserter.wast.hpp: contracts/asserter/asserter.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating asserter.wast.hpp"
	cd /home/daniel/apps/eos/build/contracts/asserter && echo "const char* const asserter_wast = R\"=====(" > /home/daniel/apps/eos/build/contracts/asserter/asserter.wast.hpp
	cd /home/daniel/apps/eos/build/contracts/asserter && cat /home/daniel/apps/eos/build/contracts/asserter/asserter.wast >> /home/daniel/apps/eos/build/contracts/asserter/asserter.wast.hpp
	cd /home/daniel/apps/eos/build/contracts/asserter && echo ")=====\";" >> /home/daniel/apps/eos/build/contracts/asserter/asserter.wast.hpp

contracts/asserter/asserter.abi.hpp: contracts/asserter/asserter.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating asserter.abi.hpp"
	cd /home/daniel/apps/eos/build/contracts/asserter && echo "const char* const asserter_abi = R\"=====(" > /home/daniel/apps/eos/build/contracts/asserter/asserter.abi.hpp
	cd /home/daniel/apps/eos/build/contracts/asserter && cat /home/daniel/apps/eos/build/contracts/asserter/asserter.abi >> /home/daniel/apps/eos/build/contracts/asserter/asserter.abi.hpp
	cd /home/daniel/apps/eos/build/contracts/asserter && echo ")=====\";" >> /home/daniel/apps/eos/build/contracts/asserter/asserter.abi.hpp

contracts/asserter/asserter.wast: contracts/asserter/asserter.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WAST asserter.wast"
	cd /home/daniel/apps/eos/build/contracts/asserter && /home/daniel/apps/eos/build/externals/binaryen/bin/eosio-s2wasm -o /home/daniel/apps/eos/build/contracts/asserter/asserter.wast -s 8192 asserter.s

contracts/asserter/asserter.s: contracts/asserter/asserter.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating textual assembly asserter.s"
	cd /home/daniel/apps/eos/build/contracts/asserter && /home/daniel/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o asserter.s asserter.bc

contracts/asserter/asserter.bc: contracts/asserter/asserter.cpp.bc
contracts/asserter/asserter.bc: contracts/musl/libc.bc
contracts/asserter/asserter.bc: contracts/libc++/libc++.bc
contracts/asserter/asserter.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking LLVM bitcode executable asserter.bc"
	cd /home/daniel/apps/eos/build/contracts/asserter && /home/daniel/opt/wasm/bin/llvm-link -only-needed -o asserter.bc asserter.cpp.bc /home/daniel/apps/eos/build/contracts/musl/libc.bc /home/daniel/apps/eos/build/contracts/libc++/libc++.bc /home/daniel/apps/eos/build/contracts/eosiolib/eosiolib.bc

contracts/asserter/asserter.cpp.bc: ../contracts/asserter/asserter.cpp
contracts/asserter/asserter.cpp.bc: ../contracts/asserter/asserter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building LLVM bitcode asserter.cpp.bc"
	cd /home/daniel/apps/eos/build/contracts/asserter && /home/daniel/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/daniel/apps/eos/contracts/asserter/asserter.cpp -o asserter.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/daniel/apps/eos/contracts -I /home/daniel/apps/eos/externals/magic_get/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include

asserter: contracts/asserter/CMakeFiles/asserter
asserter: contracts/asserter/asserter.wast.hpp
asserter: contracts/asserter/asserter.abi.hpp
asserter: contracts/asserter/asserter.wast
asserter: contracts/asserter/asserter.s
asserter: contracts/asserter/asserter.bc
asserter: contracts/asserter/asserter.cpp.bc
asserter: contracts/asserter/CMakeFiles/asserter.dir/build.make

.PHONY : asserter

# Rule to build all files generated by this target.
contracts/asserter/CMakeFiles/asserter.dir/build: asserter

.PHONY : contracts/asserter/CMakeFiles/asserter.dir/build

contracts/asserter/CMakeFiles/asserter.dir/clean:
	cd /home/daniel/apps/eos/build/contracts/asserter && $(CMAKE_COMMAND) -P CMakeFiles/asserter.dir/cmake_clean.cmake
.PHONY : contracts/asserter/CMakeFiles/asserter.dir/clean

contracts/asserter/CMakeFiles/asserter.dir/depend:
	cd /home/daniel/apps/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/apps/eos /home/daniel/apps/eos/contracts/asserter /home/daniel/apps/eos/build /home/daniel/apps/eos/build/contracts/asserter /home/daniel/apps/eos/build/contracts/asserter/CMakeFiles/asserter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/asserter/CMakeFiles/asserter.dir/depend

