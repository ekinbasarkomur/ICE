#include "ICE/application/application.hpp"

namespace ICE { namespace App {

    Application::Application()
    {
    }

    Application::~Application()
    {

    }

    void Application::Run()
    {
        while(true)
        {
            ICE_CORE_WARN("loop");
        }
    }
}}
