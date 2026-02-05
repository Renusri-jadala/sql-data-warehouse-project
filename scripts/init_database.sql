/* 
===================================================
Create Database and Schemas
===================================================

Script Purpose:
    This script creates a new database named 'DataWarehousr' after checking if it already exists.
    If the database exitst, it is dropped and recreated . Additionally the script sets up three schemas
    within the database : 'bronze', 'silver' , and 'gold' .

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted . proceed with caution
    and ensure you have proper backups before runnig this script

*/

use master;
 go
--drop and recreate the ;DataWarehouse' database
If exists (select 1 from sys.databases where name='DataWarehouse')
begin 
 alter database DataWarehouse set single user with rollback immediate;
 drop database DataWarehouse;
end;
go

--create the 'DataWarehousr' database
use master;
create database datawarehouse;

use datawarehouse;

-- create schemas
create schema bronze;
go
  
create schema silver;
GO
  
create schema gold;
go
