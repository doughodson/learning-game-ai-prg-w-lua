solution( "Learning Game AI Programming" )
	location( "../" .. _ACTION )
	configurations( { "Debug", "Release" } )
	platforms( { "x32", "x64" } )

-- configuration shared between all projects
	language( "C++" )
	includedirs( { "../../src/%{prj.name}/include/" } )
    warnings( "Extra" )
	flags( {
		"FatalWarnings",
		"MultiProcessorCompile",
		"NoEditAndContinue",
		"NoImplicitLink",
		"NoImportLib",
		"NoIncrementalLink",
		"NoMinimalRebuild",
		"StaticRuntime"
	} )
	vpaths( {
		["include/*"] = {
			"../../src/%{prj.name}/include/**.h",
			"../../src/%{prj.name}/include/**.hpp"
		},
		["script/*"] = {
			"../../src/%{prj.name}/script/**.lua"
		},
		["src/*"] = {
			"../../src/%{prj.name}/src/**.c",
			"../../src/%{prj.name}/src/**.cpp"
		}
	} )

-- platform(windows/linux) specific configurations
	configuration( "windows" )
-- do not cause linker warnings to be fatal
--	linkoptions ( { "/WX-" } )
	configuration( "linux" )
	configuration( "*" )

-- solution configuration specific configurations
	configuration( "Debug" )
-- debug symbols
		flags( { "Symbols" } )
	configuration( "Release" )
-- optimized build
		optimize( "Full" )
		flags( { "Symbols" } )
		defines( { "NDEBUG" } )
	configuration( "*" )

-- platform configurations
	configuration( "x32" )
		vectorextensions( "SSE" )
		vectorextensions( "SSE2" )
-- build for x86-32bit machines
		linkoptions( "/MACHINE:X86" )
	configuration( "x64" )
-- build for x86-64bit machine
		linkoptions( "/MACHINE:X64" )
	configuration( "*" )

-- configurations for executables
	configuration( { "ConsoleApp or WindowedApp", "x32", "Debug" } )
		targetdir( "../../bin/x32/debug" )
		libdirs( { "../../lib/x32/debug" } )
	configuration( { "ConsoleApp or WindowedApp", "x32", "Release" } )
		targetdir( "../../bin/x32/release" )
		libdirs( { "../../lib/x32/release" } )
	configuration( { "ConsoleApp or WindowedApp", "x64", "Debug" } )
		targetdir( "../../bin/x64/debug" )
		libdirs( { "../../lib/x64/debug" } )
	configuration( { "ConsoleApp or WindowedApp", "x64", "Release" } )
		targetdir( "../../bin/x64/release" )
		libdirs( { "../../lib/x64/release" } )
	configuration( "*" )

-- configurations for static libraries
	configuration( { "StaticLib", "x32", "Debug" } )
		targetdir( "../../lib/x32/debug" )
	configuration( { "StaticLib", "x32", "Release" } )
		targetdir( "../../lib/x32/release" )
	configuration( { "StaticLib", "x64", "Debug" } )
		targetdir( "../../lib/x64/debug" )
	configuration( { "StaticLib", "x64", "Release" } )
		targetdir( "../../lib/x64/release" )
	configuration( "*")


	-- Creates all sandbox projects defined in the "SandboxDemos.lua" file.
	group( "Demos" )
	dofile "demos.lua"

	group( "Framework" )
    dofile("framework.lua")

	CreateSandboxProject( "demo_framework_test" );
		kind( "ConsoleApp" );
		-- postbuildcommands( { "cd \"$(OutDir)\" & \"$(TargetPath)\"" } );

--------------------------------------------------------------------------------
-- Open source library definitions
--------------------------------------------------------------------------------
	group( "Libraries" )
    dofile("libraries.lua")
