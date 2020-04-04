cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_STANDARD 11)

# FIND VTK PACKAGES
find_package(VTK REQUIRED)

# FIND QT PACKAGES
find_package(Qt5Core REQUIRED)
find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Network REQUIRED)
set(QT_LIBRARIES Qt5::Widgets Qt5::Core Qt5::Network)

add_definitions(${QT_DEFINITIONS})
include_directories(${Qt5Core_INCLUDE_DIRS})
include_directories(${Qt5Gui_INCLUDE_DIRS})
include_directories(${Qt5Widgets_INCLUDE_DIRS})
include_directories(${Qt5Network_INCLUDE_DIRS})

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

# BIN DIRECTORY
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin)
set(HEADER_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)

# INCLUDE
include_directories(${HEADER_DIR}) 
include_directories(".")
subdirs(src)


