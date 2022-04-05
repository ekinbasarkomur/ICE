#include "event_test.hpp"

bool onEvent(const ICE::Core::Event& event){
    ICE_CORE_TRACE("onEvent");
    ICE_CORE_TRACE(event);
    return true;
}

bool onEvent2(const ICE::Core::Event& event){
    ICE_CORE_TRACE("onEvent2");
    ICE_CORE_TRACE(event);
    return true;
}

int main(int arc, const char ** argv)
{
    ICE::Core::Log::init();

    ICE_CORE_INFO("ICE Launched");

    // Default Dispatcher
    ICE::Core::Dispatcher<ICE::Core::EventType> dispatcher;

    // Default events
    ICE::Core::KeyPressedEvent kpevent(4,0);
    ICE::Core::KeyReleasedEvent krevent(4);
    ICE::Core::AppRenderEvent arevent;

    dispatcher.subscribe(ICE::Core::EventType::KeyPressed, onEvent);
    dispatcher.subscribe(ICE::Core::EventType::KeyReleased, onEvent2);
    dispatcher.subscribe(ICE::Core::EventType::AppRender, onEvent2);

    dispatcher.post(kpevent);
    dispatcher.post(krevent);
    dispatcher.post(arevent);

    //TODO:
    // Custom Dispatcher
    ICE::Core::Dispatcher<ICE::Core::CustomEventType> dispatcherCustom;

    //ICE::Core::CustomEvent kpevent;

    //dispatcher.subscribe(ICE::Core::EventType::KeyPressed, onEvent);

    return 0;
}
