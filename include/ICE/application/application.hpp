#ifndef ICE_APPLICATION_HPP
#define ICE_APPLICATION_HPP

#include "ICE/core/core.hpp"

namespace ICE { namespace APPLICATION {

    class ICE_API Application {
        public:
            Application();
            virtual Application();

            void Run();
    };
    
    Application* createApplication();

}}


#endif
