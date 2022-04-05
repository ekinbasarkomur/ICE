#ifndef ICE_SDL2_BACKEND_HPP
#define ICE_SDL2_BACKEND_HPP

#include "ICE/core/coremodule.hpp"
#include "ICE/window/window.hpp"
#include "ICE/application/application.hpp"
#include "SDL2/SDL.h"

namespace ICE { namespace Window {
    
    class SDL2Window : public Window
    {
        public: 
            SDL2Window(const WindowProperties& props);
            virtual ~SDL2Window();
        

            void onUpdate() override;

		    inline unsigned int getWidth() const override { return data.width; }
		    inline unsigned int getHeight() const override { return data.height; }

		    // Window attributes
		    /* inline void SetEventCallback(const EventCallbackFn& callback) override { m_Data.EventCallback = callback; } */
		    void setVSync(bool enabled) override;
		    bool isVSync() const override;
	    private:
		    virtual void init(const WindowProperties& props);
		    virtual void shutdown();
		
		    struct WindowData
		    {
			    std::string title;
			    uint32_t width, height;
		    	bool VSync;
			    /* EventCallbackFn EventCallback; */
		    };
            
		    WindowData data;

            SDL_Window* _window;
            SDL_Event* _event;
    };


}}

#endif

