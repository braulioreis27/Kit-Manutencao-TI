:RESTARAÇÃO DE DRIVERS 
@echo off
cls
color 4f
title RESTARACAO DE DRIVERS....
echo
cd C:\BKP_DRIVERS
powershell.exe -Command "dism /online /Add-Driver /Driver:C:\BKP_DRIVERS /Recurse"
exit