Create Trigger Hr.InsCont ON Hr.Employee
After Insert
AS
	Begin
	Print 'Insert is not allowed'
	Rollback transaction
	End;
	go

Create Trigger Hr.PVTDLT on HR.Employee
After Update
As
	Begin
	Print 'This is table is archived and no longer accepts data'
	Rollback Transaction
	End;
Go

insert into hr.EMPLOYEE
values
(20,'Janum','Jani',400,'1234567890');

Update Hr.EMPLOYEE
Set SocialSecurity = '1234567890'
Where MANAGERID = 400

CREATE TRIGGER PVTCRTTABLE ON DATABASE
AFTER CREATE_TABLE
AS
	BEGIN
	PRINT 'THIS DATABASE IS ARCHVIED, SO NOT NEW TABLES ARE ACCEPTED'
	ROLLBACK TRANSACTION
	END;
	GO

CREATE TABLE HR.JANU (COL INT);

----
SELECT OBJECT_NAME (PARENT_ID) AS PARENTOBNAME, * 
FROM SYS.triggers;

DROP TRIGGER PVTCRTTABLE ON DATABASE;
---
DROP TRIGGER DBO.PVTCRTTABLE
----
--COMPUTED COLUMNS


CREATE TABLE [HR].[COMP_TABLE](
	[FIRSTNAME] [nchar](10) NULL,
	[LASTNAME] [nchar](10) NULL,
	[FULLNAME]  AS (([FIRSTNAME]+'  ')+[LASTNAME])
) ON [PRIMARY]
GO

CREATE TABLE HR.STUDENTFEE
(
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
CLASSNAME VARCHAR(50),
CLASSFEE MONEY,
NUMBEROFCLASSES INT,
CLASSTOTAL AS (CLASSFEE * NUMBEROFCLASSES)
)

CREATE PROC LISTEMPLISTPROC
@EMPTNAME VARCHAR(50)
AS
	BEGIN
		(SELECT * FROM HR.EMPLOYEE
		WHERE LASTNAME = @EMPTNAME)
	END;
	GO

EXEC LISTEMPLISTPROC'JOHNSON'

create proc countlist
@Nemps as int
as
	Begin
		(select * from hr.employee
		Where EmployeeID = @Nemps)
		End;

	exec countlist @Nemps = 6
--Choosing a default var
Create proc countlist1
@Nemps as int =5
AS
Set Nocount On
	Begin
		(select * from hr.employee
		Where EmployeeID = @Nemps)
	End;

Exec countlist1 7
---
--OutPut parameters
ALTER PROC OUTCOUTLIST
@QTY AS INT OUTPUT
AS
	SET @QTY =
			(SELECT TOP (1) EmployeeID FROM HR.EMPLOYEE);

--STEP TWO

DECLARE @QTYRESULT INT
EXEC OUTCOUTLIST @QTYRESULT OUTPUT
SELECT @QTYRESULT

----DROP

DROP PROC OUTCOUTLIST;

---CREATE FUNCTIONS

CREATE FUNCTION FEEFUSUM ()
RETURNS MONEY
AS
	BEGIN
		DECLARE @FEESUM AS MONEY
			SELECT @FEESUM = SUM([CLASSFEE]) FROM [HR].[STUDENTFEE]
	RETURN @FEESUM
	END

---ST2

DECLARE @TOFEESUM AS MONEY
SELECT @TOFEESUM = DBO.FEEFUSUM ()
PRINT @TOFEESUM

alter PROC TestMyknow
AS
	Begin
	Select 'Hello Darling, I love You'
	Return 25
	End;
go

Declare @TestmKnow as INT
Exec @TestmKnow = TestMyknow
Select @TestmKnow
----------------
----------Input Paramter

Alter PROC TestMyknow (@pm1 as INT)
AS
	Begin
	Select @pm1

	Return 1
	End;
go

Exec TestMyknow 10

Alter PROC TestMyknow (@pm1 as INT, @PM2 as Varchar(50))
AS
	Begin
	Select @pm1
	Select @pm2

	Return 1
	End;
go

Exec TestMyknow 10 ,'Hello, I am from Afghanistan'

--Output Praramter
Alter PROC TestMyknow (@pm1 as INT)
AS
	Begin
	Select @pm1

	Return 1
	End;
go

Declare @x as INT =13
Exec TestMyknow @x 
Select @x

---Setp 2

Alter PROC TestMyknow (@pm1 AS INT OUTPUT)
AS
	Begin
	Select @pm1
	Set @pm1 = 27

	Return 1
	End;
go

Declare @x as INT =13
Exec TestMyknow @x OUTPUT
Select @x

