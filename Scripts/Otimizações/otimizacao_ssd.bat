:OTIMIZAÇÃO DE SSD 
@echo off
cls
color 4f
title OTIMIZACAO SSD....
echo
REG add "HKCU\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
REG add "HKCU\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
fsutil behavior query disabledeletenotify
exit