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
include src/server/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/server.dir/flags.make

src/server/CMakeFiles/server.dir/Server.cpp.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/Server.cpp.o: src/server/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/server.dir/Server.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/Server.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/server/Server.cpp

src/server/CMakeFiles/server.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Server.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/server/Server.cpp > CMakeFiles/server.dir/Server.cpp.i

src/server/CMakeFiles/server.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Server.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/server/Server.cpp -o CMakeFiles/server.dir/Server.cpp.s

src/server/CMakeFiles/server.dir/Server.cpp.o.requires:

.PHONY : src/server/CMakeFiles/server.dir/Server.cpp.o.requires

src/server/CMakeFiles/server.dir/Server.cpp.o.provides: src/server/CMakeFiles/server.dir/Server.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/server.dir/build.make src/server/CMakeFiles/server.dir/Server.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/server.dir/Server.cpp.o.provides

src/server/CMakeFiles/server.dir/Server.cpp.o.provides.build: src/server/CMakeFiles/server.dir/Server.cpp.o


src/server/CMakeFiles/server.dir/RPCServer.cpp.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/RPCServer.cpp.o: src/server/RPCServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/server.dir/RPCServer.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/RPCServer.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/server/RPCServer.cpp

src/server/CMakeFiles/server.dir/RPCServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/RPCServer.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/server/RPCServer.cpp > CMakeFiles/server.dir/RPCServer.cpp.i

src/server/CMakeFiles/server.dir/RPCServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/RPCServer.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/server/RPCServer.cpp -o CMakeFiles/server.dir/RPCServer.cpp.s

src/server/CMakeFiles/server.dir/RPCServer.cpp.o.requires:

.PHONY : src/server/CMakeFiles/server.dir/RPCServer.cpp.o.requires

src/server/CMakeFiles/server.dir/RPCServer.cpp.o.provides: src/server/CMakeFiles/server.dir/RPCServer.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/server.dir/build.make src/server/CMakeFiles/server.dir/RPCServer.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/server.dir/RPCServer.cpp.o.provides

src/server/CMakeFiles/server.dir/RPCServer.cpp.o.provides.build: src/server/CMakeFiles/server.dir/RPCServer.cpp.o


src/server/CMakeFiles/server.dir/FuseInterface.cpp.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/FuseInterface.cpp.o: src/server/FuseInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/server.dir/FuseInterface.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/FuseInterface.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/server/FuseInterface.cpp

src/server/CMakeFiles/server.dir/FuseInterface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/FuseInterface.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/server/FuseInterface.cpp > CMakeFiles/server.dir/FuseInterface.cpp.i

src/server/CMakeFiles/server.dir/FuseInterface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/FuseInterface.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/server/FuseInterface.cpp -o CMakeFiles/server.dir/FuseInterface.cpp.s

src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.requires:

.PHONY : src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.requires

src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.provides: src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/server.dir/build.make src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.provides

src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.provides.build: src/server/CMakeFiles/server.dir/FuseInterface.cpp.o


src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o: src/rpc/gen-cpp/NFS_constants.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_constants.cpp

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_constants.cpp > CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.i

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_constants.cpp -o CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.s

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires:

.PHONY : src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/server.dir/build.make src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.provides.build: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o


src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o: src/rpc/gen-cpp/NFS_types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_types.cpp

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_types.cpp > CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.i

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS_types.cpp -o CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.s

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires:

.PHONY : src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/server.dir/build.make src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.provides.build: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o


src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o: src/rpc/gen-cpp/NFS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o -c /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS.cpp

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.i"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS.cpp > CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.i

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.s"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shipeng/Documents/Code/cs798a2/src/rpc/gen-cpp/NFS.cpp -o CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.s

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.requires:

.PHONY : src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.requires

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.provides: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/server.dir/build.make src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.provides

src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.provides.build: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/Server.cpp.o" \
"CMakeFiles/server.dir/RPCServer.cpp.o" \
"CMakeFiles/server.dir/FuseInterface.cpp.o" \
"CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o" \
"CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o" \
"CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

src/server/server: src/server/CMakeFiles/server.dir/Server.cpp.o
src/server/server: src/server/CMakeFiles/server.dir/RPCServer.cpp.o
src/server/server: src/server/CMakeFiles/server.dir/FuseInterface.cpp.o
src/server/server: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o
src/server/server: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o
src/server/server: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o
src/server/server: src/server/CMakeFiles/server.dir/build.make
src/server/server: src/server/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shipeng/Documents/Code/cs798a2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable server"
	cd /home/shipeng/Documents/Code/cs798a2/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/server.dir/build: src/server/server

.PHONY : src/server/CMakeFiles/server.dir/build

src/server/CMakeFiles/server.dir/requires: src/server/CMakeFiles/server.dir/Server.cpp.o.requires
src/server/CMakeFiles/server.dir/requires: src/server/CMakeFiles/server.dir/RPCServer.cpp.o.requires
src/server/CMakeFiles/server.dir/requires: src/server/CMakeFiles/server.dir/FuseInterface.cpp.o.requires
src/server/CMakeFiles/server.dir/requires: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_constants.cpp.o.requires
src/server/CMakeFiles/server.dir/requires: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS_types.cpp.o.requires
src/server/CMakeFiles/server.dir/requires: src/server/CMakeFiles/server.dir/__/rpc/gen-cpp/NFS.cpp.o.requires

.PHONY : src/server/CMakeFiles/server.dir/requires

src/server/CMakeFiles/server.dir/clean:
	cd /home/shipeng/Documents/Code/cs798a2/src/server && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/server.dir/clean

src/server/CMakeFiles/server.dir/depend:
	cd /home/shipeng/Documents/Code/cs798a2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shipeng/Documents/Code/cs798a2 /home/shipeng/Documents/Code/cs798a2/src/server /home/shipeng/Documents/Code/cs798a2 /home/shipeng/Documents/Code/cs798a2/src/server /home/shipeng/Documents/Code/cs798a2/src/server/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/server.dir/depend

