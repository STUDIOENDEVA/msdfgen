include "freetype"

project "msdfgen"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"
	location "%{wks.location}/ProjectFiles"	
	targetdir (libdir .. "/%{prj.name}")
	objdir (intdir .. "/%{prj.name}")
	
	files
	{
		"core/**.h",
		"core/**.hpp",
		"core/**.cpp",
		"ext/**.h",
		"ext/**.hpp",
		"ext/**.cpp",
		"lib/**.cpp",
		"include/**.h"
	}

	includedirs
	{
		"include",
		"freetype/include"
	}

	defines
	{
		"MSDFGEN_USE_CPP11"
	}

	links
	{
		"freetype"
	}

	filter "configurations:Debug"
            runtime "Debug"
	    symbols "on"

	filter "configurations:DebugEditor"
            runtime "Debug"
	    symbols "on"

	filter "configurations:Release"
            runtime "Release"
	    optimize "on"

	filter "configurations:ReleaseEditor"
            runtime "Release"
	    optimize "on"

	filter "configurations:Dist"
            runtime "Release"
	    optimize "on"
