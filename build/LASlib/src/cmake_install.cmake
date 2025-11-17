# Install script for directory: /home/runner/work/LAStools/LAStools/LASlib/src

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/LASlib" TYPE FILE FILES
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lascopc.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasdefinitions.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasfilter.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasignore.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laskdtree.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasprogress.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_asc.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_bil.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_bin.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_dtm.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_las.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_ply.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_qfit.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_shp.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreader_txt.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreaderbuffered.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreadermerged.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreaderpipeon.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasreaderstored.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lastransform.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasutility.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasvlr.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/lasvlrpayload.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswaveform13reader.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswaveform13writer.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswriter.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswriter_bin.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswriter_las.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswriter_qfit.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswriter_txt.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswriter_wrl.hpp"
    "/home/runner/work/LAStools/LAStools/LASlib/inc/laswritercompatible.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/include/laszip/laszip_api_version.h"
    "/home/runner/work/LAStools/LAStools/LASzip/include/laszip/laszip_common.h"
    "/home/runner/work/LAStools/LAStools/LASzip/src/arithmeticdecoder.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/arithmeticencoder.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/arithmeticmodel.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamin.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamin_array.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamin_file.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamin_istream.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreaminout.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreaminout_file.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamout.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamout_array.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamout_file.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamout_nil.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/bytestreamout_ostream.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/endian.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/integercompressor.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasattributer.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasindex.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasinterval.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasmessage.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laspoint.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasquadtree.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasquantizer.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreaditem.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreaditemcompressed_v1.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreaditemcompressed_v2.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreaditemcompressed_v3.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreaditemcompressed_v4.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreaditemraw.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasreadpoint.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/lasunzipper.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswriteitem.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswriteitemcompressed_v1.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswriteitemcompressed_v2.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswriteitemcompressed_v3.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswriteitemcompressed_v4.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswriteitemraw.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laswritepoint.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laszip.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laszip_common_v1.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laszip_common_v2.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laszip_common_v3.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laszip_decompress_selective_v3.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/laszipper.hpp"
    "/home/runner/work/LAStools/LAStools/LASzip/src/mydefs.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/LASlib" TYPE STATIC_LIBRARY FILES "/home/runner/work/LAStools/LAStools/LASlib/lib/libLASlib.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib/laslib-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib/laslib-targets.cmake"
         "/home/runner/work/LAStools/LAStools/build/LASlib/src/CMakeFiles/Export/c55326e5cb745217e14af8383b523273/laslib-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib/laslib-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib/laslib-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib" TYPE FILE FILES "/home/runner/work/LAStools/LAStools/build/LASlib/src/CMakeFiles/Export/c55326e5cb745217e14af8383b523273/laslib-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib" TYPE FILE FILES "/home/runner/work/LAStools/LAStools/build/LASlib/src/CMakeFiles/Export/c55326e5cb745217e14af8383b523273/laslib-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LASlib" TYPE FILE FILES "/home/runner/work/LAStools/LAStools/LASlib/src/laslib-config.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/runner/work/LAStools/LAStools/build/LASlib/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
