
/*Cursos:
a) Mostrar todos os cursos em ordem alfabética pela descrição, sem a coluna ID
b) Mostrar apenas os cursos técnicos, ordenado pela descrição
c) Mostrar todos os cursos do mesmo eixo, ordenado pela carga horária, da menor para a maior
d) Mostrar apenas os cursos técnicos de carga horária maior que 900h
e) Mostrar os cursos que não sejam do eixo de tecnologia da informação*/

--a) 
SELECT descricao_curso, carga_horaria_curso, modalidade, eixo FROM cursos ORDER BY descricao_curso;

--b) 
SELECT * FROM cursos WHERE modalidade = 'Técnico' ORDER BY descricao_curso;

--c) 
SELECT * FROM cursos WHERE eixo = 'Tecnologia da Informação' ORDER BY carga_horaria_curso ASC;

--d) 
SELECT * FROM cursos WHERE modalidade = 'Técnico' AND carga_horaria_curso > 900
ORDER BY carga_horaria_curso;

--e)
SELECT * FROM cursos WHERE eixo != 'Tecnologia da Informação'
ORDER BY descricao_curso;

/*
Utilize as funções de agregação junto à cláusula GROUP BY da linguagem SQL para obter os resultados a seguir:
Cursos: Mostrar a média da carga horária dos cursos por modalidade
*/

SELECT modalidade, AVG(carga_horaria_curso) AS media
FROM cursos
GROUP BY modalidade
ORDER BY media;