add_subdirectory(core)
add_subdirectory(application)

set(PROJECT_NAME ICE)

set(GLM_SOURCE_DIR “${CMAKE_CURRENT_SOURCE_DIR}/libs/GLM”)

set(EM_FLAGS "-s USE_SDL=2 -O3 -s WASM=1 MODULARIZE=1 -s ASSERTIONS=1 -pthread")
set(SDL_FLAGS "-lSDL2")

# if(EMSCRIPTEN)
# 	set(USE_FLAGS "${EM_FLAGS} ${SDL_FLAGS}")
# 	set(CMAKE_EXECUTABLE_SUFFIX ".html")
#   	message("Using emscripten!")
# else()
# 	set(USE_FLAGS "${SDL_FLAGS}")
#   	message("Not using emscripten!")
# endif()

add_executable(ICE ICE.cpp)
# Make sure YourLib is linked to each app
target_include_directories(ICE PUBLIC
	"${CMAKE_SOURCE_DIR}/include"
	"${GLM_SOURCE_DIR}"
)

target_link_libraries(ICE PRIVATE
	SDL2main SDL2-static
	glm
    ICE_CORE
    ICE_APPLICATION
)

set_target_properties(ICE
	PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/ICE"
)
