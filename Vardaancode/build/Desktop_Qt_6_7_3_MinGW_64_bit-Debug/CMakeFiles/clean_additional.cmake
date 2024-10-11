# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Vardaancode_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Vardaancode_autogen.dir\\ParseCache.txt"
  "Vardaancode_autogen"
  )
endif()
