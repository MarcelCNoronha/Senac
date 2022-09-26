SELECT * FROM `jobs` WHERE description="desenvolvedor de sistemas";
SELECT * FROM `jobs` WHERE description<>"desenvolvedor de sistemas";
SELECT * FROM `jobs` WHERE description<>"desenvolvedor de sistemas" AND description<>"programador";

-- contador de id do banco
SELECT COUNT(id) FROM users; 
SELECT COUNT(id) AS "Quantidade de usuários" FROM users;
SELECT COUNT(id) AS "Quantidade de usuários" FROM users WHERE password = "123456";


SELECT - Seleciona
COUNT -  Conta 
AS - Renomeia
FROM - planilha onde está sendo consultado
WHERE -  condição
ORDER BY name ASC
ORDER BY name DESC
INNER JOIN - uniao de tabelas


-- consultar ordenando

SELECT name FROM users ORDER BY name ASC;
SELECT name FROM users ORDER BY name DESC;
SELECT name FROM users ORDER BY name, email DESC;


SELECT * FROM users WHERE name LIKE"%Cardoso%";

-- União de tabelas
SELECT jobs.description
FROM job_user
INNER JOIN jobs
ON jobs.id = job_user.job_id;


SELECT jobs.description
FROM job_user
INNER JOIN jobs
ON jobs.id = job_user.job_id 
WHERE job_user.user_id = 1;

SELECT users.name
FROM job_user
INNER JOIN users
ON users.id = job_user.user_id
WHERE job_user.user_id = 1; 


SELECT users.name
FROM users
INNER JOIN job_user
ON users.id = job_user.user_id
WHERE job_user.job_id = 1; 


SELECT 
	users.name, jobs.description
FROM 
	users
INNER JOIN 
	job_user ON 
    (users.id = job_user.user_id)
INNER JOIN
	jobs ON
    (jobs.id = job_user.job_id)

    -- lista todos os nomes
ORDER BY
	users.name

    -- filtra um id
WHERE job_user.job_id = 1; 
