
-- Tit Types Analysis

SELECT TOP 10
    wait_type,
    wait_time_ms / 1000.0 AS wait_time_seconds,
    waiting_tasks_count
FROM sys.dm_os_wait_stats
WHERE wait_type NOT LIKE 'SLEEP%'
ORDER BY wait_time_ms DESC;
op Wait Types Analysis

