
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