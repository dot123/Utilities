@echo on
color 2f
mode con: cols=80 lines=25
@echo ����׼��������Դ�ļ���binĿ¼�����Ժ�...
@echo off
set CUR_DIR=%cd%

set DEST_DIR=%cd%\bin\src
set SRC_DIR=%cd%\src
rd/s/q %DEST_DIR%
if not exist %DEST_DIR% md %DEST_DIR%
xcopy %SRC_DIR% %DEST_DIR% /c/e/q 

@echo ������ϣ�����
pause