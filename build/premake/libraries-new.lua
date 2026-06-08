-- bullet collision v2.81 revision 2613
project( "bullet_collision" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/bullet_collision" )
	buildoptions( {
		"/wd\"4127\"", "/wd\"4100\"", "/wd\"4244\"", "/wd\"4702\"",
		"/wd\"4512\"", "/wd\"4267\""
	} )
	includedirs( {
		"../../src/bullet_collision/include/BulletCollision/BroadphaseCollision",
		"../../src/bullet_collision/include/BulletCollision/CollisionDispatch",
		"../../src/bullet_collision/include/BulletCollision/CollisionShapes",
		"../../src/bullet_collision/include/BulletCollision/Gimpact",
		"../../src/bullet_collision/include/BulletCollision/NarrowPhaseCollision",
		"../../src/bullet_linearmath/include"
	} )
	files( {
		"../../src/bullet_collision/include/**.h",
		"../../src/bullet_collision/src/**.cpp"
	} )
	defines( { "WIN32", "_CRT_SECURE_NO_WARNINGS" } )

-- bullet dynamics v2.81 revision 2613
project( "bullet_dynamics" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/bullet_dynamics" )
	buildoptions( {
		"/wd\"4127\"", "/wd\"4100\"", "/wd\"4244\"", "/wd\"4702\"",
		"/wd\"4512\"", "/wd\"4267\"", "/wd\"4305\""
	} )
	includedirs( {
		"../../src/bullet_collision/include/",
		"../../src/bullet_dynamics/include/BulletDynamics/Character",
		"../../src/bullet_dynamics/include/BulletDynamics/ConstraintSolver",
		"../../src/bullet_dynamics/include/BulletDynamics/Dynamics",
		"../../src/bullet_dynamics/include/BulletDynamics/Vehicle",
		"../../src/bullet_linearmath/include"
	} )
	files( {
		"../../src/bullet_dynamics/include/**.h",
		"../../src/bullet_dynamics/src/**.cpp"
	} )
	defines( { "WIN32", "_CRT_SECURE_NO_WARNINGS" } )

-- bullet linearmath v2.81 revision 2613
project( "bullet_linearmath" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/bullet_linearmath" )
	buildoptions( {
		"/wd\"4127\"", "/wd\"4245\"", "/wd\"4244\"", "/wd\"4267\"",
		"/wd\"4701\""
	} )
	includedirs( {
		"../../src/bullet_linearmath/include/LinearMath"
	} )
	files( {
		"../../src/bullet_linearmath/include/**.h",
		"../../src/bullet_linearmath/src/**.cpp"
	} )
	defines( { "WIN32", "_CRT_SECURE_NO_WARNINGS" } )

-- detour v1.4 static library
project( "detour" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/detour" )
	files( {
		"../../src/detour/include/**.h",
		"../../src/detour/src/**.cpp"
	} )
	defines( { "WIN32", "_CRT_SECURE_NO_WARNINGS" } )

-- freeimage v3.15.4 static library
project( "freeimage" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/freeimage" )
	buildoptions( {
		"/wd\"4100\"", "/wd\"4127\"", "/wd\"4189\"", "/wd\"4244\"",
		"/wd\"4611\"", "/wd\"4389\"", "/wd\"4324\"", "/wd\"4702\"",
		"/wd\"4701\"", "/wd\"4789\""
	} )
	includedirs( {
		"../../src/libjpeg/include/",
		"../../src/libopenjpeg/include/",
		"../../src/libpng/include/",
		"../../src/libraw/include/",
		"../../src/libtiff4/include/",
		"../../src/openexr/include",
		"../../src/openexr/include/half",
		"../../src/openexr/include/iex",
		"../../src/openexr/include/ilmimf",
		"../../src/openexr/include/imath",
		"../../src/openexr/include/ilmthread",
		"../../src/zlib/include/"
	} )
	files( {
		"../../src/freeimage/include/**.h",
		"../../src/freeimage/src/**.cpp"
	} )
	defines( {
		"WIN32",
		"_CRT_SECURE_NO_WARNINGS",
		"FREEIMAGE_LIB",
		"OPJ_STATIC",
		"LIBRAW_NODLL"
	} )
