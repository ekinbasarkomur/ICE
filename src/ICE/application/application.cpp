#include "ICE/application/application.hpp"

namespace ICE { namespace App {


    Application::Application()
    {
        ICE::Core::Log::init();

        /* dispatcher.subscribe( */
        /*     ICE::Core::EventType::WindowClose, */
        /*     std::bind( */
        /*         &Application::onWindowClose, */
        /*         this, */
        /*         std::placeholders::_1 */
        /*     ) */
        /*     /1* ICE_BIND_EVENT_FUNC( *1/ */
        /*     /1*     ICE::App::Application::onWindowClose *1/ */
        /*     /1* ) *1/ */
        /* ); */
        

        this->_window = ICE::Window::Window::create();
    }

    
    Application::~Application()
    {

    }

    
    void Application::Run()
    {
        while(this->_runnig)
        {
            this->_window->onUpdate();
        }
    }
    

    bool Application::onWindowClose()
    {
        ICE_CORE_TRACE("On Window Close");
        this->_runnig = false;
        return true;
    }

    bool Application::onWindowClose(const ICE::Core::Event& event)
    {
        ICE_CORE_TRACE("On Window Close");
        ICE_CORE_TRACE(event);
        return true;
    }

    bool Application::onWindowResize(const ICE::Core::Event& event)
    {
        ICE_CORE_TRACE("On Window Resize");
        ICE_CORE_TRACE(event);
        return true;
    }
}}
