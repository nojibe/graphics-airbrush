# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build"

# Include any dependencies generated for this target.
include CMakeFiles/airbrush.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/airbrush.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/airbrush.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/airbrush.dir/flags.make

CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui_demo.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_demo.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_demo.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_demo.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.s

CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui_draw.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_draw.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_draw.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_draw.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.s

CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui_impl_sdl.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdl.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdl.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdl.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.s

CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui_impl_sdlrenderer.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdlrenderer.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdlrenderer.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdlrenderer.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.s

CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui_tables.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_tables.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_tables.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_tables.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.s

CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui_widgets.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_widgets.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_widgets.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_widgets.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.s

CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/ext/imgui/imgui.cpp
CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o -MF CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o.d -o CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui.cpp"

CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui.cpp" > CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.i

CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui.cpp" -o CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.s

CMakeFiles/airbrush.dir/src/main_imgui.cpp.o: CMakeFiles/airbrush.dir/flags.make
CMakeFiles/airbrush.dir/src/main_imgui.cpp.o: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall\ 2022/CS\ 451/graphics101-airbrush/src/main_imgui.cpp
CMakeFiles/airbrush.dir/src/main_imgui.cpp.o: CMakeFiles/airbrush.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/airbrush.dir/src/main_imgui.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/airbrush.dir/src/main_imgui.cpp.o -MF CMakeFiles/airbrush.dir/src/main_imgui.cpp.o.d -o CMakeFiles/airbrush.dir/src/main_imgui.cpp.o -c "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/main_imgui.cpp"

CMakeFiles/airbrush.dir/src/main_imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/airbrush.dir/src/main_imgui.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/main_imgui.cpp" > CMakeFiles/airbrush.dir/src/main_imgui.cpp.i

CMakeFiles/airbrush.dir/src/main_imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/airbrush.dir/src/main_imgui.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/main_imgui.cpp" -o CMakeFiles/airbrush.dir/src/main_imgui.cpp.s

# Object files for target airbrush
airbrush_OBJECTS = \
"CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o" \
"CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o" \
"CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o" \
"CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o" \
"CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o" \
"CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o" \
"CMakeFiles/airbrush.dir/src/main_imgui.cpp.o"

# External object files for target airbrush
airbrush_EXTERNAL_OBJECTS = \
"/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles/airbrushlib.dir/src/airbrush.cpp.o" \
"/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles/airbrushlib.dir/src/image.cpp.o"

airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui_demo.cpp.o
airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui_draw.cpp.o
airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdl.cpp.o
airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui_impl_sdlrenderer.cpp.o
airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui_tables.cpp.o
airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui_widgets.cpp.o
airbrush: CMakeFiles/airbrush.dir/ext/imgui/imgui.cpp.o
airbrush: CMakeFiles/airbrush.dir/src/main_imgui.cpp.o
airbrush: CMakeFiles/airbrushlib.dir/src/airbrush.cpp.o
airbrush: CMakeFiles/airbrushlib.dir/src/image.cpp.o
airbrush: CMakeFiles/airbrush.dir/build.make
airbrush: _deps/sdl2-build/libSDL2maind.a
airbrush: _deps/sdl2-build/libSDL2d.a
airbrush: CMakeFiles/airbrush.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable airbrush"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/airbrush.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/airbrush.dir/build: airbrush
.PHONY : CMakeFiles/airbrush.dir/build

CMakeFiles/airbrush.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/airbrush.dir/cmake_clean.cmake
.PHONY : CMakeFiles/airbrush.dir/clean

CMakeFiles/airbrush.dir/depend:
	cd "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush" "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush" "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build" "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build" "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/CMakeFiles/airbrush.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/airbrush.dir/depend

