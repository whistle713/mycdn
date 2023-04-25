@echo off 
::下面打开系统延时
setlocal enabledelayedexpansion
set /a b=0
::下面按时间顺序显示当前文件夹下的所有文件名
dir /b/od
::给你反悔时间
pause
::执行
for /f "delims=" %%f in ('dir /b/od *.*') do (
  if not "%%f"=="%~nx0" (
           set /a b+=1 
           ren "%%f" "!b!%%~xf"
           echo. !b!%%~xf
)
)
pause
