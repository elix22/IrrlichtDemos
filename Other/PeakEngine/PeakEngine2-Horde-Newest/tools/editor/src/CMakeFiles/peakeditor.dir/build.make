# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Dev/libs/game/PeakEngine/tools/editor/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Dev/libs/game/PeakEngine/tools/editor/src

# Include any dependencies generated for this target.
include CMakeFiles/peakeditor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/peakeditor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/peakeditor.dir/flags.make

CMakeFiles/peakeditor.dir/main.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/main.o: main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/main.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/main.cpp

CMakeFiles/peakeditor.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/main.cpp > CMakeFiles/peakeditor.dir/main.i

CMakeFiles/peakeditor.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/main.cpp -o CMakeFiles/peakeditor.dir/main.s

CMakeFiles/peakeditor.dir/main.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/main.o.requires

CMakeFiles/peakeditor.dir/main.o.provides: CMakeFiles/peakeditor.dir/main.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/main.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/main.o.provides

CMakeFiles/peakeditor.dir/main.o.provides.build: CMakeFiles/peakeditor.dir/main.o
.PHONY : CMakeFiles/peakeditor.dir/main.o.provides.build

CMakeFiles/peakeditor.dir/MainWindow.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/MainWindow.o: MainWindow.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/MainWindow.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/MainWindow.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/MainWindow.cpp

CMakeFiles/peakeditor.dir/MainWindow.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/MainWindow.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/MainWindow.cpp > CMakeFiles/peakeditor.dir/MainWindow.i

CMakeFiles/peakeditor.dir/MainWindow.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/MainWindow.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/MainWindow.cpp -o CMakeFiles/peakeditor.dir/MainWindow.s

CMakeFiles/peakeditor.dir/MainWindow.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/MainWindow.o.requires

CMakeFiles/peakeditor.dir/MainWindow.o.provides: CMakeFiles/peakeditor.dir/MainWindow.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/MainWindow.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/MainWindow.o.provides

CMakeFiles/peakeditor.dir/MainWindow.o.provides.build: CMakeFiles/peakeditor.dir/MainWindow.o
.PHONY : CMakeFiles/peakeditor.dir/MainWindow.o.provides.build

CMakeFiles/peakeditor.dir/Horde3DWidget.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/Horde3DWidget.o: Horde3DWidget.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/Horde3DWidget.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/Horde3DWidget.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/Horde3DWidget.cpp

CMakeFiles/peakeditor.dir/Horde3DWidget.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/Horde3DWidget.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/Horde3DWidget.cpp > CMakeFiles/peakeditor.dir/Horde3DWidget.i

CMakeFiles/peakeditor.dir/Horde3DWidget.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/Horde3DWidget.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/Horde3DWidget.cpp -o CMakeFiles/peakeditor.dir/Horde3DWidget.s

CMakeFiles/peakeditor.dir/Horde3DWidget.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/Horde3DWidget.o.requires

CMakeFiles/peakeditor.dir/Horde3DWidget.o.provides: CMakeFiles/peakeditor.dir/Horde3DWidget.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/Horde3DWidget.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/Horde3DWidget.o.provides

CMakeFiles/peakeditor.dir/Horde3DWidget.o.provides.build: CMakeFiles/peakeditor.dir/Horde3DWidget.o
.PHONY : CMakeFiles/peakeditor.dir/Horde3DWidget.o.provides.build

CMakeFiles/peakeditor.dir/MaterialEditor.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/MaterialEditor.o: MaterialEditor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/MaterialEditor.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/MaterialEditor.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/MaterialEditor.cpp

CMakeFiles/peakeditor.dir/MaterialEditor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/MaterialEditor.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/MaterialEditor.cpp > CMakeFiles/peakeditor.dir/MaterialEditor.i

CMakeFiles/peakeditor.dir/MaterialEditor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/MaterialEditor.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/MaterialEditor.cpp -o CMakeFiles/peakeditor.dir/MaterialEditor.s

CMakeFiles/peakeditor.dir/MaterialEditor.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/MaterialEditor.o.requires

CMakeFiles/peakeditor.dir/MaterialEditor.o.provides: CMakeFiles/peakeditor.dir/MaterialEditor.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/MaterialEditor.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/MaterialEditor.o.provides

CMakeFiles/peakeditor.dir/MaterialEditor.o.provides.build: CMakeFiles/peakeditor.dir/MaterialEditor.o
.PHONY : CMakeFiles/peakeditor.dir/MaterialEditor.o.provides.build

CMakeFiles/peakeditor.dir/LevelEditor.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/LevelEditor.o: LevelEditor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/LevelEditor.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/LevelEditor.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/LevelEditor.cpp

CMakeFiles/peakeditor.dir/LevelEditor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/LevelEditor.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/LevelEditor.cpp > CMakeFiles/peakeditor.dir/LevelEditor.i

CMakeFiles/peakeditor.dir/LevelEditor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/LevelEditor.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/LevelEditor.cpp -o CMakeFiles/peakeditor.dir/LevelEditor.s

CMakeFiles/peakeditor.dir/LevelEditor.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/LevelEditor.o.requires

CMakeFiles/peakeditor.dir/LevelEditor.o.provides: CMakeFiles/peakeditor.dir/LevelEditor.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/LevelEditor.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/LevelEditor.o.provides

CMakeFiles/peakeditor.dir/LevelEditor.o.provides.build: CMakeFiles/peakeditor.dir/LevelEditor.o
.PHONY : CMakeFiles/peakeditor.dir/LevelEditor.o.provides.build

CMakeFiles/peakeditor.dir/LevelData.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/LevelData.o: LevelData.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/LevelData.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/LevelData.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/LevelData.cpp

CMakeFiles/peakeditor.dir/LevelData.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/LevelData.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/LevelData.cpp > CMakeFiles/peakeditor.dir/LevelData.i

CMakeFiles/peakeditor.dir/LevelData.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/LevelData.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/LevelData.cpp -o CMakeFiles/peakeditor.dir/LevelData.s

CMakeFiles/peakeditor.dir/LevelData.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/LevelData.o.requires

CMakeFiles/peakeditor.dir/LevelData.o.provides: CMakeFiles/peakeditor.dir/LevelData.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/LevelData.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/LevelData.o.provides

CMakeFiles/peakeditor.dir/LevelData.o.provides.build: CMakeFiles/peakeditor.dir/LevelData.o
.PHONY : CMakeFiles/peakeditor.dir/LevelData.o.provides.build

CMakeFiles/peakeditor.dir/InputReceiver.o: CMakeFiles/peakeditor.dir/flags.make
CMakeFiles/peakeditor.dir/InputReceiver.o: InputReceiver.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/peakeditor.dir/InputReceiver.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/peakeditor.dir/InputReceiver.o -c /home/Dev/libs/game/PeakEngine/tools/editor/src/InputReceiver.cpp

CMakeFiles/peakeditor.dir/InputReceiver.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peakeditor.dir/InputReceiver.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/Dev/libs/game/PeakEngine/tools/editor/src/InputReceiver.cpp > CMakeFiles/peakeditor.dir/InputReceiver.i

CMakeFiles/peakeditor.dir/InputReceiver.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peakeditor.dir/InputReceiver.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/Dev/libs/game/PeakEngine/tools/editor/src/InputReceiver.cpp -o CMakeFiles/peakeditor.dir/InputReceiver.s

CMakeFiles/peakeditor.dir/InputReceiver.o.requires:
.PHONY : CMakeFiles/peakeditor.dir/InputReceiver.o.requires

CMakeFiles/peakeditor.dir/InputReceiver.o.provides: CMakeFiles/peakeditor.dir/InputReceiver.o.requires
	$(MAKE) -f CMakeFiles/peakeditor.dir/build.make CMakeFiles/peakeditor.dir/InputReceiver.o.provides.build
.PHONY : CMakeFiles/peakeditor.dir/InputReceiver.o.provides

CMakeFiles/peakeditor.dir/InputReceiver.o.provides.build: CMakeFiles/peakeditor.dir/InputReceiver.o
.PHONY : CMakeFiles/peakeditor.dir/InputReceiver.o.provides.build

# Object files for target peakeditor
peakeditor_OBJECTS = \
"CMakeFiles/peakeditor.dir/main.o" \
"CMakeFiles/peakeditor.dir/MainWindow.o" \
"CMakeFiles/peakeditor.dir/Horde3DWidget.o" \
"CMakeFiles/peakeditor.dir/MaterialEditor.o" \
"CMakeFiles/peakeditor.dir/LevelEditor.o" \
"CMakeFiles/peakeditor.dir/LevelData.o" \
"CMakeFiles/peakeditor.dir/InputReceiver.o"

# External object files for target peakeditor
peakeditor_EXTERNAL_OBJECTS =

/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/main.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/MainWindow.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/Horde3DWidget.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/MaterialEditor.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/LevelEditor.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/LevelData.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/InputReceiver.o
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/build.make
/home/Dev/libs/game/PeakEngine/peakeditor: CMakeFiles/peakeditor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/Dev/libs/game/PeakEngine/peakeditor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/peakeditor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/peakeditor.dir/build: /home/Dev/libs/game/PeakEngine/peakeditor
.PHONY : CMakeFiles/peakeditor.dir/build

CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/main.o.requires
CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/MainWindow.o.requires
CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/Horde3DWidget.o.requires
CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/MaterialEditor.o.requires
CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/LevelEditor.o.requires
CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/LevelData.o.requires
CMakeFiles/peakeditor.dir/requires: CMakeFiles/peakeditor.dir/InputReceiver.o.requires
.PHONY : CMakeFiles/peakeditor.dir/requires

CMakeFiles/peakeditor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/peakeditor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/peakeditor.dir/clean

CMakeFiles/peakeditor.dir/depend:
	cd /home/Dev/libs/game/PeakEngine/tools/editor/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Dev/libs/game/PeakEngine/tools/editor/src /home/Dev/libs/game/PeakEngine/tools/editor/src /home/Dev/libs/game/PeakEngine/tools/editor/src /home/Dev/libs/game/PeakEngine/tools/editor/src /home/Dev/libs/game/PeakEngine/tools/editor/src/CMakeFiles/peakeditor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/peakeditor.dir/depend

