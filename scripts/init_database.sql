use master;
GO

IF EXISTS (select 1 from sys.databases where name = 'DataWarehouse')
  BEGIN
    alter database DataWarehouse set SINGLE_USER with rollback immediate;
    drop database DataWarehouse;
  END;
GO
create database DataWarehouse;
use DataWarehouse;
GO
create schema bronze;
GO
create schema silver;
GO
create schema gold;
