#ifndef EVENT_TEST_HPP
#define EVENT_TEST_HPP

#ifdef __EMSCRIPTEN__
    #include <emscripten.h>
#endif

#include "ICE/ICE.hpp"


//TODO:
// Custom Event Decleration
namespace ICE { namespace Core { namespace Event {

    enum class CustomEventType : uint32_t
    {
        Custom = 0
    };

    enum CustomEventCategory
    {
        EventCategoryCustom    = (1 << 0),
    };

    class ICE_API CustomEvent : public ICE::Core::Event::Event
    {
        public:
            CustomEvent() {}

            EVENT_CLASS_CATEGORY(EventCategoryCustom)

            //EVENT_CLASS_TYPE(CustomEventType, Custom)
    };

}}} //namespace ICE::Core::Event

#endif
