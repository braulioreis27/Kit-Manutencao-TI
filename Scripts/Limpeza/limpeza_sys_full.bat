::
:: Atualizado em: 01/02/2021 por Bráulio Reis
::
:: Script de limpeza de arquivos temporários em TODOS usuários do Windows.
::
:: Itens removidos:
::
:: Cookies - Local Settings Temp - AppData Temp - AppData Internet Temp - MS Edge
:: Windows Error Report (WER) Logs - C: Temp, Windows Temp - Firefox Temp (perfil todo) - Chrome Temp (pasta Cache) - Opera (pasta cache - Vivaldi (pasta Cache)
::
::
::

:LIMPEZA DE ARQUIVOS TEMPORÁRIOS E TODOS OS USUÁRIOS
		@echo off
		cls
		color 4f
		@echo off
		echo
		title LIMPEZANDO O SISTEMA....
		echo
		:START
		cls
		color 4f
		%homedrive%
		cd %USERPROFILE%
		cd..
		set profiles=%cd%

		for /f "tokens=* delims= " %%u in ('dir /b/ad') do (


		cls
		title Deletando %%u COOKIES. . .  AGUARDE .....
		if exist "%profiles%\%%u\cookies" echo Deletando....
		if exist "%profiles%\%%u\cookies" cd "%profiles%\%%u\cookies"
		if exist "%profiles%\%%u\cookies" del *.* /F /S /Q /A: R /A: H /A: A



		cls
		title Deletando %%u Temporary Internet Files. . .  AGUARDE .....
		if exist "%LocalAppData%\Microsoft\Windows\Temporary Internet Files" echo Deletando....
		if exist "%LocalAppData%\Microsoft\Windows\Temporary Internet Files" cd "%LocalAppData%\Microsoft\Windows\Temporary Internet Files"
		if exist "%LocalAppData%\Microsoft\Windows\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Microsoft\Windows\Temporary Internet Files" rmdir /s /q "%LocalAppData%\Microsoft\Windows\Temporary Internet Files"

		cls
		title Deletando %%u WER FILES. . .  AGUARDE .....
		if exist "%LocalAppData%\Microsoft\Windows\WER\ReportArchive" echo Deletando....
		if exist "%LocalAppData%\Microsoft\Windows\WER\ReportArchive" cd "%LocalAppData%\Microsoft\Windows\WER\ReportArchive"
		if exist "%LocalAppData%\Microsoft\Windows\WER\ReportArchive" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Microsoft\Windows\WER\ReportArchive" rmdir /s /q "%LocalAppData%\Microsoft\Windows\WER\ReportArchive"


		cls
		title Deletando %LocalAppData%\Temp TEMP Files.....   AGUARDE .....
		if exist "%LocalAppData%\Temp" echo Deletando....
		if exist "%LocalAppData%\Temp" cd "%LocalAppData%\Temp"
		if exist "%LocalAppData%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Temp" rmdir /s /q "%LocalAppData%\Temp"

		cls
		title Deletando %SYSTEMDRIVE% Windows Temp..... AGUARDE .....
		if exist "%SYSTEMDRIVE%\Windows\Temp" echo Deletando....
		if exist "%SYSTEMDRIVE%\Windows\Temp" cd "%SYSTEMDRIVE%\Windows\Temp"
		if exist "%SYSTEMDRIVE%\Windows\Temp" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\Windows\Temp" rmdir /s /q "%SYSTEMDRIVE%\Windows\Temp"

		cls
		title Deletando %%u FIREFOX TEMP. . .  AGUARDE .....
		if exist "%LocalAppData%\Mozilla\Firefox\Profiles" echo Deletando....
		if exist "%LocalAppData%\Mozilla\Firefox\Profiles" cd "%LocalAppData%\Mozilla\Firefox\Profiles"
		if exist "%LocalAppData%\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Mozilla\Firefox\Profiles" rmdir /s /q "%LocalAppData%\Mozilla\Firefox\Profiles"

		cls
		title Deletando %%u CHROME TEMP. . .  AGUARDE .....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cache" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cache" cd "%LocalAppData%\Google\Chrome\User Data\Default\Cache"
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cache" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"

		if exist "%LocalAppData%\Google\Chrome\User Data\Default\History" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\History" cd "%LocalAppData%\Google\Chrome\User Data\Default\History"
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\History" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\History" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\History"

		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cookies" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cookies" cd "%LocalAppData%\Google\Chrome\User Data\Default\Cookies"
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cookiess" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cookies" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cookies"

		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Current Session" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Current Session" cd "%LocalAppData%\Google\Chrome\User Data\Default\Current Session"
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Current Session" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Current Session" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Current Session"

		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Archived History" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Archived History" cd "%LocalAppData%\Google\Chrome\User Data\Default\Archived History"
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Archived History" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Archived History" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Archived History"

		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Visited Links" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Visited Links" cd "%LocalAppData%\Google\Chrome\User Data\Default\Visited Links"
		if exist "%LocalAppData%Google\Chrome\User Data\Default\Visited Links" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\Visited Links" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Visited Links"

		if exist "%LocalAppData%\Google\Chrome\User Data\Default\SwReporter" echo Deletando....
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\SwReporter" cd "%LocalAppData%\Google\Chrome\User Data\Default\SwReporter"
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\SwReporter" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Google\Chrome\User Data\Default\SwReporter" rmdir /s /q "%LocalAppData%\Google\Chrome\User Data\Default\SwReporter"

		cls
		title Deletando %%u EDGE TEMP. . .  AGUARDE .....
		if exist "%LocalAppData%\Microsoft\Windows\INetCache" echo Deletando....
		if exist "%LocalAppData%\Microsoft\Windows\INetCache" cd "%LocalAppData%\Microsoft\Windows\INetCache"
		if exist "%LocalAppData%\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Microsoft\Windows\INetCache" rmdir /s /q "%LocalAppData%\Microsoft\Windows\INetCache"

		if exist "%LocalAppData%\Microsoft\Windows\INetCookies" echo Deletando....
		if exist "%LocalAppData%\Microsoft\Windows\INetCookies" cd "%LocalAppData%\Microsoft\Windows\INetCookies"
		if exist "%LocalAppData%\Microsoft\Windows\INetCookies" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Microsoft\Windows\INetCookies" rmdir /s /q "%LocalAppData%\Microsoft\Windows\INetCookies"


		cls
		title Deletando %%u JAVA DEPLOYMENT CACHE. . .  AGUARDE .....
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\cache" echo Deletando....
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\cache" cd "%appdata%/../LocalLow\Sun\Java\Deployment\cache"
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\cache" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\cache" rmdir /s /q "%appdata%/../LocalLow\Sun\Java\Deployment\cache"

		title Deletando %%u JAVA DEPLOYMENT LOG. . .  AGUARDE .....
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\*.log" echo Deletando....
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\*.log" cd "%appdata%/../LocalLow\Sun\Java\Deployment\*.log"
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\*.log" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\*.log" rmdir /s /q "%appdata%/../LocalLow\Sun\Java\Deployment\*.log"

		title Deletando %%u JAVA DEPLOYMENT TMP. . .  AGUARDE .....
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\tmp" echo Deletando....
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\tmp" cd "%appdata%/../LocalLow\Sun\Java\Deployment\tmp"
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\tmp" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%appdata%/../LocalLow\Sun\Java\Deployment\tmp" rmdir /s /q "%appdata%/../LocalLow\Sun\Java\Deployment\tmp"

		cls
		title Deletando %%u SoftwareDistribution. . .  AGUARDE .....
		if exist "%Systemroot%\SoftwareDistribution" echo Deletando....
		if exist "%Systemroot%\SoftwareDistribution" cd "%Systemroot%\SoftwareDistribution"
		if exist "%Systemroot%\SoftwareDistribution" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%Systemroot%\SoftwareDistribution" rmdir /s /q "%Systemroot%\SoftwareDistribution"

		cls
		title Deletando %%u ADWCLEANER. . .  AGUARDE .....
		if exist "%SYSTEMDRIVE%\AdwCleaner" echo Deletando....
		if exist "%SYSTEMDRIVE%\AdwCleaner" cd "%SYSTEMDRIVE%\AdwCleaner"
		if exist "%SYSTEMDRIVE%\AdwCleaner" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\AdwCleaner" rmdir /s /q "%SYSTEMDRIVE%\AdwCleaner"

		cls
		title Deletando %%u CHOCOLATEY. . .  AGUARDE .....
		if exist "%SYSTEMDRIVE%\ProgramData\chocolatey" echo Deletando....
		if exist "%SYSTEMDRIVE%\ProgramData\chocolatey\.chocolatey" cd "%SYSTEMDRIVE%\ProgramData\chocolatey\.chocolatey"
		if exist "%SYSTEMDRIVE%\ProgramData\chocolatey\.chocolatey" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\ProgramData\chocolatey\.chocolatey" rmdir /s /q "%SYSTEMDRIVE%\ProgramData\chocolatey\.chocolatey"

		cls
		title Deletando %%u PACKAGE CACHE. . .  AGUARDE .....
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Defender\Scans\History\Store" echo Deletando....
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Defender\Scans\History\Store" cd "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Defender\Scans\History\Store"
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Defender\Scans\History\Store" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Defender\Scans\History\Store" rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Defender\Scans\History\Store"

		cls
		title Deletando %%u Windows Defender. . .  AGUARDE .....
		if exist "%SYSTEMDRIVE%\ProgramData\Package Cache" echo Deletando....
		if exist "%SYSTEMDRIVE%\ProgramData\Package Cache" cd "%SYSTEMDRIVE%\ProgramData\Package Cache"
		if exist "%SYSTEMDRIVE%\ProgramData\Package Cache" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\ProgramData\Package Cache" rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Package Cache"

		cls
		title Deletando %%u Windows Security Health. . .  AGUARDE .....
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Security Health\Logs" echo Deletando....
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Security Health\Logs" cd "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Security Health\Logs"
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Security Health\Logs" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Security Health\Logs" rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows Security Health\Logs"

		cls
		title Deletando %%u XboxLive. . .  AGUARDE .....
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\XboxLive\NSALCache" echo Deletando....
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\XboxLive\NSALCache" cd "%SYSTEMDRIVE%\ProgramData\Microsoft\XboxLive\NSALCache"
		if exist "%SYSTEMDRIVE%ProgramData\Microsoft\XboxLive\NSALCache" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%SYSTEMDRIVE%\ProgramData\Microsoft\XboxLive\NSALCache" rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\XboxLive\NSALCache"

		cls
		title Deletando %%u DRIVER PARCK. .   AGUARDE .....
		if exist "%LocalAppData%\Rapr" echo Deletando....
		if exist "%LocalAppData%\Rapr" cd "%LocalAppData%\Rapr"
		if exist "%LocalAppData%\Rapr" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\Rapr" rmdir /s /q "%LocalAppData%\Rapr"

		if exist "%LocalAppData%\DriverStore Explorer" echo Deletando....
		if exist "%LocalAppData%\DriverStore Explorer" cd "%LocalAppData%\DriverStore Explorer"
		if exist "%LocalAppData%\DriverStore Explorer" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%LocalAppData%\DriverStore Explorer" rmdir /s /q "%LocalAppData%\DriverStore Explorer"

		if exist "%AppData%\DriverPack Cloud" echo Deletando....
		if exist "%AppData%\DriverPack Cloud" cd "%AppData%\DriverPack Cloud"
		if exist "%AppData%\DriverPack Cloud" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%AppData%\DriverPack Cloud" rmdir /s /q "%AppData%\DriverPack Cloud"

		if exist "%AppData%\DRPSu" echo Deletando....
		if exist "%AppData%\DRPSu" cd "%AppData%\DRPSu"
		if exist "%AppData%\DRPSu" del *.* /F /S /Q /A: R /A: H /A: A
		if exist "%AppData%\DRPSu" rmdir /s /q "%AppData%\DRPSu"


		cls
		net stop spooler
		del /q/f/s %systemroot%\system32\spool\PRINTERS\*.*
		net start spooler

		cls
		title Deletando %%u CACHE DNS
		ipconfig /flushdns

		cls
		title Deletando %%u $Recycle.Bin. . .  AGUARDE .....
		:: Arquivos com System Volume Information
		if exist "%SystemDrive%" echo Deletando....
		CACLS "%SystemDrive%\System Volume Information" /T /E /G %UserName%:F
		CACLS "c:\System Volume Information" /T /E /G %UserName%:F
		CACLS "d:\System Volume Information" /T /E /G %UserName%:F
		CACLS "e:\System Volume Information" /T /E /G %UserName%:F
		CACLS "f:\System Volume Information" /T /E /G %UserName%:F
		CACLS "g:\System Volume Information" /T /E /G %UserName%:F
		CACLS "h:\System Volume Information" /T /E /G %UserName%:F
		CACLS "i:\System Volume Information" /T /E /G %UserName%:F
		CACLS "j:\System Volume Information" /T /E /G %UserName%:F
		CACLS "k:\System Volume Information" /T /E /G %UserName%:F

		:: Arquivos com %SystemDrive%
		Del	/F /S /Q	 "%SystemDrive%\System Volume Information\*.*"
		RmDir	 /S /Q	 "%SystemDrive%\System Volume Information"

		:: Arquivos com c:\System Volume Information\
		Del	/F /S /Q	 "c:\System Volume Information\*.*"
		RmDir	 /S /Q	 "c:\System Volume Information"
		Del	/F /S /Q	 "d:\System Volume Information\*.*"
		RmDir	 /S /Q	 "d:\System Volume Information"
		Del	/F /S /Q	 "e:\System Volume Information\*.*"
		RmDir	 /S /Q	 "e:\System Volume Information"
		Del	/F /S /Q	 "f:\System Volume Information\*.*"
		RmDir	 /S /Q	 "f:\System Volume Information"
		Del	/F /S /Q	 "g:\System Volume Information\*.*"
		RmDir	 /S /Q	 "g:\System Volume Information"
		Del	/F /S /Q	 "h:\System Volume Information\*.*"
		RmDir	 /S /Q	 "h:\System Volume Information"
		Del	/F /S /Q	 "i:\System Volume Information\*.*"
		RmDir	 /S /Q	 "i:\System Volume Information"
		Del	/F /S /Q	 "j:\System Volume Information\*.*"
		RmDir	 /S /Q	 "j:\System Volume Information"
		Del	/F /S /Q	 "k:\System Volume Information\*.*"
		RmDir	 /S /Q	 "k:\System Volume Information"

		:: Arquivos com c:\$RECYCLE.BIN
		CACLS "%SystemDrive%\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "c:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "d:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "e:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "f:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "g:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "h:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "i:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "j:\$RECYCLE.BIN" /T /E /G %UserName%:F
		CACLS "k:\$RECYCLE.BIN" /T /E /G %UserName%:F
		Del	/F /S /Q	 "%SystemDrive%\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "%SystemDrive%\$RECYCLE.BIN"
		Del	/F /S /Q	 "c:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "c:\$RECYCLE.BIN"
		Del	/F /S /Q	 "d:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "d:\$RECYCLE.BIN"
		Del	/F /S /Q	 "e:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "e:\$RECYCLE.BIN"
		Del	/F /S /Q	 "f:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "f:\$RECYCLE.BIN"
		Del	/F /S /Q	 "g:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "g:\$RECYCLE.BIN"
		Del	/F /S /Q	 "h:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "h:\$RECYCLE.BIN"
		Del	/F /S /Q	 "i:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "i:\$RECYCLE.BIN"
		Del	/F /S /Q	 "j:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "j:\$RECYCLE.BIN"
		Del	/F /S /Q	 "k:\$RECYCLE.BIN\*.*"
		RmDir	 /S /Q	 "k:\$RECYCLE.BIN".Bin"
		)

		cls
		goto END



		:END
		exit