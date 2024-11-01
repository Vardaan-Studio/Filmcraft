# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-src")
  file(MAKE_DIRECTORY "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-src")
endif()
file(MAKE_DIRECTORY
  "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-build"
  "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix"
  "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix/tmp"
  "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
  "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix/src"
  "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/Mission-Vardaan-Studio/VardaanUI/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
