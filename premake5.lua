-- premake5.lua
if (string.sub(_ACTION, 1, 2) == "vs") then
    location "build"
else
    location "build_mingw"
end

solution "SDL2"
do
    configurations { "Debug", "Release" }
    platforms { "Win64", "Win32" }
end

filter "configurations:Debug"
do
    defines { "DEBUG", "_DEBUG" }
    symbols "On"
end

filter "configurations:Release"
do
    defines { "NDEBUG" }
    optimize "On"
end

filter "platforms:Win32"
do
    system "windows"
    architecture "x86"
end

filter "platforms:Win64"
do
    system "windows"
    architecture "x86_64"
end

if (_ACTION == "vs2015") then
    toolset "msc-v140"
elseif (_ACTION == "vs2017") then
    toolset "msc-v141"
elseif (_ACTION == "vs2019") then
    toolset "msc-v142"
end

if (string.sub(_ACTION, 1, 2) == "vs") then
    filter {"platforms:Win32", "configurations:Debug" }
        targetdir "build/lib/%{cfg.architecture}/Debug"
    filter {"platforms:Win32", "configurations:Release" }
        targetdir "build/lib/%{cfg.architecture}/Release"
    filter {"platforms:Win64", "configurations:Debug" }
        targetdir "build/lib/%{cfg.architecture}/Debug"
    filter {"platforms:Win64", "configurations:Release" }
        targetdir "build/lib/%{cfg.architecture}/Release"
else
    filter {"platforms:Win32", "configurations:Debug" }
        targetdir "build_mingw/lib/%{cfg.architecture}/Debug"
    filter {"platforms:Win32", "configurations:Release" }
        targetdir "build_mingw/lib/%{cfg.architecture}/Release"
    filter {"platforms:Win64", "configurations:Debug" }
        targetdir "build_mingw/lib/%{cfg.architecture}/Debug"
    filter {"platforms:Win64", "configurations:Release" }
        targetdir "build_mingw/lib/%{cfg.architecture}/Release"
end

dofile "zlib.lua"
dofile "freetype.lua"
dofile "libpng.lua"
dofile "SDL2.lua"
dofile "SDL2_gfx.lua"
dofile "SDL2_image.lua"
dofile "SDL2_ttf.lua"
dofile "SDL2_mixer.lua"
dofile "SDL_Engine.lua"
