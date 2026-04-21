# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\OfflineDictionary_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\OfflineDictionary_autogen.dir\\ParseCache.txt"
  "CMakeFiles\\dict_core_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\dict_core_autogen.dir\\ParseCache.txt"
  "CMakeFiles\\sqlite3_amalg_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\sqlite3_amalg_autogen.dir\\ParseCache.txt"
  "OfflineDictionary_autogen"
  "dict_core_autogen"
  "sqlite3_amalg_autogen"
  )
endif()
