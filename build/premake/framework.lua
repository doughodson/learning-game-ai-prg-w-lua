	project( "demo_framework" )
		kind( "StaticLib" )
		location( "../"..  _ACTION .. "/projects/demo_framework" )
		pchheader( "PrecompiledHeaders.h" )
		pchsource( "../../src/demo_framework/src/PrecompiledHeaders.cpp" )
		buildoptions( { "/Zm256" } )
		includedirs( {
			"../../src/",
			"../../src/bullet_collision/include/",
			"../../src/bullet_dynamics/include/",
			"../../src/bullet_linearmath/include/",
			"../../src/ois/include/",
			"../../src/ogre3d/include/",
			"../../src/ogre3d_direct3d9/include/"
		} )
		configuration( { "windows" } )
			buildoptions( { "/I \"$(DXSDK_DIR)/Include/\"" } )
		configuration( { "*" } )
		files( {
			"../../src/demo_framework/include/**.h",
			"../../src/demo_framework/src/**.cpp",
			"../../src/demo_framework/script/**.lua"
		} )

