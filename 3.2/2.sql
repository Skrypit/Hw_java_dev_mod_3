SELECT projects.project_name, SUM(developers.salary) AS project_cost
FROM projects 
JOIN developers_projects ON developers_projects.project_id = projects.project_id
JOIN developers ON developers.developer_id = developers_projects.developer_id
GROUP BY projects.project_id
ORDER BY project_cost DESC 
LIMIT 1; 







