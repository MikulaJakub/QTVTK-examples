# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL

# Include any dependencies generated for this target.
include CMakeFiles/test.out.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.out.dir/flags.make

CMakeFiles/test.out.dir/main.cpp.o: CMakeFiles/test.out.dir/flags.make
CMakeFiles/test.out.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.out.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.out.dir/main.cpp.o -c /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/main.cpp

CMakeFiles/test.out.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.out.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/main.cpp > CMakeFiles/test.out.dir/main.cpp.i

CMakeFiles/test.out.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.out.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/main.cpp -o CMakeFiles/test.out.dir/main.cpp.s

CMakeFiles/test.out.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/test.out.dir/main.cpp.o.requires

CMakeFiles/test.out.dir/main.cpp.o.provides: CMakeFiles/test.out.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/test.out.dir/main.cpp.o.provides

CMakeFiles/test.out.dir/main.cpp.o.provides.build: CMakeFiles/test.out.dir/main.cpp.o


CMakeFiles/test.out.dir/mainwindow.cpp.o: CMakeFiles/test.out.dir/flags.make
CMakeFiles/test.out.dir/mainwindow.cpp.o: mainwindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test.out.dir/mainwindow.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.out.dir/mainwindow.cpp.o -c /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/mainwindow.cpp

CMakeFiles/test.out.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.out.dir/mainwindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/mainwindow.cpp > CMakeFiles/test.out.dir/mainwindow.cpp.i

CMakeFiles/test.out.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.out.dir/mainwindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/mainwindow.cpp -o CMakeFiles/test.out.dir/mainwindow.cpp.s

CMakeFiles/test.out.dir/mainwindow.cpp.o.requires:

.PHONY : CMakeFiles/test.out.dir/mainwindow.cpp.o.requires

CMakeFiles/test.out.dir/mainwindow.cpp.o.provides: CMakeFiles/test.out.dir/mainwindow.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/mainwindow.cpp.o.provides.build
.PHONY : CMakeFiles/test.out.dir/mainwindow.cpp.o.provides

CMakeFiles/test.out.dir/mainwindow.cpp.o.provides.build: CMakeFiles/test.out.dir/mainwindow.cpp.o


CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o: CMakeFiles/test.out.dir/flags.make
CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o: test.out_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o -c /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/test.out_autogen/mocs_compilation.cpp

CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/test.out_autogen/mocs_compilation.cpp > CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.i

CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/test.out_autogen/mocs_compilation.cpp -o CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.s

CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.requires:

.PHONY : CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.requires

CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.provides: CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.provides

CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.provides.build: CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o


# Object files for target test.out
test_out_OBJECTS = \
"CMakeFiles/test.out.dir/main.cpp.o" \
"CMakeFiles/test.out.dir/mainwindow.cpp.o" \
"CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o"

# External object files for target test.out
test_out_EXTERNAL_OBJECTS =

test.out: CMakeFiles/test.out.dir/main.cpp.o
test.out: CMakeFiles/test.out.dir/mainwindow.cpp.o
test.out: CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o
test.out: CMakeFiles/test.out.dir/build.make
test.out: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.9.5
test.out: /usr/local/lib/libvtkIOInfovis-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingContextOpenGL2-8.1.so.1
test.out: /usr/local/lib/libvtkTestingRendering-8.1.so.1
test.out: /usr/local/lib/libvtkViewsContext2D-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersGeneric-8.1.so.1
test.out: /usr/local/lib/libvtkTestingGenericBridge-8.1.so.1
test.out: /usr/local/lib/libvtkDomainsChemistryOpenGL2-8.1.so.1
test.out: /usr/local/lib/libvtkIOAMR-8.1.so.1
test.out: /usr/local/lib/libvtkIOExodus-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingVolumeOpenGL2-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersFlowPaths-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersHyperTree-8.1.so.1
test.out: /usr/local/lib/libvtkImagingStencil-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersParallelImaging-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersPoints-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersProgrammable-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersSMP-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersSelection-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersVerdict-8.1.so.1
test.out: /usr/local/lib/libvtkIOParallel-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersTopology-8.1.so.1
test.out: /usr/local/lib/libvtkGUISupportQtOpenGL-8.1.so.1
test.out: /usr/local/lib/libvtkGUISupportQtSQL-8.1.so.1
test.out: /usr/local/lib/libvtkGeovisCore-8.1.so.1
test.out: /usr/local/lib/libvtkIOEnSight-8.1.so.1
test.out: /usr/local/lib/libvtkIOExportOpenGL2-8.1.so.1
test.out: /usr/local/lib/libvtkInteractionImage-8.1.so.1
test.out: /usr/local/lib/libvtkIOImport-8.1.so.1
test.out: /usr/local/lib/libvtkIOLSDyna-8.1.so.1
test.out: /usr/local/lib/libvtkIOMINC-8.1.so.1
test.out: /usr/local/lib/libvtkIOMovie-8.1.so.1
test.out: /usr/local/lib/libvtkIOPLY-8.1.so.1
test.out: /usr/local/lib/libvtkIOParallelXML-8.1.so.1
test.out: /usr/local/lib/libvtkTestingIOSQL-8.1.so.1
test.out: /usr/local/lib/libvtkIOTecplotTable-8.1.so.1
test.out: /usr/local/lib/libvtkIOVideo-8.1.so.1
test.out: /usr/local/lib/libvtkImagingStatistics-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingImage-8.1.so.1
test.out: /usr/local/lib/libvtkImagingMorphological-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingLOD-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingParallel-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingQt-8.1.so.1
test.out: /usr/local/lib/libvtkViewsQt-8.1.so.1
test.out: /usr/local/lib/libvtklibxml2-8.1.so.1
test.out: /usr/local/lib/libvtkDomainsChemistry-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersAMR-8.1.so.1
test.out: /usr/local/lib/libvtkImagingMath-8.1.so.1
test.out: /usr/local/lib/libvtkverdict-8.1.so.1
test.out: /usr/local/lib/libvtkIOGeometry-8.1.so.1
test.out: /usr/local/lib/libvtkexoIIc-8.1.so.1
test.out: /usr/local/lib/libvtkIONetCDF-8.1.so.1
test.out: /usr/local/lib/libvtknetcdfcpp-8.1.so.1
test.out: /usr/local/lib/libvtkjsoncpp-8.1.so.1
test.out: /usr/local/lib/libvtkIOSQL-8.1.so.1
test.out: /usr/local/lib/libvtksqlite-8.1.so.1
test.out: /opt/Qt5.9.0/5.9/gcc_64/lib/libQt5Sql.so.5.9.0
test.out: /usr/local/lib/libvtkproj4-8.1.so.1
test.out: /usr/local/lib/libvtkIOExport-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingGL2PSOpenGL2-8.1.so.1
test.out: /usr/local/lib/libvtkgl2ps-8.1.so.1
test.out: /usr/local/lib/libvtklibharu-8.1.so.1
test.out: /usr/local/lib/libvtkNetCDF-8.1.so.1
test.out: /usr/local/lib/libvtkhdf5_hl-8.1.so.1
test.out: /usr/local/lib/libvtkhdf5-8.1.so.1
test.out: /usr/local/lib/libvtkoggtheora-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersParallel-8.1.so.1
test.out: /usr/local/lib/libvtkParallelCore-8.1.so.1
test.out: /usr/local/lib/libvtkIOLegacy-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersTexture-8.1.so.1
test.out: /usr/local/lib/libvtkGUISupportQt-8.1.so.1
test.out: /opt/Qt5.9.0/5.9/gcc_64/lib/libQt5Widgets.so.5.9.0
test.out: /opt/Qt5.9.0/5.9/gcc_64/lib/libQt5Gui.so.5.9.0
test.out: /opt/Qt5.9.0/5.9/gcc_64/lib/libQt5Core.so.5.9.0
test.out: /usr/local/lib/libvtkRenderingOpenGL2-8.1.so.1
test.out: /usr/local/lib/libvtkglew-8.1.so.1
test.out: /usr/lib/x86_64-linux-gnu/libSM.so
test.out: /usr/lib/x86_64-linux-gnu/libICE.so
test.out: /usr/lib/x86_64-linux-gnu/libX11.so
test.out: /usr/lib/x86_64-linux-gnu/libXext.so
test.out: /usr/lib/x86_64-linux-gnu/libXt.so
test.out: /usr/local/lib/libvtkViewsInfovis-8.1.so.1
test.out: /usr/local/lib/libvtkChartsCore-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingContext2D-8.1.so.1
test.out: /usr/local/lib/libvtkViewsCore-8.1.so.1
test.out: /usr/local/lib/libvtkInteractionWidgets-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersHybrid-8.1.so.1
test.out: /usr/local/lib/libvtkInteractionStyle-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingAnnotation-8.1.so.1
test.out: /usr/local/lib/libvtkImagingColor-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingVolume-8.1.so.1
test.out: /usr/local/lib/libvtkIOXML-8.1.so.1
test.out: /usr/local/lib/libvtkIOXMLParser-8.1.so.1
test.out: /usr/local/lib/libvtkIOCore-8.1.so.1
test.out: /usr/local/lib/libvtklz4-8.1.so.1
test.out: /usr/local/lib/libvtkexpat-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersImaging-8.1.so.1
test.out: /usr/local/lib/libvtkImagingGeneral-8.1.so.1
test.out: /usr/local/lib/libvtkImagingSources-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingLabel-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingFreeType-8.1.so.1
test.out: /usr/local/lib/libvtkRenderingCore-8.1.so.1
test.out: /usr/local/lib/libvtkCommonColor-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersGeometry-8.1.so.1
test.out: /usr/local/lib/libvtkfreetype-8.1.so.1
test.out: /usr/local/lib/libvtkInfovisLayout-8.1.so.1
test.out: /usr/local/lib/libvtkInfovisCore-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersExtraction-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersStatistics-8.1.so.1
test.out: /usr/local/lib/libvtkImagingFourier-8.1.so.1
test.out: /usr/local/lib/libvtkalglib-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersModeling-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersSources-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersGeneral-8.1.so.1
test.out: /usr/local/lib/libvtkCommonComputationalGeometry-8.1.so.1
test.out: /usr/local/lib/libvtkFiltersCore-8.1.so.1
test.out: /usr/local/lib/libvtkImagingHybrid-8.1.so.1
test.out: /usr/local/lib/libvtkImagingCore-8.1.so.1
test.out: /usr/local/lib/libvtkIOImage-8.1.so.1
test.out: /usr/local/lib/libvtkCommonExecutionModel-8.1.so.1
test.out: /usr/local/lib/libvtkCommonDataModel-8.1.so.1
test.out: /usr/local/lib/libvtkCommonMisc-8.1.so.1
test.out: /usr/local/lib/libvtkCommonSystem-8.1.so.1
test.out: /usr/local/lib/libvtksys-8.1.so.1
test.out: /usr/local/lib/libvtkCommonTransforms-8.1.so.1
test.out: /usr/local/lib/libvtkCommonMath-8.1.so.1
test.out: /usr/local/lib/libvtkCommonCore-8.1.so.1
test.out: /usr/local/lib/libvtkDICOMParser-8.1.so.1
test.out: /usr/local/lib/libvtkmetaio-8.1.so.1
test.out: /usr/local/lib/libvtkpng-8.1.so.1
test.out: /usr/local/lib/libvtktiff-8.1.so.1
test.out: /usr/local/lib/libvtkzlib-8.1.so.1
test.out: /usr/local/lib/libvtkjpeg-8.1.so.1
test.out: /usr/lib/x86_64-linux-gnu/libm.so
test.out: CMakeFiles/test.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.out.dir/build: test.out

.PHONY : CMakeFiles/test.out.dir/build

CMakeFiles/test.out.dir/requires: CMakeFiles/test.out.dir/main.cpp.o.requires
CMakeFiles/test.out.dir/requires: CMakeFiles/test.out.dir/mainwindow.cpp.o.requires
CMakeFiles/test.out.dir/requires: CMakeFiles/test.out.dir/test.out_autogen/mocs_compilation.cpp.o.requires

.PHONY : CMakeFiles/test.out.dir/requires

CMakeFiles/test.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.out.dir/clean

CMakeFiles/test.out.dir/depend:
	cd /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL /home/jakub/Work/testing/QTVTK/QTVTK-cylinder-OpenGL/CMakeFiles/test.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.out.dir/depend

