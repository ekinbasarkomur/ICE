#ifndef ICE_WINDOW_HPP
#define ICE_WINDOW_HPP

#include "ICE/core/events/events.hpp"

namespace ICE { namespace Window {

    struct WindowProperties
    {
        std::string title;
        
        uint32_t width;
        uint32_t height;

        WindowProperties(
            const std::string& title = "ICE",
            uint32_t width = 1280,
            uint32_t height = 720
        ): title(title), width(width), height(height)
        {

        }
    };


    class ICE_API Window
    {
        public:
		    /* using EventCallbackFn = std::function<void(Event&)>; */

		    virtual ~Window() {}

		    virtual void onUpdate() = 0;

		    virtual unsigned int getWidth() const = 0;
		    virtual unsigned int getHeight() const = 0;

		    // Window attributes
		    /* virtual void SetEventCallback(const EventCallbackFn& callback) = 0; */
		    virtual void setVSync(bool enabled) = 0;
		    virtual bool isVSync() const = 0;

		    static Window* create(const WindowProperties& props = WindowProperties());
    };

}}

#endif

