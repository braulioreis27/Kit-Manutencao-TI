:INSTALANDO .NET FRAMEWORK
@echo off
cls
color 4f
title INSTALANDO .NET FRAMEWORK....
echo
Dism /online /Enable-Feature /FeatureName:"NetFx3"
Dism /online /Enable-Feature /FeatureName:"NetFx4"
echo
pause