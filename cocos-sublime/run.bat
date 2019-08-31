@echo off  
if not exist %COCOS_CONSOLE_ROOT% (  
echo 未定义 COCOS_CONSOLE_ROOT 环境变量！  
pause  
)
taskkill /f /t /im HelloLua.exe  
call "./tools/build.bat"  
call "./simulator/win32/HelloLua.exe" 

