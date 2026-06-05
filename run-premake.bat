@echo off
set SCRIPT_DIRECTORY=%~dp0
set CURRENT_DIRECTORY=%cd%
set ARGUMENTS=%*

cd /d %SCRIPT_DIRECTORY%
rmdir /S/Q build
rmdir /S/Q lib

cd bin
del /S/Q *.log *.pdb *.exe *.idb

cd ..

echo on
rem tools\premake\premake5-dev-8693as0947d1 --os=windows --file=premake/premake.lua vs2008 %ARGUMENTS%
rem tools\premake\premake5-dev-8693as0947d1 --os=windows --file=premake/premake.lua vs2010 %ARGUMENTS%
rem tools\premake\premake5-dev-8693as0947d1 --os=windows --file=premake/premake.lua vs2012 %ARGUMENTS%
tools\premake\premake5-dev-8693as0947d1 --os=windows --file=premake/premake.lua vs2013 %ARGUMENTS%

cd /d %CURRENT_DIRECTORY%
