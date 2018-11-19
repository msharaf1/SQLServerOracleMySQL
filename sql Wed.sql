Use master;
go

select * from sys.key_encryptions;
go

select * from sys.dm_database_encryption_keys;
go

select Name, is_master_key_encrypted_by_server from sys.databases;


go

--Service Key vs Master Key
--Service is key is created when Database is install.

/* 
1. Encrypted Master DB
2. Encrypted Database
3. Create Certificate
4. Cert