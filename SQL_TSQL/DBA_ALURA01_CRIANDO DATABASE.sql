--DBA_ALURA01_CRIANDO DATABASE
CREATE DATABASE [dbVendas]
 ON  PRIMARY ( 
 NAME = N'dbVendas', 
 FILENAME = N'C:\DATA\ARQUIVO_DADOS\dbVendas.MDF', 
 SIZE = 100MB, 
 MAXSIZE = 200MB, 
 FILEGROWTH = 50MB )
 LOG ON ( 
 NAME = N'dbVendasLOG', 
 FILENAME = N'C:\DATA\LOG_TRANSACOES\dbVendasLOG.LDF', 
 SIZE = 100MB, 
 MAXSIZE = 200MB, 
 FILEGROWTH = 50MB );

 CREATE DATABASE [dbCustos]
 ON  PRIMARY ( 
 NAME = N'dbVendas', 
 FILENAME = N'C:\DATA\ARQUIVO_DADOS\dbCustos.MDF', 
 SIZE = 200MB,  
 FILEGROWTH = 25MB )
 LOG ON ( 
 NAME = N'dbVendasLOG', 
 FILENAME = N'C:\DATA\LOG_TRANSACOES\dbCustosLog.LDF', 
 SIZE = 100MB,  
 FILEGROWTH = 25MB );
 --RODEI SCRIPT DE CRIAÇÃO DE TABELAS DOS "DEVS"
--EXEC pra simular uso dos usuários e verificar comportamento do arquivo de dados e de log

EXEC IncluiNotasDia '2022-01-01'
EXEC IncluiNotasDia '2022-01-02'
EXEC IncluiNotasDia '2022-01-03'
EXEC cargaBase 2022, 1, 2022, 2

--otimizar banco
DBCC SHRINKDATABASE ('dbVendas',TRUNCATEONLY);-- like defrag

--Backups
--completa
SELECT COUNT(*) FROM tb_nota-- pra ver nfs e ver impacto
BACKUP DATABASE dbVendas TO DISK = 'C:\DATA\BACKUP\DBVENDAS.BAK';

--simular entrada de dados do mes 3
EXEC IncluiNotasDia '2022-03-01'


--
CREATE LOGIN marcos  WITH PASSWORD='marcos123'
CREATE LOGIN [] FROM WINDOWS
SELECT * FROM MASTER.sys.sql_logins

SELECT name, LOGINPROPERTY(name, 'PasswordLastSetTime') FROM master.sys.sql_logins

SELECT name, password_hash FROM master.sys.sql_logins

create login pedro with password = 'pedro'

