SDL2_gfx_DIR="SDL2_gfx-1.0.4/"

project "SDL2_gfx"
do
    --kind "ConsoleApp"
    --kind "WindowedApp"
    --kind "StaticLib"
    kind "SharedLib"
    language "C"
    --language "C++"

    flags{
        --"WinMain"
        --"Unicode",
        --"StaticRuntime",
    }
    files {
        SDL2_gfx_DIR.."*.c",
    }
    includedirs {
        SDL_DIR .. "include",
    }
    defines {
        "WIN32",
        "_WINDOWS",
        "DLL_EXPORT",
        "_USRDLL",
    }
    if (string.sub(_ACTION, 1, 2) == "vs") then
        buildoptions { "/wd4996" }
    end
    libdirs {}
    links {
        "SDL2",
    }
end
