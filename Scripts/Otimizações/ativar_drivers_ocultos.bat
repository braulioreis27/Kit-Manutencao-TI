:Ativando Drivers Ocultos
@echo off
cls
color 4f
title ATIVANDO DRIVERS OCULTOS....
SET DEVMGR_SHOW_NONPRESENT_DEVICES=1
start devmgmt.msc
pause