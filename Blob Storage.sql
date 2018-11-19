--Note, create a general purpose Storage, otherwise, the sync will. If you create a blob storage account then use the GUI to create a new container. 
--For GUI to need to create Shared Access Credential

/*
CREATE CREDENTIAL novacamp2016   
WITH IDENTITY= 'sqlbackupblob2016' 
--- this is the name of the storage account you specified when creating a storage account (See Lesson 1)   
, 
SECRET = 'uI/wpwKrSLqOp2tBAF+bo56mjkmy8gdwAvJvG9SqbA2dgPw5EVn5gzFkyjxN0QMrQmlFIndpVbZk2e7fBJjf4Q==' 
--this should be either the Primary or Secondary Access Key for the storage account (See Lesson 1)  
*/




CREATE CREDENTIAL novacampm   
WITH IDENTITY= 'sqlbackupgeneral', 
SECRET = 'Ms2/EzeAtAiIwVN3d7brhinFj1JCRpaDbPjQva/W2Yl9HnjtshTM6XB70KxigaePef2p88UbPMRZIPV5gDFnBg=='


/*BACKUP DATABASE [NOVACAMP]
TO URL = 'https://mystorageaccount.blob.core.windows.net/privatecontainertest/AdventureWorks2012.bak'   
/* URL includes the endpoint for the BLOB service, followed by the container name, and the name of the backup file*/   
WITH CREDENTIAL = 'mycredential';  
/* name of the credential you created in the previous step */   
GO */

BACKUP DATABASE [NOVACAMP]
TO URL = 'https://sqlbackupgeneral.blob.core.windows.net/sqlnovabackup/novacampbackup.bak'   
WITH CREDENTIAL = 'novacampm';
