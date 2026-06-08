
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

local function Create_Demo( projectName )
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
end

for index=1, #SandboxDemos do
	Create_Demo( SandboxDemos[index] );
end
