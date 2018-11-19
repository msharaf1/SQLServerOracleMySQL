USE master;
GO
CREATE DATABASE EmpData;
USE master;
GO
 
CREATE DATABASE EmpData;
GO
 
USE EmpData;
GO
 
CREATE TABLE EmpInfo(
  EmpID INT PRIMARY KEY,
  NatID NVARCHAR(15) NOT NULL,
  EncryptedID VARBINARY(128) NULL);
GO
 
INSERT INTO EmpInfo(EmpID, NatID) 
SELECT BusinessEntityID, NationalIDNumber
FROM AdventureWorks2014.HumanResources.Employee
WHERE NationalIDNumber IS NOT NULL;


USE EmpData;
GO
 
CREATE MASTER KEY 
ENCRYPTION BY PASSWORD = 'pw1234!'

SELECT name KeyName,
  symmetric_key_id KeyID,
  key_length KeyLength,
  algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;


CREATE CERTIFICATE Cert1
WITH SUBJECT = 'Employee national IDs';

SELECT name CertName,
  certificate_id CertID,
  pvt_key_encryption_type_desc EncryptType,
  issuer_name Issuer
FROM sys.certificates;

CREATE SYMMETRIC KEY SymKey1
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE Cert1;

SELECT name KeyName,
  symmetric_key_id KeyID,
  key_length KeyLength,
  algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;


OPEN SYMMETRIC KEY SymKey1
DECRYPTION BY CERTIFICATE Cert1;
 
UPDATE EmpInfo
SET EncryptedID = ENCRYPTBYKEY(KEY_GUID('SymKey1'), NatID);
 
CLOSE SYMMETRIC KEY SymKey1;

SELECT TOP 5 * FROM EmpInfo;

