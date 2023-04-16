@echo off
title Source Downloader for Windows ^| by aritz331_ for Aritz's Utils - an aritz331_ original series
set "_game=Counter-Strike 2"
set "_files=CS2.7z"
set "_end=008"
set "_url=https://github.com/aritz331/cs2/releases/latest/download/%_files%.[001-%_end%]"
set "_dir=cs2dl"
title %_game% Downloader for Windows ^| by aritz331_ for Aritz's Utils - an aritz331_ original series

cd %~dp0
md %_dir%

md %temp%\%_dir%
del /s /f /q %temp%\%_dir%
cd %temp%\%_dir%

curl -kLOs "https://github.com/aritz331/stuff/raw/main/7z/{7z.exe,7z.dll,7-zip.dll,7-zip32.dll}"

cls

echo Downloading %_game%...
curl -#kLO "%_url%"
echo.

echo Extracting %_game%...
7z x %_files%.* -o%~dp0%_dir%

cls

echo The game has been extracted, please run it from the %_dir% folder.
del /s /f /q %temp%\%_dir%
rd /s %temp%\%_dir%
