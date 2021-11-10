@echo off
set /p pcName="Please enter the name of the computer: "
SystemInfo /s %pcName% | find "Boot Time:"
set /p restartPrompt="Enter y to restart %pcname%:"
if %restartPrompt%==y (shutdown /r /f \\%pcName%) else (echo "have a nice day")