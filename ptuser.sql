CREATE LOGIN SARAH WITH PASSWORD ='Pa$$w0rd';
go

Create user Sarah for Login Sarah;
go

exec sp_addrolemember 'db_datareader','Sarah';
go

EXEC sp_addrolemember 'db_datareader', 'readonlyuser';


Alter role dbmanager add member sarah;
