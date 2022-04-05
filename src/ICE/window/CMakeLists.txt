add_subdirectory(backends)
set(ICE_MODULE_NAME ICE_WINDOW)

set(ICE_WINDOW_SOURCE_FILES
	# put all your .c/.cpp here.
    window.cpp
)

set(GLM_SOURCE_DIR “${CMAKE_CURRENT_SOURCE_DIR}/libs/GLM”)
set(SDL_FLAGS "-lSDL2")

add_library(${ICE_MODULE_NAME}
    ${ICE_WINDOW_SOURCE_FILES}
)

target_include_directories(${ICE_MODULE_NAME} PUBLIC
	"${CMAKE_SOURCE_DIR}/src"
	"${CMAKE_SOURCE_DIR}/include"
	"${GLM_SOURCE_DIR}"
)

target_link_libraries(${ICE_MODULE_NAME} PUBLIC
	SDL2main SDL2-static
	glm
    ICE_CORE
)

set_target_properties(${ICE_MODULE_NAME} PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
  	RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin"
)
