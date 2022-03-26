:REPARAÇÃO DO SISTEMA
		@echo off
		cls
		color 4f
		@echo off
		echo
		title REPARAÇÃO DO SISTEMA....
		echo
		chkdsk /f/r
		sfc /scannow
		dism /online /cleanup-image /CheckHealth
		dism /online /cleanup-image /restorehealth
		exit