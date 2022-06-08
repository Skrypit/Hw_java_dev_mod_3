SELECT skills.language, SUM(developers.salary) AS sum_salary, COUNT(developers.developer_id) AS developers_count
FROM developers
JOIN developer_skills ON developers.developer_id = developer_skills.developer_id
JOIN skills ON skills.skill_id = developer_skills.skill_id
WHERE skills.language = 'Java'
GROUP BY skills.language;