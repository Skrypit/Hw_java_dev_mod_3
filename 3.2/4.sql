ALTER TABLE projects 
ADD COLUMN cost INT NOT NULL DEFAULT 10000;

UPDATE projects SET cost = 300000 WHERE project_id = 2

UPDATE projects SET cost = 55000 WHERE project_id = 3
