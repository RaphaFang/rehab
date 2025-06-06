SELECT p.project_id, ROUND(SUM(e.experience_years)/COUNT(p.project_id), 2) as average_years
FROM Project p
LEFT JOIN Employee e
    ON p.employee_id = e.employee_id
GROUP BY project_id;


-- 其實可以用AVG