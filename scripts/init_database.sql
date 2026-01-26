/*
====================================================================
Create Database and Schemas
====================================================================
Script Purpose:
        This script creates a new database named "DataWarehouse" after checking if it already exists.
        If the database exist, it is dropped and recreated.Additionally,the script sets up three schemas
        within the database:'bonze','silver','gold'.
Warning:
       Running this script will drop the entire 'DataWarehouse' database if it exists.
       All data in the database will be permanantly deleted.Proceed with caution 
       and ensure you have proper backups before running this script.
*/


use master;
--Drop and recreate the 'DataWarehouse' database
if Exists (Select 1 from sys.databases where name='DataWarehouse')
Begin
    Alter database DataWarehouse Set SINGLE_USER WITH ROLLBACK IMMEDIATE;
	Drop database DataWarehouse

End;

--create the 'Datawarehouse' database
create database DataWarehouse;
Use DataWarehouse;

create schema bronze;
GO
CREATE SCHEMA silver;
GO
create schema gold;
GO
