# DEFINE HEADER FILES
set(HEADERS
	${HEADER_DIR}/mainwindow.h
	${HEADER_DIR}/myHex.h
)

# DEFINE SOURCE FILES
set(SOURCES
	mainwindow.cpp
)

add_executable(test.out main.cpp ${SOURCES} ${HEADERS})

target_link_libraries(test.out
	${QT_LIBRARIES}
	${VTK_LIBRARIES}
)
