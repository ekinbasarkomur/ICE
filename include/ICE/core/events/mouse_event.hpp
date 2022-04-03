#ifndef ICE_MOUSE_EVENT_HPP
#define ICE_MOUSE_EVENT_HPP

#include "ICE/core/event.hpp"

namespace ICE { namespace Core { namespace Event {


    class ICE_API MouseMovedEvent : public Event
	{
    	public:
    		MouseMovedEvent(float x, float y)
    			: _mouseX(x), _mouseY(y) {}

    		inline float getX() const { return _mouseX; }
    		inline float getY() const { return _mouseY; }

    		std::string toString() const override
    		{
    			std::stringstream ss;
    			ss << "MouseMovedEvent: " << _mouseX << ", " << _mouseY;
    			return ss.str();
    		}

    		EVENT_CLASS_TYPE(MouseMoved)
    		EVENT_CLASS_CATEGORY(EventCategoryMouse | EventCategoryInput)
    	private:
    		float _mouseX, _mouseY;
	};


	class ICE_API MouseScrolledEvent : public Event
	{
    	public:
    		MouseScrolledEvent(float xOffset, float yOffset)
    			: _XOffset(xOffset), _YOffset(yOffset) {}

    		inline float getXOffset() const {return _XOffset;}
    		inline float getYOffset() const {return _YOffset;}

    		std::string toString() const override
    		{
    			std::stringstream ss;
    			ss << "MouseScrolledEvent: " << getXOffset() << ", " << getYOffset();
    			return ss.str();
    		}

    		EVENT_CLASS_TYPE(MouseScrolled)
    		EVENT_CLASS_CATEGORY(EventCategoryMouse | EventCategoryInput)
    	private:
    		float _XOffset, _YOffset;
    };


    class ICE_API MouseButtonEvent : public Event
    {
    	public:
    		inline int getMouseButton() const {return _button;}

    		EVENT_CLASS_CATEGORY(EventCategoryMouse | EventCategoryInput)
    	protected:
    		MouseButtonEvent(int button)
    			: _button(button) {}

    		int _button;
	};


	class ICE_API MouseButtonPressedEvent : public MouseButtonEvent
	{
    	public:
    		MouseButtonPressedEvent(int button)
    			: MouseButtonEvent(button) {}

    		std::string toString() const override
    		{
    			std::stringstream ss;
    			ss << "MouseButtonPressedEvent: " << _button;
    			return ss.str();
    		}

    		EVENT_CLASS_TYPE(MouseButtonPressed)
	};



	class ICE_API MouseButtonReleasedEvent : public MouseButtonEvent
	{
    	public:
    		MouseButtonReleasedEvent(int button)
    			: MouseButtonEvent(button) {}

    		std::string toString() const override
    		{
    			std::stringstream ss;
    			ss << "MouseButtonReleasedEvent: " << _button;
    			return ss.str();
    		}

    		EVENT_CLASS_TYPE(MouseButtonReleased)
	};

}}} //namespace ICE::Core::Event

#endif
