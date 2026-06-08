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

-- freetype v2.4.12 static library
project( "freetype" )
	kind( "StaticLib" )
	location( "../" ..  _ACTION .. "/projects/freetype" )
	buildoptions( {
		"/wd\"4100\"", "/wd\"4244\"", "/wd\"4245\"", "/wd\"4701\"",
		"/wd\"4267\"", "/wd\"4324\"", "/wd\"4306\"", "/wd\"4703\""
	} )
	buildoptions( { "/FI \"ft2build.h\"" } )
	defines( { "FT2_BUILD_LIBRARY", "_CRT_SECURE_NO_WARNINGS" } )
-- required to specify only the module level "c" files
	files( {
		"../../src/freetype/include/**.h",
		"../../src/freetype/src/**.c"
	} )
	configuration( {
		"../../src/freetype/src/**.c"
	} )
	flags( "ExcludeFromBuild" )
	configuration( {
		"**/autofit.c or " ..
		"**/bdf.c or " ..
		"**/cff.c or " ..
		"**/fgtlcdfil.c or " ..
		"**/ftbbox.c or " ..
		"**/ftbase.c or " ..
		"**/ftbitmap.c or " ..
		"**/ftcache.c or " ..
		"**/ftdebug.c or " ..
		"**/ftfstype.c or " ..
		"**/ftgasp.c or " ..
		"**/ftglyph.c or " ..
		"**/ftgxval.c or " ..
		"**/ftgzip.c or " ..
		"**/ftinit.c or " ..
		"**/ftlzw.c or " ..
		"**/ftmm.c or " ..
		"**/ftotval.c or " ..
		"**/ftpatent.c or " ..
		"**/ftpfr.c or " ..
		"**/ftstroke.c or " ..
		"**/ftsynth.c or " ..
		"**/ftsystem.c or " ..
		"**/fttype1.c or " ..
		"**/ftwinfnt.c or " ..
		"**/ftxf86.c or " ..
		"**/pcf.c or " ..
		"**/pfr.c or " ..
		"**/psaux.c or " ..
		"**/pshinter.c or " ..
		"**/psmodule.c or " ..
		"**/raster.c or " ..
		"**/sfnt.c or " ..
		"**/smooth.c or " ..
		"**/truetype.c or " ..
		"**/type1.c or " ..
		"**/type1cid.c or " ..
		"**/type42.c or " ..
		"**/winfnt.c"
	} )
	removeflags( "ExcludeFromBuild" )
	configuration( "*" )
