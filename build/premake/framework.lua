project( "framework" )
	kind( "StaticLib" )
	location( "../"..  _ACTION .. "/projects/framework" )
	pchheader( "PrecompiledHeaders.hpp" )
	pchsource( "../../src/framework/src/PrecompiledHeaders.cpp" )
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
		"../../src/framework/include/**.hpp",
		"../../src/framework/src/**.cpp",
		"../../src/framework/script/**.lua"
	} )

-- lua v5.1.5 static library
project( "lua" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/lua" )
	buildoptions( {
		"/wd\"4244\"", "/wd\"4702\"", "/wd\"4324\"", "/wd\"4334\""
	} )
	files( {
		"../../src/lua/include/**.h",
		"../../src/lua/include/**.hpp",
		"../../src/lua/src/**.c"
	} )
	defines( { "WIN32", "_CRT_SECURE_NO_WARNINGS" } )

