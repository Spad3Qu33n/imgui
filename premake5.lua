project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
    staticruntime "on"

	targetdir ("/%{prj.name}/Binary/" .. outputdir)
	objdir ("%{prj.name}/Intermediate/" .. outputdir)

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "debug"
		symbols "on"

    filter "configurations:Release"
		runtime "release"
		optimize "on"