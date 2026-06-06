rem delete old solution/workspace files
rem
rmdir /S /Q ..\gmake
rmdir /S /Q ..\vs2008
rmdir /S /Q ..\vs2010
rmdir /S /Q ..\vs2012
rmdir /S /Q ..\vs2013
rmdir /S /Q ..\obj
rem
rem delete old compiled libraries
rem
rmdir /S /Q ..\..\lib
rem
rem create new solution/workspace files
rem
rem premake5-dev-8693as0947d1 --os=windows --file=learning-game-ai-prg-w-lua-new.lua vs2008
rem premake5-dev-8693as0947d1 --os=windows --file=learning-game-ai-prg-w-lua-new.lua vs2010
rem premake5-dev-8693as0947d1 --os=windows --file=learning-game-ai-prg-w-lua-new.lua vs2012
premake5-beta8.exe --os=windows --file=learning-game-ai-prg-w-lua-new.lua vs2013
