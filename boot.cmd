REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads

SET PATH=^
%DOWNLOADS_DIR%\qemu-w64-setup-20221110;

qemu-system-x86_64 -boot c -hda my_win10_disk.img -m 2048
pause