# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/shipeng/Documents/Code/cs798a2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shipeng/Documents/Code/cs798a2

# Include any dependencies generated for this target.
include src/client/CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include src/client/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include src/client/CMakeFiles/client.dir/flags.make

src/client/CMakeFiles/client.dir/Client.cpp.o: src/client/CMakeFiles/client.dir/flags.make
src/client/CMakeFiles/client.dir/Client.cpp.o: src/client/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/client/CMakeFiles/client.dir/Client.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/Client.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/client/Client.cpp

src/client/CMakeFiles/client.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/Client.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/client/Client.cpp > CMakeFiles/client.dir/Client.cpp.i

src/client/CMakeFiles/client.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/Client.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/client/Client.cpp -o CMakeFiles/client.dir/Client.cpp.s

src/client/CMakeFiles/client.dir/Client.cpp.o.requires:

.PHONY : src/client/CMakeFiles/client.dir/Client.cpp.o.requires

src/client/CMakeFiles/client.dir/Client.cpp.o.provides: src/client/CMakeFiles/client.dir/Client.cpp.o.requires
	$(MAKE) -f src/client/CMakeFiles/client.dir/build.make src/client/CMakeFiles/client.dir/Client.cpp.o.provides.build
.PHONY : src/client/CMakeFiles/client.dir/Client.cpp.o.provides

src/client/CMakeFiles/client.dir/Client.cpp.o.provides.build: src/client/CMakeFiles/client.dir/Client.cpp.o


src/client/CMakeFiles/client.dir/RPCClient.cpp.o: src/client/CMakeFiles/client.dir/flags.make
src/client/CMakeFiles/client.dir/RPCClient.cpp.o: src/client/RPCClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/client/CMakeFiles/client.dir/RPCClient.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/RPCClient.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/client/RPCClient.cpp

src/client/CMakeFiles/client.dir/RPCClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/RPCClient.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/client/RPCClient.cpp > CMakeFiles/client.dir/RPCClient.cpp.i

src/client/CMakeFiles/client.dir/RPCClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/RPCClient.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/client/RPCClient.cpp -o CMakeFiles/client.dir/RPCClient.cpp.s

src/client/CMakeFiles/client.dir/RPCClient.cpp.o.requires:

.PHONY : src/client/CMakeFiles/client.dir/RPCClient.cpp.o.requires

src/client/CMakeFiles/client.dir/RPCClient.cpp.o.provides: src/client/CMakeFiles/client.dir/RPCClient.cpp.o.requires
	$(MAKE) -f src/client/CMakeFiles/client.dir/build.make src/client/CMakeFiles/client.dir/RPCClient.cpp.o.provides.build
.PHONY : src/client/CMakeFiles/client.dir/RPCClient.cpp.o.provides

src/client/CMakeFiles/client.dir/RPCClient.cpp.o.provides.build: src/client/CMakeFiles/client.dir/RPCClient.cpp.o


src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o: src/client/CMakeFiles/client.dir/flags.make
src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o: src/rpc/gen-cpp/NFS_constants.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_constants.cpp

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_constants.cpp > CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.i

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_constants.cpp -o CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.s

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires:

.PHONY : src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires
	$(MAKE) -f src/client/CMakeFiles/client.dir/build.make src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides.build
.PHONY : src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides.build: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o


src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o: src/client/CMakeFiles/client.dir/flags.make
src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o: src/rpc/gen-cpp/NFS_types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_types.cpp

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_types.cpp > CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.i

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_types.cpp -o CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.s

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires:

.PHONY : src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires
	$(MAKE) -f src/client/CMakeFiles/client.dir/build.make src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides.build
.PHONY : src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides.build: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o


src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o: src/client/CMakeFiles/client.dir/flags.make
src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o: src/rpc/gen-cpp/NFS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS.cpp

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS.cpp > CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.i

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS.cpp -o CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.s

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.requires:

.PHONY : src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.requires

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.provides: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.requires
	$(MAKE) -f src/client/CMakeFiles/client.dir/build.make src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.provides.build
.PHONY : src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.provides

src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.provides.build: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o


# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/Client.cpp.o" \
"CMakeFiles/client.dir/RPCClient.cpp.o" \
"CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o" \
"CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o" \
"CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

src/client/client: src/client/CMakeFiles/client.dir/Client.cpp.o
src/client/client: src/client/CMakeFiles/client.dir/RPCClient.cpp.o
src/client/client: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o
src/client/client: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o
src/client/client: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o
src/client/client: src/client/CMakeFiles/client.dir/build.make
src/client/client: src/client/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable client"
	cd /home/shipeng/Documents/Code/cs798a2/src/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/client/CMakeFiles/client.dir/build: src/client/client

.PHONY : src/client/CMakeFiles/client.dir/build

src/client/CMakeFiles/client.dir/requires: src/client/CMakeFiles/client.dir/Client.cpp.o.requires
src/client/CMakeFiles/client.dir/requires: src/client/CMakeFiles/client.dir/RPCClient.cpp.o.requires
src/client/CMakeFiles/client.dir/requires: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires
src/client/CMakeFiles/client.dir/requires: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires
src/client/CMakeFiles/client.dir/requires: src/client/CMakeFiles/client.dir/__/rpc/gen-cpp/NFS.cpp.o.requires

.PHONY : src/client/CMakeFiles/client.dir/requires

src/client/CMakeFiles/client.dir/clean:
	cd /home/shipeng/Documents/Code/cs798a2/src/client && $(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : src/client/CMakeFiles/client.dir/clean

src/client/CMakeFiles/client.dir/depend:
	cd /home/shipeng/Documents/Code/cs798a2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shipeng/Documents/Code/cs798a2 /home/shipeng/Documents/Code/cs798a2/src/client /home/shipeng/Documents/Code/cs798a2 /home/shipeng/Documents/Code/cs798a2/src/client /home/shipeng/Documents/Code/cs798a2/src/client/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/client/CMakeFiles/client.dir/depend

