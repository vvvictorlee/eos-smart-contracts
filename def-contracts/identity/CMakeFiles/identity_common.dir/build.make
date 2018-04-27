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

# Utility rule file for identity_common.

# Include the progress variables for this target.
include contracts/identity/CMakeFiles/identity_common.dir/progress.make

contracts/identity/CMakeFiles/identity_common: contracts/identity/identity_common.bc


contracts/identity/identity_common.bc: contracts/identity/common.cpp.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking LLVM bitcode library identity_common.bc"
	cd /home/daniel/apps/eos/build/contracts/identity && /home/daniel/opt/wasm/bin/llvm-link -o /home/daniel/apps/eos/build/contracts/identity/identity_common.bc common.cpp.bc

contracts/identity/common.cpp.bc: ../contracts/identity/common.cpp
contracts/identity/common.cpp.bc: ../contracts/identity/common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daniel/apps/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building LLVM bitcode common.cpp.bc"
	cd /home/daniel/apps/eos/build/contracts/identity && /home/daniel/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/daniel/apps/eos/contracts/identity/common.cpp -o common.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/daniel/apps/eos/contracts -I /home/daniel/apps/eos/externals/magic_get/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include -isystem /home/daniel/apps/eos/contracts/libc++/upstream/include -isystem /home/daniel/apps/eos/contracts/musl/upstream/include -isystem /home/daniel/opt/boost_1_66_0/include

identity_common: contracts/identity/CMakeFiles/identity_common
identity_common: contracts/identity/identity_common.bc
identity_common: contracts/identity/common.cpp.bc
identity_common: contracts/identity/CMakeFiles/identity_common.dir/build.make

.PHONY : identity_common

# Rule to build all files generated by this target.
contracts/identity/CMakeFiles/identity_common.dir/build: identity_common

.PHONY : contracts/identity/CMakeFiles/identity_common.dir/build

contracts/identity/CMakeFiles/identity_common.dir/clean:
	cd /home/daniel/apps/eos/build/contracts/identity && $(CMAKE_COMMAND) -P CMakeFiles/identity_common.dir/cmake_clean.cmake
.PHONY : contracts/identity/CMakeFiles/identity_common.dir/clean

contracts/identity/CMakeFiles/identity_common.dir/depend:
	cd /home/daniel/apps/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/apps/eos /home/daniel/apps/eos/contracts/identity /home/daniel/apps/eos/build /home/daniel/apps/eos/build/contracts/identity /home/daniel/apps/eos/build/contracts/identity/CMakeFiles/identity_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/identity/CMakeFiles/identity_common.dir/depend

