#include "ICE/core/log.hpp"


namespace ICE { namespace Core {

    std::shared_ptr<spdlog::logger> Log::coreLogger_;
    std::shared_ptr<spdlog::logger> Log::clientLogger_;

    void Log::init()
    {
        spdlog::set_pattern("%^[%T] %n: %v%$");

        coreLogger_ = spdlog::stdout_color_mt("ICE Core");
        coreLogger_->set_level(spdlog::level::trace);

        clientLogger_ = spdlog::stdout_color_mt("Application");
        clientLogger_->set_level(spdlog::level::trace);
    }

}} //namespace ICE::Core
