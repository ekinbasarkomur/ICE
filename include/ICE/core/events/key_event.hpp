#ifndef ICE_KEY_EVENT_HPP
#define ICE_KEY_EVENT_HPP

#include "ICE/core/event.hpp"


#define test EventType::WindowResize;

namespace ICE { namespace Core {

    class ICE_API KeyEvent : public Event
    {
        public:
            ~KeyEvent() override = default;

            inline int getKeyCode() const {return _keyCode;}

            EVENT_CLASS_CATEGORY(EventCategoryKeyboard | EventCategoryInput)


            static EventType GetStaticType()
               {return EventType::KeyPressed;}

        protected:
            KeyEvent(int keycode)
                : _keyCode(keycode) {}

            int _keyCode;
    };


    class ICE_API KeyPressedEvent : public KeyEvent
    {
        public:

            KeyPressedEvent(int keycode, int repeatCount)
                : KeyEvent(keycode), _repeatCount(repeatCount) {}

            ~KeyPressedEvent() override = default;

            inline int getRepeatCount() const {return _repeatCount;}

            std::string toString() const override
            {
                std::stringstream ss;
                ss << "KeyPressedEvent: " << _keyCode << " (" << _repeatCount << " repeats)";
                return ss.str();
            }

            EVENT_CLASS_TYPE(KeyPressed)

        private:
            int _repeatCount;
    };



    class ICE_API KeyReleasedEvent : public KeyEvent
    {
        public:
            KeyReleasedEvent(int keycode)
                : KeyEvent(keycode) {}

            std::string toString() const override
            {
                std::stringstream ss;
                ss << "KeyReleasedEvent: " << _keyCode;
                return ss.str();
            }

            EVENT_CLASS_TYPE(KeyReleased)
    };

    class ICE_API KeyTypedEvent : public KeyEvent
    {
        public:
            KeyTypedEvent(int keycode)
                : KeyEvent(keycode) {}

            std::string toString() const override
            {
                std::stringstream ss;
                ss << "KeyTypedEvent: " << _keyCode;
                return ss.str();
            }

            EVENT_CLASS_TYPE(KeyTyped)
    };

}} //namespace ICE::Core

#endif
