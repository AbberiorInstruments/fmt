if( EXISTS "${CMAKE_CURRENT_LIST_DIR}/../CMakeModules" )
	include( "${CMAKE_CURRENT_LIST_DIR}/../CMakeModules/BpcCreateBuildDirs.cmake" )
else()
	include( "${CMAKE_CURRENT_LIST_DIR}/BpcCreateBuildDirs.cmake" )
	if( NOT BUILD_ARGS )
		set( BUILD_ARGS "SET_IPREFIX" )
	else()
		set( BUILD_ARGS "SET_IPREFIX;${BUILD_ARGS}" )
	endif()
endif()

message( "bpc_build BUILD_ARGS: ${BUILD_ARGS}" )
bpc_build( ${BUILD_ARGS} )