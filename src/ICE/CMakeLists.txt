add_subdirectory(core)
add_subdirectory(application)
add_subdirectory(window)

set(PROJECT_NAME ICE)



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
)

target_link_libraries(ICE PRIVATE
    ICE_CORE
    ICE_APPLICATION
)

set_target_properties(ICE
	PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/ICE"
)
