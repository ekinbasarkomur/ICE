#include "ICE/core/memory.hpp"

static AllocationMetrics allocationMetrics;

void* operator new(size_t size)
{
    allocationMetrics.total_allocated += size;
    return malloc(size);
}


void operator delete(void* memory, size_t size)
{
    allocationMetrics.total_freed += size;
    free(memory);
}

namespace ICE { namespace Core {
    int getMemoryUsage()
    {
        return allocationMetrics.currentUsage();
    }

}}

