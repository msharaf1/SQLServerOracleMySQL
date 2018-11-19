Create Schema HR;
go

Create Table HR.Student
(
ID INT PRimary Key,
FirstName varchar(50),
LastName varchar(50)
);

Insert into Hr.Student values
(
1,'John','Smith'
);

Create User dgstudent1 with Password = 'Pa$$w0rd';

--Open SSMS, run Select * from hr.Student;

Grant SELECT on hr.Student TO dgstudent1;
go

--Try to Insert  data into Table from SSMS

Grant INSERT on HR.Student to dgstudent1;
LOGIN IN AZURE:

--The difference between Azure and stand alone server is that for Azure a user in the Master Database must be created to connect. 
Create Login sharaf1 with Password = 'Pa$$w0rd';
Go
Connect to Master Database.
Create user dgstudent1 for Login dgstudent1;
Go

---Adding Management role

Create Login dgstudent2 with Password = 'Pa$$w0rd';
--connect as dgstudent2, attempt to create login (fails)

--connect as DGadmin to alter server level permission
Alter Role dbmanager Add Member dgstudent2;
go
Alter role loginmanager Add member dgstudent2;

--Connect to User Database
Alter Role db_owner ADD member dgstudent2;

--DGstudent1
Create User dgstudent3 for dtstudent2;
create user user2 with password = 'Pa$$w0rd';
