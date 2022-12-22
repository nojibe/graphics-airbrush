cmake_minimum_required(VERSION 3.14)

project(airbrush LANGUAGES CXX C)

# Create the directory for saving artwork and remember its location.
set(ARTWORK "${PROJECT_SOURCE_DIR}/artwork")
file(MAKE_DIRECTORY "${ARTWORK}")

# We want C++11
set (CMAKE_CXX_STANDARD 11)

## Get our GUI: SDL2
include(FetchContent)
set(FETCHCONTENT_QUIET FALSE)
# SDL2
FetchContent_Declare(
    SDL2
    GIT_REPOSITORY https://github.com/libsdl-org/SDL
    GIT_TAG release-2.24.0
    GIT_SHALLOW TRUE
    GIT_PROGRESS TRUE
)
FetchContent_MakeAvailable( SDL2 )
## Get our GUI: Dear ImGui
set(IMGUI_SRCS
    ext/imgui/imgui_demo.cpp
    ext/imgui/imgui_draw.cpp
    ext/imgui/imgui_impl_sdl.cpp
    ext/imgui/imgui_impl_sdlrenderer.cpp
    ext/imgui/imgui_tables.cpp
    ext/imgui/imgui_widgets.cpp
    ext/imgui/imgui.cpp
    )

set(AIRBRUSH_CORE_SRCS
    src/airbrush.cpp
    src/airbrush.h
    src/image.cpp
    src/image.h
)
## Put our core code in a library so that testers can also use it without recompiling.
add_library(airbrushlib OBJECT ${AIRBRUSH_CORE_SRCS})
set(SRCS
    "${IMGUI_SRCS}"
    src/main_imgui.cpp
    src/stb_image.h
    src/stb_image_resize.h
    src/stb_image_write.h
)
add_executable(airbrush ${SRCS})
## Add "src" as an include directory for Qt's auto-generated source files.
target_include_directories(airbrush PRIVATE "src" "ext/imgui")
target_link_libraries(airbrush PRIVATE SDL2::SDL2main SDL2::SDL2-static airbrushlib)

## Add tests
enable_testing()
add_subdirectory( test )

include("CMakeLists-zip.txt" OPTIONAL)
