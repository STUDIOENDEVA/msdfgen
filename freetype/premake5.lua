project "Freetype"
    kind "StaticLib"
    language "C"
    staticruntime "Off"
    warnings "off"
    location "%{wks.location}/ProjectFiles"
    targetdir (libdir .. "/%{prj.name}")
    objdir (intdir .. "/%{prj.name}")
    
    files
    {
        "src/autofit/autofit.c",
        "src/bdf/bdf.c",
        "src/cff/cff.c",
        "src/base/ftbase.c",
        "src/base/ftbitmap.c",
        "src/cache/ftcache.c",
        "src/base/ftfstype.c",
        "src/base/ftgasp.c",
        "src/base/ftglyph.c",
        "src/gzip/ftgzip.c",
        "src/base/ftinit.c",
        "src/lzw/ftlzw.c",
        "src/base/ftstroke.c",
        "src/base/ftsystem.c",
        "src/smooth/smooth.c",
        "src/base/ftbbox.c",
        "src/base/ftmm.c",
        "src/base/ftpfr.c",
        "src/base/ftsynth.c",
        "src/base/fttype1.c",
        "src/base/ftwinfnt.c",
        "src/base/ftlcdfil.c",
        "src/base/ftgxval.c",
        "src/base/ftotval.c",
        "src/base/ftpatent.c",
        "src/pcf/pcf.c",
        "src/pfr/pfr.c",
        "src/psaux/psaux.c",
        "src/pshinter/pshinter.c",
        "src/psnames/psmodule.c",
        "src/raster/raster.c",
        "src/sfnt/sfnt.c",
        "src/truetype/truetype.c",
        "src/type1/type1.c",
        "src/cid/type1cid.c",
        "src/type42/type42.c",
        "src/winfonts/winfnt.c",
        "src/sdf/**.h",
        "src/sdf/**.c",
	"src/svg/svg.c",
	"src/svg/svgtypes.h",
	"src/svg/ftsvg.c",
	"src/svg/ftsvg.h",
        "include/ft2build.h",
        "include/freetype/config/ftconfig.h"
    }

    includedirs
    {
        "include"
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS",
        "_LIB",
        "FT2_BUILD_LIBRARY",
	"WIN32",
    }
    
    filter "system:windows"
        systemversion "latest"

        files
        {
            "builds/windows/ftdebug.c"
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
