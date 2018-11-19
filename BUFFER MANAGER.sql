SELECT (CASE 
           WHEN ( [database_id] = 32767 ) THEN 'Resource Database' 
           ELSE Db_name (database_id) 
         END )  AS 'Database Name', 
       Sum(CASE 
             WHEN ( [is_modified] = 1 ) THEN 0 
             ELSE 1 
           END) AS 'Clean Page Count',
		Sum(CASE 
             WHEN ( [is_modified] = 1 ) THEN 1 
             ELSE 0 
           END) AS 'Dirty Page Count'
FROM   sys.dm_os_buffer_descriptors 
GROUP  BY database_id 
ORDER  BY DB_NAME(database_id);

DBCC DROPCLEANBUFFERS

SET STATISTICS IO ON;
GO

SELECT * FROM SYS.dm_os_buffer_descriptors;

SELECT COUNT(*) *8192/1024/1024 AS 'MB' FROM SYS.dm_os_buffer_descriptors

SELECT DB_NAME (DATABASE_ID) AS 'DATABASENAME',
	COUNT(*) *8192/1024/1024 AS 'MB' FROM SYS.dm_os_buffer_descriptors
WHERE DATABASE_ID <> 32767
GROUP BY DATABASE_ID
ORDER BY COUNT(*) DESC
GO

SELECT * FROM SYS.dm_os_buffer_descriptors
WHERE DATABASE_ID = DB_ID('AdventureWorks2016CTP3');
GO

sp_options;
