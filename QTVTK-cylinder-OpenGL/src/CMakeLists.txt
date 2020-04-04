# HEADER FILES
set(HEADERS
	${HEADER_DIR}/mainwindow.h
)

# SOURCE FILES
set(SOURCES
	mainwindow.cpp
)

# GENERATE EXECUTABLE
add_executable(test.out main.cpp ${SOURCES} ${HEADERS})

# LINK WITH THE LIBRARIES
target_link_libraries(test.out
	${QT_LIBRARIES}
	${VTK_LIBRARIES}
)
