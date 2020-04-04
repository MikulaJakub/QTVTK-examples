# DEFINE HEADER FILES
set(HEADERS
	${HEADER_DIR}/mainwindow.h
)

# DEFINE SOURCES
set(SOURCES
	mainwindow.cpp
)

# GENERATE EXECUTABLE
add_executable(test.out main.cpp ${SOURCES} ${HEADERS})

# LINKE WITH LIBRARIES
target_link_libraries(test.out
	${QT_LIBRARIES}
	${VTK_LIBRARIES}
)
