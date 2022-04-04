#ifndef ICE_MEMORY_MODULE_HPP
#define ICE_MEMORY_MODULE_HPP

#include "ICE/config.hpp"
#include "ICE/utils.hpp"
#include <memory>

struct AllocationMetrics
{
    uint32_t total_allocated = 0;
    uint32_t total_freed = 0;

    uint32_t currentUsage() { return total_allocated - total_freed; }
};


namespace ICE { namespace Core {
    int getMemoryUsage();
}}

#endif

