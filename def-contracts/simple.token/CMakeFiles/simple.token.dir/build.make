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

# Utility rule file for simple.token.

# Include the progress variables for this target.
include contracts/simple.token/CMakeFiles/simple.token.dir/progress.make

contracts/simple.token/CMakeFiles/simple.token: contracts/simple.token/simple.token.wast.hpp
contracts/simple.token/CMakeFiles/simple.token: contracts/simple.token/simple.token.abi.hpp


contracts/simple.token/simple.token.wast.hpp: contracts/simple.token/simple.token.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating simple.token.wast.hpp"
	cd /home/daniel/apps/eos/build/contracts/simple.token && echo "const char* const simple_token_wast = R\"=====(" > /home/daniel/apps/eos/build/contracts/simple.token/simple.token.wast.hpp
	cd /home/daniel/apps/eos/build/contracts/simple.token && cat /home/daniel/apps/eos/build/contracts/simple.token/simple.token.wast >> /home/daniel/apps/eos/build/contracts/simple.token/simple.token.wast.hpp
	cd /home/daniel/apps/eos/build/contracts/simple.token && echo ")=====\";" >> /home/daniel/apps/eos/build/contracts/simple.token/simple.token.wast.hpp

contracts/simple.token/simple.token.abi.hpp: contracts/simple.token/simple.token.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating simple.token.abi.hpp"
	cd /home/daniel/apps/eos/build/contracts/simple.token && echo "const char* const simple_token_abi = R\"=====(" > /home/daniel/apps/eos/build/contracts/simple.token/simple.token.abi.hpp
	cd /home/daniel/apps/eos/build/contracts/simple.token && cat /home/daniel/apps/eos/build/contracts/simple.token/simple.token.abi >> /home/daniel/apps/eos/build/contracts/simple.token/simple.token.abi.hpp
	cd /home/daniel/apps/eos/build/contracts/simple.token && echo ")=====\";" >> /home/daniel/apps/eos/build/contracts/simple.token/simple.token.abi.hpp

contracts/simple.token/simple.token.wast: contracts/simple.token/simple.token.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WAST simple.token.wast"
	cd /home/daniel/apps/eos/build/contracts/simple.token && /home/daniel/apps/eos/build/externals/binaryen/bin/eosio-s2wasm -o /home/daniel/apps/eos/build/contracts/simple.token/simple.token.wast -s 8192 simple.token.s

contracts/simple.token/simple.token.s: contracts/simple.token/simple.token.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating textual assembly simple.token.s"
	cd /home/daniel/apps/eos/build/contracts/simple.token && /home/daniel/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o simple.token.s simple.token.bc

contracts/simple.token/simple.token.bc: contracts/simple.token/simple.token.cpp.bc
contracts/simple.token/simple.token.bc: contracts/libc++/libc++.bc
contracts/simple.token/simple.token.bc: contracts/musl/libc.bc
contracts/simple.token/simple.token.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking LLVM bitcode executable simple.token.bc"
	cd /home/daniel/apps/eos/build/contracts/simple.token && /home/daniel/opt/wasm/bin/llvm-link -only-needed -o simple.token.bc simple.token.cpp.bc /home/daniel/apps/eos/build/contracts/libc++/libc++.bc /home/daniel/apps/eos/build/contracts/musl/libc.bc /home/daniel/apps/eos/build/contracts/eosiolib/eosiolib.bc

contracts/simple.token/simple.token.cpp.bc: ../contracts/simple.token/simple.token.cpp
contracts/simple.token/simple.token.cpp.bc: ../contracts/simple.token/simple.token.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building LLVM bitcode simple.token.cpp.bc"
	cd /home/daniel/apps/eos/build/contracts/simple.token && /home/daniel/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/daniel/apps/eos/contracts/simple.token/simple.token.cpp -o simple.token.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/daniel/apps/eos/contracts -I /home/daniel/apps/eos/externals/magic_get/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include

simple.token: contracts/simple.token/CMakeFiles/simple.token
simple.token: contracts/simple.token/simple.token.wast.hpp
simple.token: contracts/simple.token/simple.token.abi.hpp
simple.token: contracts/simple.token/simple.token.wast
simple.token: contracts/simple.token/simple.token.s
simple.token: contracts/simple.token/simple.token.bc
simple.token: contracts/simple.token/simple.token.cpp.bc
simple.token: contracts/simple.token/CMakeFiles/simple.token.dir/build.make

.PHONY : simple.token

# Rule to build all files generated by this target.
contracts/simple.token/CMakeFiles/simple.token.dir/build: simple.token

.PHONY : contracts/simple.token/CMakeFiles/simple.token.dir/build

contracts/simple.token/CMakeFiles/simple.token.dir/clean:
	cd /home/daniel/apps/eos/build/contracts/simple.token && $(CMAKE_COMMAND) -P CMakeFiles/simple.token.dir/cmake_clean.cmake
.PHONY : contracts/simple.token/CMakeFiles/simple.token.dir/clean

contracts/simple.token/CMakeFiles/simple.token.dir/depend:
	cd /home/daniel/apps/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/apps/eos /home/daniel/apps/eos/contracts/simple.token /home/daniel/apps/eos/build /home/daniel/apps/eos/build/contracts/simple.token /home/daniel/apps/eos/build/contracts/simple.token/CMakeFiles/simple.token.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/simple.token/CMakeFiles/simple.token.dir/depend

