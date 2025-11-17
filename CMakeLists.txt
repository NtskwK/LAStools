cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
set(CMAKE_SUPPRESS_REGENERATION true)
set(CMAKE_CXX_STANDARD 17)

project("LAStools" CXX C)

# Option to control shared vs static library build
option(LAStools_BUILD_SHARED "Build LAStools as shared libraries (DLLs/.so)" OFF)
option(BUILD_SHARED_LIBS "Build LASlib as DLL (deprecated, use LAStools_BUILD_SHARED)" OFF)

# Sync the two options for backward compatibility
if(LAStools_BUILD_SHARED)
    set(BUILD_SHARED_LIBS ON)
endif()

# Configure portable export header
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/portable_export.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/include/las_portable.h"
    @ONLY
)

# Add configured header to include path
include_directories("${CMAKE_CURRENT_BINARY_DIR}/include")

# Compiler-specific flags
if(MSVC)
    # MSVC-specific flags
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)
    # Note: MSVC warning levels and optimization flags should be set per-target if needed
else()
    # GCC/Clang flags
    add_compile_options(-O3 -Wall -Wextra -Wno-strict-aliasing -Wno-unknown-pragmas)
    
    # Additional GCC-specific warnings suppressions
    if(CMAKE_C_COMPILER_ID MATCHES "GNU")
        add_compile_options(-Wno-format-security -Wno-format-truncation)
    endif()
    
    # Clang-specific warnings
    if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        add_compile_options(-Wno-unknown-warning-option)
    endif()
    
    # Enable Position Independent Code for shared libraries
    if(LAStools_BUILD_SHARED OR BUILD_SHARED_LIBS)
        set(CMAKE_POSITION_INDEPENDENT_CODE ON)
    endif()
endif()

# Set RPATH for Unix-like systems when building shared libraries
if(BUILD_SHARED_LIBS AND UNIX AND NOT APPLE)
    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib/LASlib")
endif()

add_subdirectory(LASlib/src)
if(NOT BUILD_SHARED_LIBS)
    add_subdirectory(src)
endif()
