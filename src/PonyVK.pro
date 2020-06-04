# Use c++17
CONFIG += c++1z

### All build configuration ###

# Libraries
# Windows
win32 {
    # The Vulkan Library works with either compiler
    LIBS += -LC:\VulkanSDK\1.1.73.0\Lib -lvulkan-1
    INCLUDEPATH += C:\VulkanSDK\1.1.73.0\Include \
        # You might want to modify this to use your own SDL2 Install Directory
        I:\Game_Engine_Development\Libraries\SDL2-2.0.12\include

    # MinGW Compiler
    g++ {
        # TODO: Add the MinGW version of the library
    }
    # MSVC Compiler (Visual Studio)
    msvc {
        # You might want to modify this to use your own SDL2 Install Directory
        LIBS += -LI:\Game_Engine_Development\Libraries\SDL2-2.0.12\lib\x64 -lSDL2
    }
}
# Linux (GCC)
linux-g++ {
    # Make sure you have the vulkan-headers package as
    # well as SDL2's installed.
    # I use Manjaro so it will probably be different for you.
    LIBS *= -lvulkan -lSDL2
}

INCLUDEPATH += %{sourceDir}/../thirdparty/VMA/src

### Debug build specific configuration ###
CONFIG(debug, debug|release) {
    # Used for debug specific stuff (e.g Vulkan validation layers)
    DEFINES += PNE_DEBUG
}
### Release build specific configuration ##
CONFIG(release, debug|release) {

}

SOURCES += \
    main.cpp
