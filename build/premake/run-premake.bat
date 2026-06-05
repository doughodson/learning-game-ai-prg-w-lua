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
rem premake5-dev-8693as0947d1 --os=windows --file=premake.lua vs2008 %ARGUMENTS%
rem premake5-dev-8693as0947d1 --os=windows --file=premake.lua vs2010 %ARGUMENTS%
rem premake5-dev-8693as0947d1 --os=windows --file=premake.lua vs2012 %ARGUMENTS%
premake5-dev-8693as0947d1 --os=windows --file=premake.lua vs2013
