---To avoid managing a user's security, a dba can use Stored Procedure to assgined certain permissisns.

--
INSERT INTO PUB.AUTHOR (FIRSTNAME, LASTNAME)
VALUES ('John','Doe')

Use Master;
GO

CREATE LOGIN John With Password = 'Pa$$w0rd', DEFAULT_DATABASE = MASTER, DEFAULT_LANGUAGE = us_english, CHECK_EXPIRATION = OFF, CHECK_POLICY = ON;
GO;

CREATE USER JOHN FOR LOGIN JOHN;

CREATE PROC DBO.SECURITYTEST
AS
	BEGIN
		SELECT FIRSTNAME, LASTNAME
		FROM [PUB].[AUTHOR]
	END
GO

EXEC DBO.SECURITYTEST

---GRANT JOH EXEC

GRANT EXEC ON DBO.SECURITYTEST TO JOHN 
-----
Exec as user = 'John';
Revert;
Select current_user;

--------
Sp_ChangeObjectOwner 'dbo.author','Menhaj';

