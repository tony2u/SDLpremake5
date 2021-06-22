SDL2_mixer_DIR="SDL2_mixer-2.0.4/"

project "native_midi"
do
    --kind "ConsoleApp"
    --kind "WindowedApp"
    --kind "SharedLib"
    kind "StaticLib"
    language "C"
    --language "C++"

    flags{
        --"WinMain"
        --"Unicode",
        --"StaticRuntime",
    }
    files {
        SDL2_mixer_DIR .. "native_midi/native_midi.h",
        SDL2_mixer_DIR .. "native_midi/native_midi_common.h",
        SDL2_mixer_DIR .. "native_midi/native_midi_common.c",
        SDL2_mixer_DIR .. "native_midi/native_midi_win32.c",
    }
    includedirs {
        SDL_DIR .. "build",
        SDL_DIR .. "include",
        SDL2_mixer_DIR .. "native_midi",
    }
    defines {
        "WIN32",
        "_WINDOWS",
    }
    buildoptions {}
    libdirs {}
    links {}
end

project "timidity"
do
    --kind "ConsoleApp"
    --kind "WindowedApp"
    --kind "SharedLib"
    kind "StaticLib"
    language "C"
    --language "C++"

    flags{
        --"WinMain"
        --"Unicode",
        --"StaticRuntime",
    }
    files {
        SDL2_mixer_DIR .. "timidity/common.h",
        SDL2_mixer_DIR .. "timidity/instrum.h",
        SDL2_mixer_DIR .. "timidity/mix.h",
        SDL2_mixer_DIR .. "timidity/options.h",
        SDL2_mixer_DIR .. "timidity/output.h",
        SDL2_mixer_DIR .. "timidity/playmidi.h",
        SDL2_mixer_DIR .. "timidity/readmidi.h",
        SDL2_mixer_DIR .. "timidity/resample.h",
        SDL2_mixer_DIR .. "timidity/tables.h",
        SDL2_mixer_DIR .. "timidity/timidity.h",
        SDL2_mixer_DIR .. "timidity/common.c",
        SDL2_mixer_DIR .. "timidity/instrum.c",
        SDL2_mixer_DIR .. "timidity/mix.c",
        SDL2_mixer_DIR .. "timidity/output.c",
        SDL2_mixer_DIR .. "timidity/playmidi.c",
        SDL2_mixer_DIR .. "timidity/readmidi.c",
        SDL2_mixer_DIR .. "timidity/resample.c",
        SDL2_mixer_DIR .. "timidity/tables.c",
        SDL2_mixer_DIR .. "timidity/timidity.c",
    }
    includedirs {
        SDL_DIR .. "build",
        SDL_DIR .. "include",
        SDL2_mixer_DIR .. "timidity",
    }
    defines {
        "WIN32",
        "_WINDOWS",
        "_CRT_SECURE_NO_WARNINGS",
    }
    buildoptions {}
    libdirs {}
    links {}
end

project "SDL2_mixer"
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
        SDL2_mixer_DIR.."effects_internal.h",
        SDL2_mixer_DIR.."load_aiff.h",
        SDL2_mixer_DIR.."load_voc.h",
        SDL2_mixer_DIR.."mixer.h",
        SDL2_mixer_DIR.."music.h",
        SDL2_mixer_DIR.."music_cmd.h",
        SDL2_mixer_DIR.."music_flac.h",
        SDL2_mixer_DIR.."music_fluidsynth.h",
        SDL2_mixer_DIR.."music_mad.h",
        SDL2_mixer_DIR.."music_mikmod.h",
        SDL2_mixer_DIR.."music_modplug.h",
        SDL2_mixer_DIR.."music_mpg123.h",
        SDL2_mixer_DIR.."music_nativemidi.h",
        SDL2_mixer_DIR.."music_ogg.h",
        SDL2_mixer_DIR.."music_opus.h",
        SDL2_mixer_DIR.."music_timidity.h",
        SDL2_mixer_DIR.."music_wav.h",
        SDL2_mixer_DIR.."SDL_mixer.h",
        SDL2_mixer_DIR.."effects_internal.c",
        SDL2_mixer_DIR.."effect_position.c",
        SDL2_mixer_DIR.."effect_stereoreverse.c",
        SDL2_mixer_DIR.."load_aiff.c",
        SDL2_mixer_DIR.."load_voc.c",
        SDL2_mixer_DIR.."mixer.c",
        SDL2_mixer_DIR.."music.c",
        SDL2_mixer_DIR.."music_cmd.c",
        SDL2_mixer_DIR.."music_flac.c",
        SDL2_mixer_DIR.."music_fluidsynth.c",
        SDL2_mixer_DIR.."music_mad.c",
        SDL2_mixer_DIR.."music_mikmod.c",
        SDL2_mixer_DIR.."music_modplug.c",
        SDL2_mixer_DIR.."music_mpg123.c",
        SDL2_mixer_DIR.."music_nativemidi.c",
        SDL2_mixer_DIR.."music_ogg.c",
        SDL2_mixer_DIR.."music_opus.c",
        SDL2_mixer_DIR.."music_timidity.c",
        SDL2_mixer_DIR.."music_wav.c",
    }
    includedirs {
        SDL_DIR .. "include",
        FREETYPE_DIR .. "include",
        SDL2_mixer_DIR .. "timidity",
        SDL2_mixer_DIR .. "native_midi",
        SDL2_mixer_DIR .. "VisualC/external/include",
    }
    defines {
        "WIN32",
        "_WINDOWS",
        "OGG_DYNAMIC=\"libvorbisfile-3.dll\"",
        "MUSIC_WAV",
        "MUSIC_MOD_MODPLUG",
        "MODPLUG_DYNAMIC=\"libmodplug-1.dll\"",
        "MUSIC_OGG",
        "OGG_DYNAMIC=\"libvorbisfile-3.dll\"",
        "MUSIC_OPUS",
        "OPUS_DYNAMIC=\"libopusfile-0.dll\"",
        "MUSIC_FLAC",
        "FLAC_DYNAMIC=\"libFLAC-8.dll\"",
        "MUSIC_MP3_MPG123",
        "MPG123_DYNAMIC=\"libmpg123-0.dll\"",
        "MUSIC_MID_TIMIDITY",
        "MUSIC_MID_NATIVE",
    }
    if (string.sub(_ACTION, 1, 2) == "vs") then
        buildoptions { "/wd4996" }
    end
    libdirs {}
    links {
        "SDL2",
        "winmm",
        "native_midi",
        "timidity",
    }
end
