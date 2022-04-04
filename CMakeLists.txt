cmake_minimum_required(VERSION 3.0.0)
project(ICE VERSION 0.1.0)

# set(CMAKE_CXX_FLAGS "-pthread -fPIC -Wall -fmessage-length=0")
# set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED on)

add_subdirectory(extern)
add_subdirectory(src)
