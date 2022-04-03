#ifndef ICE_EVENT_HPP
#define ICE_EVENT_HPP

#include "ICE/config.hpp"
#include "ICE/utils.hpp"

namespace ICE { namespace Core { namespace Event {

    enum class EventType : uint32_t
	{
		None = 0,
		WindowClose, WindowResize, WindowFocus, WindowLostFocus, WindowMoved,
		AppTick, AppUpdate, AppRender,
		KeyPressed, KeyReleased, KeyTyped,
		MouseButtonPressed, MouseButtonReleased, MouseMoved, MouseScrolled
	};

    enum EventCategory
    {
        None = 0,
        EventCategoryApplication    = (1 << 0),
        EventCategoryInput          = (1 << 1),
        EventCategoryKeyboard       = (1 << 2),
        EventCategoryMouse          = (1 << 3),
        EventCategoryMouseButton    = (1 << 4)
    };


    #define EVENT_CLASS_TYPE(type)\
        static EventType getStaticType() {return EventType::type;}\
		virtual EventType getEventType() const override {return getStaticType();}\
		virtual const char* getName() const override {return #type;}

    #define EVENT_CLASS_CATEGORY(category)\
        virtual int getCategoryFlags() const override {return category;}



    class ICE_API Event {

        protected:



        public:

            //Event();

            virtual ~Event() = default;

            virtual EventType getEventType() const = 0;

            virtual const char* getName() const = 0;

            virtual std::string toString() const {return getName();}

            virtual int getCategoryFlags() const = 0;

            bool handled = false;

        private:
    };

    inline std::ostream& operator<<(std::ostream& os, const Event& e)
    {
        return os << e.toString();
    }

}}} //namespace ICE::Core::Event

#endif
