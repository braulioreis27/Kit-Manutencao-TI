:LIMPEZA DE SPOOLER IMPRESSÃO
		@echo off
		cls
		color 4f
		echo off
		echo
		title LIMPEZA SPOOLER IMPRESSÃO....
		echo
		net stop spooler
		del /q/f/s %systemroot%\system32\spool\PRINTERS\*.*
		net start spooler
		exit