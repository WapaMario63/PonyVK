# PonyVK
Repository for my own hobby Vulkan graphics engine. Currently very bare bones, however I am building one seperate from this repository which will later on be organized, cleaned up and moved here as I build it.

# Building

## Windows

Edit the .pro file and change the ```LIBS``` and ```INCLUDEPATH``` directories to whereever you have the libraries installed.

Make sure you have installed:
* Visual Studio 2017 (at least the compiler)
* Qt Creator

Libraries:
* SDL2
* Vulkan headers from the LunarG Vulkan SDK
* Vulkan Memory Allocator (included as git submodule)

## Linux

Have Qt Creator installed.

Libraries:
* SDL2
* Vulkan Memory Allocator (included as git submodule)