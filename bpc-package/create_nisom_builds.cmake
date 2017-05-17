include( ../CMakeModules/BpcDefaults.cmake )

if ( NOT DEFINED CONFIG )
	create_nisom_build_dir( Debug )
	create_nisom_build_dir( RelWithDebInfo )
else()
	create_nisom_build_dir( ${CONFIG} )
endif()