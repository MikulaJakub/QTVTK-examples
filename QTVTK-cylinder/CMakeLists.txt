cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_STANDARD 11)


find_package(VTK REQUIRED)

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

set(HEADERS
	mainwindow.h
)

set(SOURCES
	mainwindow.cpp
)

add_executable(test.out main.cpp ${SOURCES} ${HEADERS})

target_link_libraries(test.out
	${QT_LIBRARIES}
	${VTK_LIBRARIES}
)
