:RENOVANDO IP
		@echo off
		cls
		color 4f
		@echo off
		echo
		title RENOVANDO IP....
		echo
		ipconfig /flushdns
		ipconfig /renew
		ipconfig /renew6
		ipconfig /release
		ipconfig /release6
		ipconfig /all
		ipconfig /registerdns
		pause