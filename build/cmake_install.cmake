# Install script for directory: /Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/test/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/Notes.txt"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/CMakeLists.txt"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/CMakeLists-zip.txt"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/src" TYPE FILE FILES
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_demo.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_draw.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdl.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_impl_sdlrenderer.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_tables.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui_widgets.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/ext/imgui/imgui.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/main_imgui.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/stb_image.h"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/stb_image_resize.h"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/stb_image_write.h"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/airbrush.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/airbrush.h"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/image.cpp"
    "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/src/image.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/artwork" REGEX "/\\.ds\\_store$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
