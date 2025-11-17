# Building LAStools with GCC/Clang/MinGW

This document provides instructions for building LAStools with GCC, Clang, or MinGW compilers on various platforms.

## Prerequisites

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install build-essential cmake ninja-build
```

### macOS
```bash
brew install cmake ninja
```

### Windows (MinGW via MSYS2)
1. Install MSYS2 from https://www.msys2.org/
2. Open MSYS2 MinGW 64-bit terminal
3. Install build tools:
```bash
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja make
```

## Building

### Standard Build (Static Libraries)

```bash
# Configure
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DLAStools_BUILD_SHARED=OFF

# Build
cmake --build build --config Release -j

# Install (optional)
cmake --install build --prefix /usr/local
```

### Building with Ninja (faster)

```bash
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DLAStools_BUILD_SHARED=OFF -G Ninja
cmake --build build --config Release
```

### Building Shared Libraries (DLLs/.so)

```bash
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DLAStools_BUILD_SHARED=ON
cmake --build build --config Release
```

### Building with Specific Compiler

```bash
# GCC
export CC=gcc CXX=g++
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release

# Clang
export CC=clang CXX=clang++
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release
```

### Cross-Compiling for ARM64 on Linux

```bash
# Install cross-compiler
sudo apt-get install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu

# Create toolchain file (arm64-toolchain.cmake)
cat > arm64-toolchain.cmake << EOF
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)
set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
set(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
EOF

# Configure and build
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=arm64-toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

## Windows-Specific Instructions

### Using MinGW Makefiles

```bash
# In MSYS2 MinGW 64-bit terminal
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -G "MinGW Makefiles"
cmake --build build --config Release -- -j
```

### Using Visual Studio (MSVC)

The project still supports MSVC builds. Open LAStools.sln in Visual Studio or use:

```bash
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
```

## CMake Options

- `LAStools_BUILD_SHARED` - Build shared libraries instead of static (default: OFF)
- `CMAKE_BUILD_TYPE` - Build configuration: Release, Debug, RelWithDebInfo, MinSizeRel
- `CMAKE_INSTALL_PREFIX` - Installation directory (default: /usr/local on Unix, C:/Program Files on Windows)

## Build Output

After building, the binaries will be located in:
- Executables: `bin64/` directory
- Libraries: `LASlib/lib/` directory

## Troubleshooting

### Missing Dependencies
If CMake cannot find dependencies, ensure they are installed or provide hints:
```bash
cmake -B build -S . -DCMAKE_PREFIX_PATH=/path/to/dependencies
```

### Compiler Warnings
The build system suppresses some warnings for compatibility. To enable all warnings:
```bash
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-Wall -Wextra"
```

### Clean Build
To start fresh:
```bash
rm -rf build
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

## Continuous Integration

The project includes GitHub Actions workflows that automatically build on:
- Linux x64/ARM64 (GCC, Clang)
- macOS x64/ARM64 (Clang)
- Windows x64 (MinGW GCC)

See `.github/workflows/ci-gcc.yml` for CI configuration details.
