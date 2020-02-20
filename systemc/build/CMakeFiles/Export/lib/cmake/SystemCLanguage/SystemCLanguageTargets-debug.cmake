#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SystemC::systemc" for configuration "Debug"
set_property(TARGET SystemC::systemc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SystemC::systemc PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsystemc.so.2.3.3"
  IMPORTED_SONAME_DEBUG "libsystemc.so.2.3"
  )

list(APPEND _IMPORT_CHECK_TARGETS SystemC::systemc )
list(APPEND _IMPORT_CHECK_FILES_FOR_SystemC::systemc "${_IMPORT_PREFIX}/lib/libsystemc.so.2.3.3" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
