#ifndef ICE_CONFIG_HPP
#define ICE_CONFIG_HPP

#ifdef ICE_PLATFORM_WIN
    // Windows platforms
    #ifdef ICE_EXPORTS
        // From DLL side, we must export
        #define ICE_API __declspec(dllexport)
    #else
        // From client application side, we must import
        #define ICE_API __declspec(dllimport)
    #endif
#else
    #if (__GNUC__ >= 4)
        #define ICE_API __attribute__((visibility("default")))
    #endif
#endif

#ifndef ICE_API
    #define ICE_API
#endif

#endif
