#ifndef ICE_APPLICATION_HPP
#define ICE_APPLICATION_HPP

#include "ICE/core/coremodule.hpp"
#include "ICE/window/window.hpp"


namespace ICE { namespace App {

    static ICE::Core::Dispatcher<ICE::Core::EventType> dispatcher;
    
    class ICE_API Application {
        public:
            Application();
            virtual ~Application();

            void Run();

            bool onWindowClose();
            bool onWindowClose(const ICE::Core::Event& event);
            bool onWindowResize(const ICE::Core::Event& event);
        private:
            
            ICE::Window::Window* _window;
            bool _runnig = true;
    };
    
    Application* createApplication();

}}


#endif
