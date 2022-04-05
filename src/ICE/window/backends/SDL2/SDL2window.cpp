#include "ICE/window/backends/SDL2/SDL2window.hpp"

namespace ICE { namespace Window {
    
    Window* Window::create(const WindowProperties& props)
    {
        return new SDL2Window(props);;
    }


    SDL2Window::SDL2Window(const WindowProperties& props)
	{
		this->init(props);
	}


	SDL2Window::~SDL2Window()
	{
		this->shutdown();
	}


    void SDL2Window::init(const WindowProperties& props)
	{
		this->data.title = props.title;
		this->data.width = props.width;
		this->data.height = props.height;

		ICE_CORE_INFO(
            "Creating window {0} ({1}, {2})",
            props.title,
            props.width,
            props.height
        );

        if(SDL_Init(SDL_INIT_VIDEO))
        {
            ICE_CORE_ERROR("SDL_Init Failed");
        }

        this->_window = SDL_CreateWindow(
            "ICE",
            SDL_WINDOWPOS_CENTERED,
            SDL_WINDOWPOS_CENTERED,
            this->data.width,
            this->data.height,
            0
        );

        if(this->_window == nullptr)
        {
            ICE_CORE_ERROR("Could not create window, got eror: ", SDL_GetError());
        }
	}


	void SDL2Window::shutdown()
	{
	
    }


	void SDL2Window::onUpdate()
	{   
        SDL_Event sdl_event;
        while(SDL_PollEvent(&sdl_event))
        {
            switch (sdl_event.type)
            {
                case SDL_QUIT:
                break;
            }
        }
    }


	void SDL2Window::setVSync(bool enabled)
	{
		this->data.VSync = enabled;
	}


	bool SDL2Window::isVSync() const
	{
		return this->data.VSync;
	}

}}
