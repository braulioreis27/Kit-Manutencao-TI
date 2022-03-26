:REPARANDO PostgreSQL 9.6
		@echo off
		cls
		color 4f
		@echo off
		echo
		title REPARANDO BANDO DE DADOS....
		echo

		@echo Parando servico do pgguardian
		net stop "postgresql-guardian"

		@echo removendo postmaster.pid
		Del C:\Program Files\PostgreSQL\9.6\data\postmaster.pid

		@echo executando o pgresetlog
		cd "C:\Program Files\PostgreSQL\9.6\bin"
		pg_resetxlog -f "C:\Program Files\PostgreSQL\9.6\data"

		@echo Iniciando servico do postgresql
		net start "postgresql-x64-9.6 - PostgreSQL Server 9.6"

		@echo Iniciando servico do pgguardian
		net start "postgresql-guardian"
		exit

