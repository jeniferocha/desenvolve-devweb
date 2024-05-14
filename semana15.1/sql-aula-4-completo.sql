CREATE DATABASE alura2;

CREATE TABLE academico.aluno (
    id SERIAL PRIMARY KEY,
	primeiro_nome VARCHAR(255) NOT NULL,
	ultimo_nome VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL
);

CREATE TABLE academico.categoria (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE academico.curso (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria_id INTEGER NOT NULL REFERENCES academico.categoria(id)
);

CREATE TABLE academico.aluno_curso (
	aluno_id INTEGER NOT NULL REFERENCES academico.aluno(id),
	curso_id INTEGER NOT NULL REFERENCES academico.curso(id),
	PRIMARY KEY (aluno_id, curso_id)
);

CREATE SCHEMA academico;
DROP TABLE aluno, categoria, curso, aluno_curso;

INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) VALUES (
	'Vinicius', 'Dias', '1997-10-15'
), (
	'Patricia', 'Freitas', '1986-10-25'
), (
	'Diogo', 'Oliveira', '1984-08-27'
), (
	'Maria', 'Rosa', '1985-01-01'
);

INSERT INTO categoria (nome) VALUES ('Front-end'), ('Programação'), ('Bancos de dados'), ('Data Science');

INSERT INTO curso (nome, categoria_id) VALUES
	('HTML', 1),
	('CSS', 1),
	('JS', 1),
	('PHP', 2),
	('Java', 2),
	('C++', 2),
	('PostgreSQL', 3),
	('MySQL', 3),
	('Oracle', 3),
	('SQL Server', 3),
	('SQLite', 3),
	('Pandas', 4),
	('Machine Learning', 4),
	('Power BI', 4);
	
INSERT INTO aluno_curso VALUES (1, 4), (1, 11), (2, 1), (2, 2), (3, 4), (3, 3), (4, 4), (4, 6), (4, 5);

SELECT aluno.primeiro_nome,
    aluno.ultimo_nome,
    COUNT(aluno_curso.curso_id) numero_cursos
FROM aluno
JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
GROUP BY 1, 2
ORDER BY numero_cursos DESC
LIMIT 1;
   
SELECT curso.nome,
    COUNT(aluno_curso.aluno_id) numero_alunos
FROM curso
JOIN aluno_curso ON aluno_curso.curso_id = curso.id
GROUP BY 1
ORDER BY numero_alunos DESC
LIMIT 1;


SELECT * FROM curso WHERE categoria_id = 1 OR categoria_id = 2;

SELECT * FROM curso WHERE categoria_id IN (1,2);

SELECT * FROM curso WHERE categoria_id IN (
    SELECT id FROM categoria WHERE nome NOT LIKE ('% %')
);


SELECT categoria,
    numero_cursos
FROM (
    SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
    GROUP BY categoria
) AS categoria_cursos
WHERE numero_cursos > 3;

SELECT * FROM vw_cursos_por_categoria;
DROP VIEW vw_cursos_por_categoria;

CREATE VIEW vw_cursos_por_categoria AS SELECT categoria.nome AS categoria,
		COUNT(curso.id) AS numero_cursos
	FROM categoria
	JOIN curso ON curso.categoria_id = categoria.id
	GROUP BY categoria
	
SELECT * FROM vw_cursos_programacao;	
DROP VIEW   vw_cursos_programacao;	
CREATE VIEW vw_cursos_programacao AS SELECT nome FROM curso WHERE categoria_id = 2;	


SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo FROM aluno;

SELECT UPPER(CONCAT('Vinicius', NULL, 'Dias') || ' ');

SELECT TRIM(UPPER(CONCAT('Vinicius', NULL, 'Dias') || ' '));



SELECT (primeiro_nome || ultimo_nome) AS nome_completo, data_nascimento FROM aluno;

SELECT (primeiro_nome || ultimo_nome) AS nome_completo, NOW()::DATE, data_nascimento FROM aluno;

SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    AGE(data_nascimento) AS idade
FROM aluno;
  
SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
FROM aluno;

SELECT pi();

SELECT @ -17581452174;


SELECT TO_CHAR(NOW(), 'DD, MONTH, YYYY');

SELECT TO_CHAR(128.3::REAL,'9999099');