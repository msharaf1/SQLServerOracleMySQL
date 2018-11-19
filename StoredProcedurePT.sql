Exec sp_helptext 'procedurename';

Select OBJECT_DEFINITION (object_id ('procedurename'));

Select object_name (sm.object_id) AS ObjectName, 
					sm.definition As ObjectDefinition
From sys.sql_modules AS SM;

--TSQL defintion of the stored procedure (only unencrypted)
Exec sp_helptext 'sp_configure';

Select OBJECT_DEFINITION (object_id ('sp_configure'));

Select object_name (sm.object_id) AS ObjectName, 
					sm.definition As ObjectDefinition
From sys.sql_modules AS SM;

--Acessing Dependency

Select ref.*
From sys.dm_sql_referenced_entities ('procedurename','Object') as Ref;


Select reg.*
From sys.dm_sql_referencing_entities ('ProcedureName','Object') as Reg;

Select ref.*
From sys.dm_sql_referenced_entities ('sp_configure','Object') as Ref;
Select reg.*
From sys.dm_sql_referencing_entities ('sp_configure','Object') as Reg;

