SDL2_ttf_DIR="SDL2_ttf-2.0.15/"

project "SDL2_ttf"
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
        SDL2_ttf_DIR.."SDL_ttf.c",
    }
    includedirs {
        SDL_DIR .. "include",
        FREETYPE_DIR .. "include",
    }
    defines {
        "WIN32",
        "_WINDOWS",
    }
    if (string.sub(_ACTION, 1, 2) == "vs") then
        buildoptions { "/wd4996" }
    end
    libdirs {}
    links {
        "SDL2",
        "freetype",
    }
end
