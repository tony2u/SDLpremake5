--require "codeblocks"
SDL_Engine_DIR="SDL_Engine/"

project "SDL_Engine"
   --kind "StaticLib"
   kind "SharedLib"
   --language "C"
   language "C++"
   characterset ("Unicode")

   files {
      SDL_Engine_DIR .. "SDL_Engine.h", 
      SDL_Engine_DIR .. "SDL_Engine/**.h",
      SDL_Engine_DIR .. "SDL_Engine/**.cpp", 
      SDL_Engine_DIR .. "SDL_Engine/**.c"
   }
   --removefiles { SDL_DIR .. "include/SDL_config*.h" }

   --filter "system:Windows"
   --targetdir "lib/%{cfg.buildcfg}"
   includedirs {
      ZLIB_DIR, 
      SDL_DIR .. "build",
      SDL_DIR .. "include",
      SDL2_image_DIR,
      SDL2_mixer_DIR,
      SDL2_ttf_DIR,
      SDL2_gfx_DIR,
   }
   libdirs {}
   defines { "_UNICODE","UNICODE" }
   links {
      "zlib",
      "SDL2", 
      "SDL2main", 
      "SDL2_image", 
      "SDL2_mixer", 
      "SDL2_ttf", 
      "SDL2_gfx"
   }
