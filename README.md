# Build script of Windows's SDL2 sets
1. SDL2-2.0.14
2. SDL2_gfx-1.0.4
3. SDL2_image-2.0.5
4. SDL2_ttf-2.0.15
5. SDL2_mixer-2.0.4
using Windows10(64bit) + Anaconda Python3.9(64bit)

# Build tools
* download.py(Python3)
* VisualStudio 2015/2017/2019
 or
* MingW 32bit/64bit

# History
* Fork on
* SDL2 families to latest
* SDL2_mixer added
* MingW supported

# ToDo
* [o]libpng
* [ ]libjpeg
* [ ]libtiff

# How to build

```
> python download.py
> premake5_vs2015.bat
> start build/SDL2.sln
```

