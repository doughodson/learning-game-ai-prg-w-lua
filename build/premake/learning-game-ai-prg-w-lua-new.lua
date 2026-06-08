
workspace "Learning Game AI Programming"
	-- configuration shared between all projects
	location( "../" .. _ACTION )
	configurations{ "Debug", "Release" }
	language( "C++" )
	includedirs( { "../../src/%{prj.name}/include/" } )

	group( "Demos" )
	dofile "demos-new.lua"

	group( "Framework" )
	dofile "framework-new.lua"

	group( "Libraries" )
	dofile "libraries-new.lua"
