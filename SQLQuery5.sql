CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Pa$$w0rd'

BACKUP MASTER KEY TO FILE = 'F:\SQLserverMasterKey\Masterkey.txt'   
    ENCRYPTION BY PASSWORD = 'Pa$$w0rd'

USE master
;  
OPEN MASTER KEY DECRYPTION BY PASSWORD = 'Pa$$w0rd';  
BACKUP MASTER KEY TO FILE = 'F:\SQLserverMasterKey\MasterKey.txt'   
    ENCRYPTION BY PASSWORD = 'Pa$$w0rd'; 