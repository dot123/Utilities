@echo off
for /f "delims=" %%a in ('dir /ad/b') do (
echo %cd%\%%a
TexturePacker  --smart-update --enable-rotation --sheet ./atlas/%%a.png --data ./atlas/%%a.plist --allow-free-size --opt RGBA8888 --max-size 2048 --format cocos2d %%a
)

pause