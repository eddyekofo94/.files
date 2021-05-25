# CSES_Problem_Set
# Some attempt on algorithms
# Copyright 2021, Eddy Ekofo
cmake_minimum_required(VERSION 3.1...3.19.2)
project(CSES_Problem_Set C CXX)
set(PROJECT_DESCRIPTION "Some attempt on algorithms")
set(PROJECT_AUTHOR "Eddy Ekofo")
set(PROJECT_URL "https://github.com/eddyekofo94/project_name_goes_here")
set(PROJECT_VERSION_MAJOR "0")
set(PROJECT_VERSION_MINOR "0")
set(PROJECT_VERSION_PATCH "1")

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
# This enables debuging features, if removed the code is
# optimised
set(CMAKE_BUILD_TYPE Debug)

# Generates a compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# place binaries and libraries according to GNU standards
include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

# Build flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -march=native")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror -pedantic")
set(CMAKE_CXX_CLANG_TIDY "clang-tidy")

# ---------------------------------------------------------
# Features
# ---------------------------------------------------------
include_directories(src)
add_subdirectory(external)
add_subdirectory(test)
add_subdirectory(src)

# allow for static analysis options
include(cmake/StaticAnalyzers.cmake)

# Link this 'library' to use the warnings specified in CompilerWarnings.cmake
add_library(project_warnings INTERFACE)

# standard compiler warnings
include(cmake/CompilerWarnings.cmake)
set_project_warnings(project_warnings)


# enable doxygen
include(cmake/Doxygen.cmake)
enable_doxygen()

# sanitizer options if supported by compiler
include(cmake/Sanitizers.cmake)
enable_sanitizers(project_options)
# Very basic PCH example
option(ENABLE_PCH "Enable Precompiled Headers" OFF)
if(ENABLE_PCH)
  # This sets a global PCH parameter, each project will build its own PCH, which
  # is a good idea if any #define's change
  #
  # consider breaking this out per project as necessary
  target_precompile_headers(project_options INTERFACE <vector> <string> <map> <utility>)
endif()

include(cmake/StandardProjectSettings.cmake)

include(CTest)
enable_testing()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

include(CPack)
