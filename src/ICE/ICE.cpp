#include "ICE/ICE.hpp"

class Sandbox: public ICE::App::Application
{
    public:
        Sandbox()
        {
            ICE_CORE_INFO("sad");
        }

        ~Sandbox()
        {

        }

};

ICE::App::Application* ICE::App::createApplication()
{
    ICE::Core::Log::init();
    return new Sandbox();
}



int main(int argc, const char ** argv)
{
    ICE::App::Application* app = ICE::App::createApplication();
    ICE_CORE_INFO(ICE::Core::getMemoryUsage());
    app->Run();
    delete app;
    return 0;
}
