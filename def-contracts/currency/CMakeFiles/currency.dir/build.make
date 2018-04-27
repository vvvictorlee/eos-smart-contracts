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

# Utility rule file for currency.

# Include the progress variables for this target.
include contracts/currency/CMakeFiles/currency.dir/progress.make

contracts/currency/CMakeFiles/currency: contracts/currency/currency.wast.hpp
contracts/currency/CMakeFiles/currency: contracts/currency/currency.abi.hpp


contracts/currency/currency.wast.hpp: contracts/currency/currency.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating currency.wast.hpp"
	cd /home/daniel/apps/eos/build/contracts/currency && echo "const char* const currency_wast = R\"=====(" > /home/daniel/apps/eos/build/contracts/currency/currency.wast.hpp
	cd /home/daniel/apps/eos/build/contracts/currency && cat /home/daniel/apps/eos/build/contracts/currency/currency.wast >> /home/daniel/apps/eos/build/contracts/currency/currency.wast.hpp
	cd /home/daniel/apps/eos/build/contracts/currency && echo ")=====\";" >> /home/daniel/apps/eos/build/contracts/currency/currency.wast.hpp

contracts/currency/currency.abi.hpp: contracts/currency/currency.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating currency.abi.hpp"
	cd /home/daniel/apps/eos/build/contracts/currency && echo "const char* const currency_abi = R\"=====(" > /home/daniel/apps/eos/build/contracts/currency/currency.abi.hpp
	cd /home/daniel/apps/eos/build/contracts/currency && cat /home/daniel/apps/eos/build/contracts/currency/currency.abi >> /home/daniel/apps/eos/build/contracts/currency/currency.abi.hpp
	cd /home/daniel/apps/eos/build/contracts/currency && echo ")=====\";" >> /home/daniel/apps/eos/build/contracts/currency/currency.abi.hpp

contracts/currency/currency.wast: contracts/currency/currency.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WAST currency.wast"
	cd /home/daniel/apps/eos/build/contracts/currency && /home/daniel/apps/eos/build/externals/binaryen/bin/eosio-s2wasm -o /home/daniel/apps/eos/build/contracts/currency/currency.wast -s 4096 currency.s

contracts/currency/currency.s: contracts/currency/currency.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating textual assembly currency.s"
	cd /home/daniel/apps/eos/build/contracts/currency && /home/daniel/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o currency.s currency.bc

contracts/currency/currency.bc: contracts/currency/currency.cpp.bc
contracts/currency/currency.bc: contracts/libc++/libc++.bc
contracts/currency/currency.bc: contracts/musl/libc.bc
contracts/currency/currency.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking LLVM bitcode executable currency.bc"
	cd /home/daniel/apps/eos/build/contracts/currency && /home/daniel/opt/wasm/bin/llvm-link -only-needed -o currency.bc currency.cpp.bc /home/daniel/apps/eos/build/contracts/libc++/libc++.bc /home/daniel/apps/eos/build/contracts/musl/libc.bc /home/daniel/apps/eos/build/contracts/eosiolib/eosiolib.bc

contracts/currency/currency.cpp.bc: ../contracts/currency/currency.cpp
contracts/currency/currency.cpp.bc: ../contracts/currency/currency.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building LLVM bitcode currency.cpp.bc"
	cd /home/daniel/apps/eos/build/contracts/currency && /home/daniel/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/daniel/apps/eos/contracts/currency/currency.cpp -o currency.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/daniel/apps/eos/contracts -I /home/daniel/apps/eos/externals/magic_get/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include

currency: contracts/currency/CMakeFiles/currency
currency: contracts/currency/currency.wast.hpp
currency: contracts/currency/currency.abi.hpp
currency: contracts/currency/currency.wast
currency: contracts/currency/currency.s
currency: contracts/currency/currency.bc
currency: contracts/currency/currency.cpp.bc
currency: contracts/currency/CMakeFiles/currency.dir/build.make

.PHONY : currency

# Rule to build all files generated by this target.
contracts/currency/CMakeFiles/currency.dir/build: currency

.PHONY : contracts/currency/CMakeFiles/currency.dir/build

contracts/currency/CMakeFiles/currency.dir/clean:
	cd /home/daniel/apps/eos/build/contracts/currency && $(CMAKE_COMMAND) -P CMakeFiles/currency.dir/cmake_clean.cmake
.PHONY : contracts/currency/CMakeFiles/currency.dir/clean

contracts/currency/CMakeFiles/currency.dir/depend:
	cd /home/daniel/apps/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/apps/eos /home/daniel/apps/eos/contracts/currency /home/daniel/apps/eos/build /home/daniel/apps/eos/build/contracts/currency /home/daniel/apps/eos/build/contracts/currency/CMakeFiles/currency.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/currency/CMakeFiles/currency.dir/depend

