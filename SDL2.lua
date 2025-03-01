SDL_DIR="SDL2-2.0.14/"

project "SDL2main"
do
    --kind "ConsoleApp"
    --kind "WindowedApp"
    --kind "SharedLib"
    kind "StaticLib"
    language "C"
    --language "C++"
    vectorextensions "SSE"  -- Necessary to run x32

    files {
        SDL_DIR.."src/main/windows/SDL_windows_main.c",
    }
    removefiles { "include/SDL_config*.h" }
    includedirs {
        SDL_DIR.."src/hidapi/hidapi",
        SDL_DIR.."build",
        SDL_DIR.."include",
        SDL_DIR.."src/video/khronos",
    }
    defines {
        "WIN32",
        "_WINDOWS",
        "USING_GENERATED_CONFIG_H",
    }
    libdirs {}
    links {}
end

project "SDL2"
do
    --kind "ConsoleApp"
    --kind "WindowedApp"
    --kind "StaticLib"
    kind "SharedLib"
    language "C"
    --language "C++"
    vectorextensions "SSE"  -- Necessary to run x32

    flags{
        --"WinMain"
        --"Unicode",
        --"StaticRuntime",
    }
    files {
        SDL_DIR.."src/SDL.c",
        SDL_DIR.."src/SDL_assert.c",
        SDL_DIR.."src/SDL_dataqueue.c",
        SDL_DIR.."src/SDL_error.c",
        SDL_DIR.."src/SDL_hints.c",
        SDL_DIR.."src/SDL_log.c",
        SDL_DIR.."src/atomic/SDL_atomic.c",
        SDL_DIR.."src/atomic/SDL_spinlock.c",
        SDL_DIR.."src/audio/SDL_audio.c",
        SDL_DIR.."src/audio/SDL_audiocvt.c",
        SDL_DIR.."src/audio/SDL_audiodev.c",
        SDL_DIR.."src/audio/SDL_audiotypecvt.c",
        SDL_DIR.."src/audio/SDL_mixer.c",
        SDL_DIR.."src/audio/SDL_wave.c",
        SDL_DIR.."src/cpuinfo/SDL_cpuinfo.c",
        SDL_DIR.."src/dynapi/SDL_dynapi.c",
        SDL_DIR.."src/events/SDL_clipboardevents.c",
        SDL_DIR.."src/events/SDL_displayevents.c",
        SDL_DIR.."src/events/SDL_dropevents.c",
        SDL_DIR.."src/events/SDL_events.c",
        SDL_DIR.."src/events/SDL_gesture.c",
        SDL_DIR.."src/events/SDL_keyboard.c",
        SDL_DIR.."src/events/SDL_mouse.c",
        SDL_DIR.."src/events/SDL_quit.c",
        SDL_DIR.."src/events/SDL_touch.c",
        SDL_DIR.."src/events/SDL_windowevents.c",
        SDL_DIR.."src/file/SDL_rwops.c",
        SDL_DIR.."src/haptic/SDL_haptic.c",
        SDL_DIR.."src/libm/e_atan2.c",
        SDL_DIR.."src/libm/e_exp.c",
        SDL_DIR.."src/libm/e_fmod.c",
        SDL_DIR.."src/libm/e_log.c",
        SDL_DIR.."src/libm/e_log10.c",
        SDL_DIR.."src/libm/e_pow.c",
        SDL_DIR.."src/libm/e_rem_pio2.c",
        SDL_DIR.."src/libm/e_sqrt.c",
        SDL_DIR.."src/libm/k_cos.c",
        SDL_DIR.."src/libm/k_rem_pio2.c",
        SDL_DIR.."src/libm/k_sin.c",
        SDL_DIR.."src/libm/k_tan.c",
        SDL_DIR.."src/libm/s_atan.c",
        SDL_DIR.."src/libm/s_copysign.c",
        SDL_DIR.."src/libm/s_cos.c",
        SDL_DIR.."src/libm/s_fabs.c",
        SDL_DIR.."src/libm/s_floor.c",
        SDL_DIR.."src/libm/s_scalbn.c",
        SDL_DIR.."src/libm/s_sin.c",
        SDL_DIR.."src/libm/s_tan.c",
        SDL_DIR.."src/locale/SDL_locale.c",
        SDL_DIR.."src/misc/SDL_url.c",
        SDL_DIR.."src/power/SDL_power.c",
        SDL_DIR.."src/render/SDL_d3dmath.c",
        SDL_DIR.."src/render/SDL_render.c",
        SDL_DIR.."src/render/SDL_yuv_sw.c",
        SDL_DIR.."src/render/direct3d/SDL_render_d3d.c",
        SDL_DIR.."src/render/direct3d/SDL_shaders_d3d.c",
        SDL_DIR.."src/render/direct3d11/SDL_render_d3d11.c",
        SDL_DIR.."src/render/direct3d11/SDL_shaders_d3d11.c",
        SDL_DIR.."src/render/opengl/SDL_render_gl.c",
        SDL_DIR.."src/render/opengl/SDL_shaders_gl.c",
        SDL_DIR.."src/render/opengles/SDL_render_gles.c",
        SDL_DIR.."src/render/opengles2/SDL_render_gles2.c",
        SDL_DIR.."src/render/opengles2/SDL_shaders_gles2.c",
        SDL_DIR.."src/render/psp/SDL_render_psp.c",
        SDL_DIR.."src/render/software/SDL_blendfillrect.c",
        SDL_DIR.."src/render/software/SDL_blendline.c",
        SDL_DIR.."src/render/software/SDL_blendpoint.c",
        SDL_DIR.."src/render/software/SDL_drawline.c",
        SDL_DIR.."src/render/software/SDL_drawpoint.c",
        SDL_DIR.."src/render/software/SDL_render_sw.c",
        SDL_DIR.."src/render/software/SDL_rotate.c",
        SDL_DIR.."src/sensor/SDL_sensor.c",
        SDL_DIR.."src/stdlib/SDL_crc32.c",
        SDL_DIR.."src/stdlib/SDL_getenv.c",
        SDL_DIR.."src/stdlib/SDL_iconv.c",
        SDL_DIR.."src/stdlib/SDL_malloc.c",
        SDL_DIR.."src/stdlib/SDL_qsort.c",
        SDL_DIR.."src/stdlib/SDL_stdlib.c",
        SDL_DIR.."src/stdlib/SDL_string.c",
        SDL_DIR.."src/stdlib/SDL_strtokr.c",
        SDL_DIR.."src/thread/SDL_thread.c",
        SDL_DIR.."src/timer/SDL_timer.c",
        SDL_DIR.."src/video/SDL_RLEaccel.c",
        SDL_DIR.."src/video/SDL_blit.c",
        SDL_DIR.."src/video/SDL_blit_0.c",
        SDL_DIR.."src/video/SDL_blit_1.c",
        SDL_DIR.."src/video/SDL_blit_A.c",
        SDL_DIR.."src/video/SDL_blit_N.c",
        SDL_DIR.."src/video/SDL_blit_auto.c",
        SDL_DIR.."src/video/SDL_blit_copy.c",
        SDL_DIR.."src/video/SDL_blit_slow.c",
        SDL_DIR.."src/video/SDL_bmp.c",
        SDL_DIR.."src/video/SDL_clipboard.c",
        SDL_DIR.."src/video/SDL_egl.c",
        SDL_DIR.."src/video/SDL_fillrect.c",
        SDL_DIR.."src/video/SDL_pixels.c",
        SDL_DIR.."src/video/SDL_rect.c",
        SDL_DIR.."src/video/SDL_shape.c",
        SDL_DIR.."src/video/SDL_stretch.c",
        SDL_DIR.."src/video/SDL_surface.c",
        SDL_DIR.."src/video/SDL_video.c",
        SDL_DIR.."src/video/SDL_vulkan_utils.c",
        SDL_DIR.."src/video/SDL_yuv.c",
        SDL_DIR.."src/video/yuv2rgb/yuv_rgb.c",
        SDL_DIR.."src/joystick/SDL_gamecontroller.c",
        SDL_DIR.."src/joystick/SDL_joystick.c",
        SDL_DIR.."src/audio/dummy/SDL_dummyaudio.c",
        SDL_DIR.."src/audio/disk/SDL_diskaudio.c",
        SDL_DIR.."src/joystick/virtual/SDL_virtualjoystick.c",
        SDL_DIR.."src/video/dummy/SDL_nullevents.c",
        SDL_DIR.."src/video/dummy/SDL_nullframebuffer.c",
        SDL_DIR.."src/video/dummy/SDL_nullvideo.c",
        SDL_DIR.."src/core/windows/SDL_hid.c",
        SDL_DIR.."src/core/windows/SDL_windows.c",
        SDL_DIR.."src/core/windows/SDL_xinput.c",
        SDL_DIR.."src/misc/windows/SDL_sysurl.c",
        SDL_DIR.."src/audio/winmm/SDL_winmm.c",
        SDL_DIR.."src/audio/directsound/SDL_directsound.c",
        SDL_DIR.."src/audio/wasapi/SDL_wasapi.c",
        SDL_DIR.."src/audio/wasapi/SDL_wasapi_win32.c",
        SDL_DIR.."src/video/windows/SDL_windowsclipboard.c",
        SDL_DIR.."src/video/windows/SDL_windowsevents.c",
        SDL_DIR.."src/video/windows/SDL_windowsframebuffer.c",
        SDL_DIR.."src/video/windows/SDL_windowskeyboard.c",
        SDL_DIR.."src/video/windows/SDL_windowsmessagebox.c",
        SDL_DIR.."src/video/windows/SDL_windowsmodes.c",
        SDL_DIR.."src/video/windows/SDL_windowsmouse.c",
        SDL_DIR.."src/video/windows/SDL_windowsopengl.c",
        SDL_DIR.."src/video/windows/SDL_windowsopengles.c",
        SDL_DIR.."src/video/windows/SDL_windowsshape.c",
        SDL_DIR.."src/video/windows/SDL_windowsvideo.c",
        SDL_DIR.."src/video/windows/SDL_windowsvulkan.c",
        SDL_DIR.."src/video/windows/SDL_windowswindow.c",
        SDL_DIR.."src/thread/windows/SDL_sysmutex.c",
        SDL_DIR.."src/thread/windows/SDL_syssem.c",
        SDL_DIR.."src/thread/windows/SDL_systhread.c",
        SDL_DIR.."src/thread/windows/SDL_systls.c",
        SDL_DIR.."src/thread/generic/SDL_syscond.c",
        SDL_DIR.."src/sensor/windows/SDL_windowssensor.c",
        SDL_DIR.."src/power/windows/SDL_syspower.c",
        SDL_DIR.."src/locale/windows/SDL_syslocale.c",
        SDL_DIR.."src/filesystem/windows/SDL_sysfilesystem.c",
        SDL_DIR.."src/timer/windows/SDL_systimer.c",
        SDL_DIR.."src/loadso/windows/SDL_sysloadso.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_gamecube.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_ps4.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_ps5.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_rumble.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_steam.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_switch.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_xbox360.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_xbox360w.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapi_xboxone.c",
        SDL_DIR.."src/joystick/hidapi/SDL_hidapijoystick.c",
        SDL_DIR.."src/hidapi/windows/hid.c",
        SDL_DIR.."src/joystick/windows/SDL_dinputjoystick.c",
        SDL_DIR.."src/joystick/windows/SDL_mmjoystick.c",
        SDL_DIR.."src/joystick/windows/SDL_rawinputjoystick.c",
        SDL_DIR.."src/joystick/windows/SDL_windows_gaming_input.c",
        SDL_DIR.."src/joystick/windows/SDL_windowsjoystick.c",
        SDL_DIR.."src/joystick/windows/SDL_xinputjoystick.c",
        SDL_DIR.."src/haptic/windows/SDL_dinputhaptic.c",
        SDL_DIR.."src/haptic/windows/SDL_windowshaptic.c",
        SDL_DIR.."src/haptic/windows/SDL_xinputhaptic.c",
        SDL_DIR.."src/main/windows/version.rc",
    }
    removefiles { "include/SDL_config*.h" }
    includedirs {
        SDL_DIR.."src/hidapi/hidapi",
        SDL_DIR.."build",
        SDL_DIR.."include",
        SDL_DIR.."src/video/khronos",
    }
    defines {
        "WIN32",
        "_WINDOWS",
        "USING_GENERATED_CONFIG_H",
        "DLL_EXPORT",
        --"SDL_JOYSTICK_DISABLED",
        --"__STDC_WANT_LIB_EXT1__=1",
    }
    if (string.sub(_ACTION, 1, 2) == "vs") then
        buildoptions { "/wd4996" }
        links {
            "vcruntime",
            "ucrtd",
        }
    end

    libdirs {}
    links {
        "winmm",
        "imm32",
        "version",
        "kernel32",
        "gdi32",
        "ole32",
        "oleaut32",
        "setupapi",
    }
end
