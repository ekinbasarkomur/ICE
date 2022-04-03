#ifndef ICE_LOG_HPP
#define ICE_LOG_HPP

#include "ICE/config.hpp"
#include "ICE/utils.hpp"
#include "spdlog/spdlog.h"
#include "spdlog/sinks/stdout_color_sinks.h"
#include "spdlog/fmt/ostr.h"

namespace ICE { namespace Core {


    class ICE_API Log {
        public:
            static void init();

            inline static std::shared_ptr<spdlog::logger>& getCoreLogger()
                {return coreLogger_;}
            inline static std::shared_ptr<spdlog::logger>& getClientLogger()
                {return clientLogger_;}

        private:
             static std::shared_ptr<spdlog::logger> coreLogger_;
             static std::shared_ptr<spdlog::logger> clientLogger_;
    };

}} //namespace ICE::Core

// Core log macros
#define ICE_CORE_TRACE(...) ::ICE::Core::Log::getCoreLogger()->trace(__VA_ARGS__)
#define ICE_CORE_INFO(...) ::ICE::Core::Log::getCoreLogger()->info(__VA_ARGS__)
#define ICE_CORE_WARN(...) ::ICE::Core::Log::getCoreLogger()->warn(__VA_ARGS__)
#define ICE_CORE_ERROR(...) ::ICE::Core::Log::getCoreLogger()->error(__VA_ARGS__)
#define ICE_CORE_FATAL(...) ::ICE::Core::Log::getCoreLogger()->fatal(__VA_ARGS__)

// Client log macros
#define ICE_TRACE(...) ::ICE::Core::Log::getClientLogger()->trace(__VA_ARGS__)
#define ICE_INFO(...) ::ICE::Core::Log::getClientLogger()->info(__VA_ARGS__)
#define ICE_WARN(...) ::ICE::Core::Log::getClientLogger()->warn(__VA_ARGS__)
#define ICE_ERROR(...) ::ICE::Core::Log::getClientLogger()->error(__VA_ARGS__)
#define ICE_FATAL(...) ::ICE::Core::Log::getClientLogger()->fatal(__VA_ARGS__)

#endif
