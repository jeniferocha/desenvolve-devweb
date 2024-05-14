CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(225),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL, 
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em TIMESTAMP
);

SELECT * FROM aluno;



INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Jenifer',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	32,
	100.50,
	1.64,
	TRUE,
	'1991-05-20',
	'17:30:00',
	'2024-05-06 15:32:45'
);

 SELECT * FROM aluno;
 

  SELECT * 
   FROM aluno
  WHERE ID = 1;

 UPDATE aluno
 SET nome = 'Maya',
	cpf = '10987654321',
	observacao ='Teste',
	idade = 38,
	dinheiro = 15.32,
	altura = 1.90,
	ativo = FALSE,
	data_nascimento = '1980-01-15',
	hora_aula = '13:00:00',
	matriculado_em = '2020-01-02 15:00:00'
  WHERE id = 1;	
  
INSERT INTO aluno (nome) VALUES('João Roberto');
INSERT INTO aluno (nome) VALUES('Diego');
INSERT INTO aluno (nome) VALUES('Douglas');


DELETE 
   FROM aluno
  WHERE nome = 'Jenifer';
  
   SELECT nome,
 		idade,
		matriculado_em
  FROM aluno;
  
   SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;  
  
  
  SELECT *
  FROM aluno
 WHERE nome= 'Maya';
 
SELECT *
  FROM aluno
 WHERE nome <> 'Maya';
 
SELECT *
  FROM aluno
 WHERE nome != 'Maya';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '_aya';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'Ma_a';
 
SELECT *
  FROM aluno
 WHERE nome NOT LIKE 'Ma_a';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'M%';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%a';
 
 SELECT *
  FROM aluno
 WHERE nome LIKE '% %';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%y%a%';
 
 
 SELECT *
  FROM aluno
 WHERE cpf IS NULL;
 
SELECT *
  FROM aluno
 WHERE cpf IS NOT NULL;

  SELECT *
  FROM aluno
 WHERE idade = 35;
 
 SELECT *
  FROM aluno
 WHERE idade <> 36;
 
 SELECT *
  FROM aluno
 WHERE idade >= 35;
 
  SELECT *
  FROM aluno
 WHERE idade <= 35;
 
 SELECT *
  FROM aluno
 WHERE idade > 35;
 
 SELECT *
  FROM aluno
 WHERE idade < 100;
 
 SELECT *
  FROM aluno
 WHERE idade BETWEEN 10 AND 40;
 
 SELECT * FROM aluno WHERE ativo = true;
 SELECT * FROM aluno WHERE ativo = false; 
 SELECT * FROM aluno WHERE ativo IS NULL;
 
 
 SELECT *
  FROM aluno
 WHERE nome LIKE 'M%'
   AND cpf IS NOT NULL;
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Maya'
   OR nome LIKE 'Rodrigo';
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
    OR nome LIKE 'Rodrigo'
	OR nome LIKE 'Maya%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE '%Roberto'
	AND nome LIKE 'Maya%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
	OR nome LIKE 'Maya%';