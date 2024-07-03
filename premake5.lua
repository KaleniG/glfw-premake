project "GLFW"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("Bin/" .. outputdir .. "/%{prj.name}")
	objdir ("Bin-Int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/**.h",
		"src/**.h",
		"src/**.c",
    "deps/**.h",
    "deps/**.c"
	}

	filter "system:windows"
		systemversion "latest"

		defines 
		{ 
			"_GLFW_WIN32"
		}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"