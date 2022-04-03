#ifndef ICE_APPLICATION_EVENT_HPP
#define ICE_APPLICATION_EVENT_HPP

#include "ICE/core/event.hpp"

namespace ICE { namespace Core { namespace Event {

    class ICE_API WindowResizeEvent : public Event
	{
    	public:
    		WindowResizeEvent(unsigned int width, unsigned int height)
    			: _width(width), _height(height) {}

    		inline unsigned int getWidth() const {return _width;}

    		inline unsigned int getHeight() const {return _height;}

    		std::string toString() const override
    		{
    			std::stringstream ss;
    			ss << "WindowResizeEvent: " << _width << ", " << _height;
    			return ss.str();
    		}

    		EVENT_CLASS_TYPE(WindowResize)

    		EVENT_CLASS_CATEGORY(EventCategoryApplication)
    	private:
    		unsigned int _width, _height;
	};


	class ICE_API WindowCloseEvent : public Event
	{
    	public:
    		WindowCloseEvent() {}

    		EVENT_CLASS_TYPE(WindowClose)

    		EVENT_CLASS_CATEGORY(EventCategoryApplication)
	};


	class ICE_API AppTickEvent : public Event
	{
    	public:
    		AppTickEvent() {}

    		EVENT_CLASS_TYPE(AppTick)

    		EVENT_CLASS_CATEGORY(EventCategoryApplication)
	};


	class ICE_API AppUpdateEvent : public Event
	{
    	public:
    		AppUpdateEvent() {}

    		EVENT_CLASS_TYPE(AppUpdate)

    		EVENT_CLASS_CATEGORY(EventCategoryApplication)
	};


	class ICE_API AppRenderEvent : public Event
	{
    	public:
    		AppRenderEvent() {}

    		EVENT_CLASS_TYPE(AppRender)

    		EVENT_CLASS_CATEGORY(EventCategoryApplication)
	};

}}} //namespace ICE::Core::Event

#endif
