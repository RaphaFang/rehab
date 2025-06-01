SELECT a.machine_id, ROUND(AVG(a.timestamp - b.timestamp),3) AS processing_time
FROM Activity a
JOIN Activity b
    ON a.machine_id = b.machine_id AND a.process_id = b.process_id
WHERE a.activity_type = 'start' AND b.activity_type = 'end'
GROUP BY a.machine_id;


-- SELECT a.machine_id, average(*) as processing_time
-- FROM Activity a
-- LEFT JOIN (SELECT b.machine_id, b.process_id, b.timestamp, 
--     FROM Activity b
--     WHERE b.activity_type = 'end')
-- on (a.machine_id = b.machine_id) & (a.process_id = b.process_id)
-- WHERE a.timestamp - b.timestamp
-- GROUP BY a.machine_id;