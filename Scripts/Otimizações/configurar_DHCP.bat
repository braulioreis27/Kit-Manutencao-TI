:CONFIGURANDO DHCP
@echo off
cls
color 4f
title CONFIGURANDO DHCP....
echo
netsh interface ip set address "Local Area Connection" dhcp
netsh interface ip set address "Conexao local" dhcp
netsh interface ip set address "Conexao local 2" dhcp
netsh interface ip set address "Local Area Connection 2" dhcp

netsh interface ip set dns "Local Area Connection" source=static addr=1.1.1.1 register=PRIMARY
netsh interface ip set dns "Conexao local" source=static addr=1.1.1.1 register=PRIMARY
netsh interface ip set dns "Conexao local 2" source=static addr=1.1.1.1 register=PRIMARY
netsh interface ip set dns "Local Area Connection 2" source=static addr=1.1.1.1 register=PRIMARY
echo
pause