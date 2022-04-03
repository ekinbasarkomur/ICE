set(PROJECT_NAME examples)

set(GLM_SOURCE_DIR “${CMAKE_CURRENT_SOURCE_DIR}/libs/GLM”)

set(EXAMPLE_SOURCE_FILES
	# put all your .c/.cpp here.
	event_test.cpp
)


set(EM_FLAGS "-s USE_SDL=2 -O3 -s WASM=1 MODULARIZE=1 -s ASSERTIONS=1 -pthread")
set(SDL_FLAGS "-lSDL2")

if(EMSCRIPTEN)
	set(USE_FLAGS "${EM_FLAGS} ${SDL_FLAGS}")
	set(CMAKE_EXECUTABLE_SUFFIX ".html")
  	message("Using emscripten!")
else()
	set(USE_FLAGS "${SDL_FLAGS}")
  	message("Not using emscripten!")
endif()


foreach( examplesourcefile ${EXAMPLE_SOURCE_FILES} )
    # I used a simple string replace, to cut off .cpp.
    string( REPLACE ".cpp" "" examplename ${examplesourcefile} )
    add_executable( ${examplename} ${examplesourcefile} )
    # Make sure YourLib is linked to each app
	target_include_directories(${examplename} PUBLIC
		"${CMAKE_SOURCE_DIR}/include"
		"${GLM_SOURCE_DIR}"
	)

	target_link_libraries(${examplename} PRIVATE
		SDL2main SDL2-static
		glm
        ICE_CORE
		)

	set_target_properties( ${examplename}
	  	PROPERTIES
	  	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
	  	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
	  	RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/examples"
	)
endforeach( examplesourcefile ${EXAMPLE_SOURCE_FILES} )
