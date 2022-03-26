:REALIZANDO BACKUP DRIVERS
@echo off
cls
color 4f
title REALIZANDO BACKUP DRIVERS....
mkdir c:\BKP_DRIVERS
powershell.exe -Command "dism /online /export-driver /destination:C:\BKP_DRIVERS"
pause