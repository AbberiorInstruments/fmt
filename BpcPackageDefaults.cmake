
if( BPC_PACKAGE_FOUND )
	#Ignored in ai-master anyhow
	#set(FMT_INSTALL ON CACHE BOOL "Generate the install target." FORCE)
	set(FMT_DOC OFF CACHE BOOL "Generate the install target." FORCE)
	set(FMT_TEST OFF CACHE BOOL "Generate the test target." FORCE)
	set(FMT_USE_CPP11 ON CACHE BOOL "Enable the addition of C++11 compiler flags." FORCE)
	set(BUILD_SHARED_LIBS ON CACHE BOOL "Build shared library instead of static." FORCE)
else()
	# Platforms for which to build
	set( BPC_PACKAGE_PLATFORMS "MSVC-32-14.0;MSVC-64-14.0;GNU-64-Linux-4.7.4;NISOM" )
endif()
