#ifndef ICE_DISPATCHER_HPP
#define ICE_DISPATCHER_HPP

#include "ICE/config.hpp"
#include "ICE/utils.hpp"
#include "ICE/core/log.hpp"

#include <functional>
#include <map>
#include <vector>
#include <algorithm>

namespace ICE { namespace Core {

    template<typename T>
    class Dispatcher{
        private:

            typedef bool (*func)(const ICE::Core::Event&);
            std::map<T, std::vector<func>> _observers;



        public:

            void subscribe(T type, func f)
            {
                _observers[type].push_back(f);
            };


            void post(ICE::Core::Event& event)
            {
                if(_observers.find(event.getEventType()) == _observers.end()) {
                    return;
                }

                std::vector<func> subs = _observers[event.getEventType()];
                std::vector<func>::iterator fptr;

                for(fptr = subs.begin(); fptr < subs.end(); ++fptr) {
                    if(!event.handled)
                    {
                        (*fptr)(event);
                    }
                }
            };
    };


}} //namespace ICE::Core::Dispatcher

#endif
