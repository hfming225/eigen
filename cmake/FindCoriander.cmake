cmake_minimum_required(VERSION 3.0.0)

set(COCL_EXE /usr/local/bin/cocl)

find_library(COCL_RUNTIME_LIBRARY cocl PATHS /usr/local
  HINTS /usr/local/lib)
find_library(CLBLAST_RUNTIME_LIBRARY clblast PATHS /usr/local
  HINTS /usr/local/lib)
find_library(CLEW_RUNTIME_LIBRARY clew PATHS /usr/local
  HINTS /usr/local/lib)
find_library(EASYCL_RUNTIME_LIBRARY easycl PATHS /usr/local
  HINTS /usr/local/lib)
mark_as_advanced(FORCE COCL_RUNTIME_LIBRARY CLBLAST_RUNTIME_LIBRARY CLEW_RUNTIME_LIBRARY EASYCL_RUNTIME_LIBRARY)

SET(Coriander_LIBRARIES ${COCL_RUNTIME_LIBRARY} ${CLBLAST_RUNTIME_LIBRARY} ${EASYCL_RUNTIME_LIBRARY} ${CLEW_RUNTIME_LIBRARY})

include(/usr/local/share/cocl/cocl.cmake)
