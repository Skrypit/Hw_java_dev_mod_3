SELECT projects.project_name, projects.cost, AVG(developers.salary) AS average_salary
FROM developers
JOIN developers_projects ON developers.developer_id = developers_projects.developer_id
JOIN projects ON projects.project_id = developers_projects.project_id
GROUP BY projects.project_id
ORDER BY projects.cost
LIMIT 1;