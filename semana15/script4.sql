DROP TABLE funcionarios;

CREATE TABLE funcionarios (
	id			SERIAL PRIMARY KEY,
	matricula	VARCHAR(10),
	nome		VARCHAR(255),
	sobrenome	VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M001','Diogo','Mascarenha');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M002','Vinicius','Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M003','Nico','Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M004','João','Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M005','Diogo','Mascarenha');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M006','Alberto','Martins');


SELECT * FROM funcionarios;

SELECT *
	FROM funcionarios
	ORDER BY nome;
	
SELECT *
	FROM funcionarios
	ORDER BY nome DESC;
	
SELECT *
	FROM funcionarios
	ORDER BY nome,matricula;
	
SELECT *
	FROM funcionarios
	ORDER BY nome,matricula DESC;
	
SELECT *
	FROM funcionarios
	ORDER BY 4;

SELECT *
	FROM funcionarios
	ORDER BY 3,4,2;
	
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M007','Diogo','Oliveira');

SELECT *
	FROM funcionarios
	ORDER BY 3,4,2;
	
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC, nome DESC, 2 ASC;
	
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;
	

SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, curso.nome;
  
SELECT * FROM curso;
SELECT * FROM aluno;	
  
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, curso.nome;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY curso.nome, aluno.nome DESC;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY curso.nome, aluno.nome;
  
  
  
SELECT * FROM funcionarios;

SELECT * FROM funcionarios LIMIT 5;

SELECT * 
	FROM funcionarios 
	ORDER BY nome
	LIMIT 5;
	
SELECT * 
	FROM funcionarios 
	ORDER BY id
	LIMIT 5
	OFFSET 3;
	
	
	-- COUNT - Retorna a quantidade de registros
-- SUM   - Retorna a soma dos registros
-- MAX   - Retorna o maior valor dos registros
-- MIN   - Retorna o menor valor dos registros
-- AVG   - Retorna a média dos registros

SELECT * 
	FROM funcionarios;
	
SELECT COUNT(id) 
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id)
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id),
	   MAX(id)
	FROM funcionarios;

SELECT COUNT(id),
	   SUM(id),
	   MAX(id),
	   MIN(Id)
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id),
	   MAX(id),
	   MIN(Id),
	   ROUND(AVG(id),0)
	FROM funcionarios;
	
	
	SELECT * 
	FROM funcionarios;
	
SELECT nome 
	FROM funcionarios;

SELECT nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome,
	   sobrenome
	FROM funcionarios
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome, sobrenome
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY 1, 2
	ORDER BY nome;
	
SELECT * 
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id
	GROUP BY 1
	ORDER BY 1;
	
	
	
SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

SELECT * 
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	GROUP BY 1;

SELECT  curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	-- WHERE curso.nome =  'Javascript'
	GROUP BY 1
	HAVING COUNT(aluno.id) > 0;
	
SELECT nome	
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT (id) > 1;
	
SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) > 1;

SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) =1;