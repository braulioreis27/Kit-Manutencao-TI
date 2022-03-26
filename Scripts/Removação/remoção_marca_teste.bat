:REMOÇÃO DA MARCA DÁGUA DE TESTE DO WINDOWS
		@echo off
		cls
		color 4f
		@echo off
		echo
		title REMOÇÃO DE MARCA DÁGUA....
		echo
		bcdedit /set TESTSIGNING OFF
		exit