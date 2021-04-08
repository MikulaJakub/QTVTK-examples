cmake_minimum_required(VERSION 2.8)

PROJECT(arrow)

find_package(VTK REQUIRED)
include(${VTK_USE_FILE})

add_executable(arrow MACOSX_BUNDLE arrow.cpp)

if(VTK_LIBRARIES)
  target_link_libraries(arrow ${VTK_LIBRARIES})
else()
  target_link_libraries(arrow vtkHybrid vtkWidgets)
endif()
