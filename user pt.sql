USE [WideWorldImporters];
GO

SELECT	USER_NAME () AS 'DB USER NAME',
		SUSER_SNAME () AS 'SERVER LOGIN',
		HOST_NAME () AS 'COMPUTER NAME',
		APP_NAME () AS 'CLIENT APPLICATION',
		HOST_ID () AS 'HOST ID';
GO
--CREATE LOGIN
CREATE LOGIN HR WITH PASSWORD = 'Pa$$w0rd';

--Create users without login

Create User HR from login HR; --or
CREATE USER HR FOR LOGIN HR;

--Swtich User
Execute as User = 'HR';
go

-- Check Current user
Select User_name();

--Swtich Back
Revert;
Select User_name();

--Create user without login
Create user HD without Login;

exec as user ='HD';

Revert;
---
Exec AS User ='HR';
Select * From fn_my_permissions (null,'Database');
Revert;
go 
---Database level
Alter Role db_datareader Add Member HR;
go
Alter Role db_datawriter Add Member Hr;
Go

Grant Insert on Sales.Invoices TO HR;
go

--Schema Level
Grant Alter on Schema:: Sales to HR;
go


---Azure Accout as Contained Account
Create User FE with Password ='Pa$$w0rd';
Exec AS User = 'FE';
go

Select User_name();
GO

Create Schema HumanResource;
GO
---
Create Table HumanResources.Student
(
ID INT Primary Key,
FirstName varchar(50),
LastName varchar(50)
);

Grant Select Schema:: HumanReSources To FE ;


