#ifndef ICE_APPLICATION_HPP
#define ICE_APPLICATION_HPP

#include "ICE/core/coremodule.hpp"

namespace ICE { namespace App {

    class ICE_API Application {
        public:
            Application();
            virtual ~Application();

            void Run();
    };
    
    Application* createApplication();

}}


#endif
