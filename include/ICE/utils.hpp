#ifndef ICE_UTILS_HPP
#define ICE_UTILS_HPP

#include <stdio.h>
#include <iostream>
#include <vector>
#include <string>
#include <sstream>

#define ICE_STRINGIFY(x) #x
#define ICE_BIND_EVENT_FUNC(func) std::bind(&func, this, std::placeholders::_1)

#endif
