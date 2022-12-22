# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-src"
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-build"
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix"
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix/tmp"
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp"
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src"
  "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/nojibe/Library/CloudStorage/OneDrive-GeorgeMasonUniversity-O365Production/Fall 2022/CS 451/graphics101-airbrush/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
