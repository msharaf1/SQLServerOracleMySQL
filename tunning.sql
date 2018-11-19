select * from sys.dm_os_wait_stats;

select session_id, user_objects_dealloc_page_count from sys.dm_db_session_space_usage;

select session_id, wait_duration_ms, wait_type from sys.dm_os_waiting_tasks
order by 2 desc;

select * from sys.dm_exec_requests;

SELECT  scheduler_id ,        current_tasks_count ,        
runnable_tasks_count FROM    sys.dm_os_schedulers WHERE   scheduler_id < 255