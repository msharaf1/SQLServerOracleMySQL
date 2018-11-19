--Sign in into the Azure.portal.com
--Click Create SQL Database
--Choose a name for your Resource Group
--Create your Instance Server
--Choose your DTU\Pricing Tier
--Now Check your Resource Group
--Click on Show Firewall Settings
--Your IP. In Google search type "MY IP Address"
--Now, click Resource group again,
--click on the Database
--Copy Servername full address: .database.windows.net
--Connect from SSMS
--Now, a user account, like contained user.
--Remember, the user must specify Database name in the connection property.

Create Schema HR;
go

Create Table HR.Student
(
    ID INT Primary Key,
    FirstName varchar(50) Null,
    LastName varchar(50) Null,
    RegID INT
);

/*Inside the Database.
Create a Database User who can access specific Tables:
*/
CREATE USER dgdbauser WITH PASSWORD = 'Pa$$w0rd';
GO
	--Drop User dgdbauser;
	--go

-- From your User Insert Data into the table

GRANT SELECT ON HR.STUDENT TO dgdbauser;
go
--insert data using dgdbauser
Insert into HR.Student Values
(2,'Lina','Johnson',1200);
Go

GRANT INSERT ON HR.STUDENT TO dgdbauser;
Go
--Schema Levl
GRANT ALTER ON SCHEMA:: HR TO dgdbauser;
GO

--DB Level
Create schema Finance;
go
Create table Finance.Budget
(
ID INT Primary Key,
Active bit
);
go

Insert Into finance.Budget Values
(1,1);
---
--Read/Write inside DB Objects
exec sp_addrolemember 'db_datareader','dgdbauser';
go

exec sp_addrolemember 'db_datawriter','dgdbauser';
go
--Permission Database Level/Owner
exec sp_addrolemember 'db_owner','dgdbmgr1';
Go

