set(ICE_MODULE_NAME ICE_APPLICATION)

set(SPDLOG_SOURCE_DIR "${CMAKE_SOURCE_DIR}/src/libs/spdlog")

set(ICE_APPLICATION_SOURCE_FILES
	# put all your .c/.cpp here.
    application.cpp
)

add_library(${ICE_MODULE_NAME}
    ${ICE_APPLICATION_SOURCE_FILES}
)

target_include_directories(${ICE_MODULE_NAME} PUBLIC
	"${SPDLOG_SOURCE_DIR}/include"
	"${CMAKE_SOURCE_DIR}/src"
	"${CMAKE_SOURCE_DIR}/include"
)

target_link_libraries(${ICE_MODULE_NAME} PUBLIC
    ICE_CORE
)

set_target_properties(${ICE_MODULE_NAME} PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib"
  	RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin"
)
