# Build script of Windows's SDL2 sets
1. SDL2-2.0.14
2. SDL2_gfx-1.0.4
3. SDL2_image-2.0.5
4. SDL2_ttf-2.0.15
5. SDL2_mixer-2.0.4
using Windows10(64bit) + Anaconda Python3.9(64bit)


# Build tools
* Run download.py (Python3.5 above)
* VisualStudio 2015/2017/2019
 or
* MingW (32bit/64bit)


# History
* Fork on
* SDL2 families to latest
* SDL2_mixer added
* MingW supported


# ToDo
* [o]libpng
* [ ]libjpeg
* [ ]libtiff
* [ ]SDL2_net


# How to build
```
> python download.py

* VisualStudio
> premake5_vs2015.bat
> start build/SDL2.sln, don't forget to "Retarget Projects" before build

* MingW/MSYS
> premake5_mingw.bat
> under MingW64 shell$ cd build && make config=debug_win64 -j6
> under MingW32 shell$ cd build && make config=debug_win32 -j6
```

