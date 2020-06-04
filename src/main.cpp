#include <iostream>
#include <SDL.h>

#ifdef _MSC_VER
#undef main
#endif

int main(int argc, char** argv)
{
    (void)argc;
    (void)argv;

    std::cout << "[PVK] Initializing...\n";
    SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS);


    std::cout << "[PVK] Quitting...\n";
    SDL_Quit();

    return 0;
}
