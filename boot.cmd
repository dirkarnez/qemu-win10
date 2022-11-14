REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads

SET PATH=^
%DOWNLOADS_DIR%\qemu-w64-setup-20221110;

qemu-img create -f qcow2 my_win10_disk.img 10G
qemu-system-x86_64 -boot d -cdrom LTSB_14393.0_x86_221030.iso -m 2048 -hda my_win10_disk.img
pause