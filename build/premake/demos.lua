SandboxDemos = {
	-- Sandbox showing all the available assets.
	"chapter_1_introduction",
	
	-- Steering behavior examples.
	"chapter_2_movement",
	
	-- Animation state machine examples.
	"chapter_3_animation",
	
	-- Decisions and animation control techniques.
	"chapter_4_mind_body",
	
	-- Navigation mesh generation and path finding.
	"chapter_5_navigation",
	
	-- Decision making examples.
	"chapter_6_decision_making",
	
	-- Knowledge representation.
	"chapter_7_knowledge",
	
	-- Sensory perception.
	"chapter_8_perception",
	
	-- Tactics and spacial analysis.
	"chapter_9_tactics",

	"my_sandbox"
};

-- All demo projects share the same configuration.
function CreateSandboxProject( projectName )
	project( projectName )
		kind( "WindowedApp" )
		location( "../" .. _ACTION .. "/projects/%{prj.name}" )
		debugdir( "$(OutDir)" )
-- increase precompiled header allocation limit
		buildoptions( { "/Zm256" } )
-- link against all other libraries
		links( {
			"bullet_collision",
			"bullet_dynamics",
			"bullet_linearmath",
			"demo_framework",
			"detour",
			"freeimage",
			"freetype",
			"gorilla_audio",
			"libjpeg",
			"libogg",
			"libopenjpeg",
			"libpng",
			"libraw",
			"libtiff4",
			"libvorbis",
			"lua",
			"ogre3d",
			"ogre3d_direct3d9",
			"ogre3d_gorilla",
			"ogre3d_particlefx",
			"ogre3d_procedural",
			"ois",
			"openexr",
			"opensteer",
			"recast",
			"zlib",
			"zzip"
		} )
		configuration( { "windows" } )
-- add the directx include directory
			buildoptions( { "/I \"$(DXSDK_DIR)/Include/\"" } )
-- link against directx libraries
			links( {
				"d3d9",
				"dinput8",
				"dxguid",
				"d3dx9",
				"DxErr"
			} )
-- static linking against ogre requires linking against ogre's resource file
			linkoptions( "OgreWin32Resources.res" )
		configuration( { "windows", "x32", "Debug" } )
			libdirs( {
				"\"../" .. _ACTION .. "/projects/ogre3d/obj/x32/Debug\"",
				"\"$(DXSDK_DIR)/Lib/x86\"",
			} )
		configuration( { "windows", "x32", "Release" } )
			libdirs( {
				"\"../" .. _ACTION .. "/projects/ogre3d/obj/x32/Release\"",
				"\"$(DXSDK_DIR)/Lib/x86\"",
			} )
		configuration( { "windows", "x64", "Debug" } )
			libdirs( {
				"\"../" .. _ACTION .. "/projects/ogre3d/obj/x64/Debug\"",
				"\"$(DXSDK_DIR)/Lib/x64\""
			} )
		configuration( { "windows", "x64", "Release" } )
			libdirs( {
				"\"../" .. _ACTION .. "/projects/ogre3d/obj/x64/Release\"",
				"\"$(DXSDK_DIR)/Lib/x64\""
			} )
		configuration( "*" )
		includedirs( {
			"../../src/",
			"../../src/bullet_collision/include/",
			"../../src/bullet_dynamics/include/",
			"../../src/bullet_linearmath/include/",
			"../../src/demo_framework/include",
			"../../src/ois/include/",
			"../../src/ogre3d/include/",
			"../../src/ogre3d_direct3d9/include/"
		} )
		-- TODO(David Young 6-8-13): the current premake-dev doesn't support
		-- %{prj.name} within "files"
		files( {
			"../../src/" .. projectName .. "/include/**.h",
			"../../src/" .. projectName .. "/src/**.cpp",
			"../../src/" .. projectName .. "/script/**.lua"
		} )
end

for index=1, #SandboxDemos do
	CreateSandboxProject( SandboxDemos[index] );
end
