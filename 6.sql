-- QUESTÃO 6
-- Parte 1

SELECT m.nome AS medico, COUNT(c.id) AS quantidade_consultas
FROM medico m
LEFT JOIN consulta c ON m.id = c.id_medico
GROUP BY m.nome
ORDER BY m.nome;

-- Parte 2

SELECT e.nome AS especialidade, COUNT(c.id) AS quantidade_consultas
FROM especialidade e
INNER JOIN medico m ON e.id = m.id_especialidade
INNER JOIN consulta c ON m.id = c.id_medico
GROUP BY e.nome;

-- Parte 3

SELECT DATE_FORMAT(c.data_hora_inicio, '%d/%m') AS dia_mes,
       TIMESTAMPDIFF(MINUTE, c.data_hora_inicio, c.data_hora_fim) AS duracao
FROM consulta c
ORDER BY duracao DESC
LIMIT 1;

-- Parte 4

SELECT COUNT(c.id) AS quantidade_consultas, e.nome AS especialidade, m.nome AS medico
FROM consulta c
INNER JOIN medico m ON c.id_medico = m.id
INNER JOIN especialidade e ON m.id_especialidade = e.id
GROUP BY m.id
ORDER BY quantidade_consultas DESC
LIMIT 1;

-- Parte 5

CREATE VIEW todas_consultas AS
SELECT p.nome AS paciente,
       m.nome AS medico,
       e.nome AS especialidade,
       c.data_hora_inicio AS data
FROM consulta c
INNER JOIN paciente p ON c.id_paciente = p.id
INNER JOIN medico m ON c.id_medico = m.id
INNER JOIN especialidade e ON m.id_especialidade = e.id
ORDER BY c.data_hora_inicio;
