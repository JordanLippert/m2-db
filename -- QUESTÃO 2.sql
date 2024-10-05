-- QUESTÃO 2 

INSERT INTO Especialidade(nome) VALUES
	('Cardiologia'),
	('Oftalmologia'),
	('Pediatria');
	
INSERT INTO Medico(id_especialidade, nome, celular) VALUES 
	(1, 'Beatriz', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	(3, 'José', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	(1, 'Ana', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	(2, 'Gustavo', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	(3, 'Carlos', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	(1, 'Paulo', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000)));
	
INSERT INTO Paciente(nome, celular) VALUES
	('Marina', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	('Marcos', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	('Maicon', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	('Roberta', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	('Joaquim', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	('Bianca', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000))),
	('Pedro', CONCAT('(47) 9', FLOOR(RAND() * 90000 + 10000), '-', FLOOR(RAND() * 90000 + 10000)));
	
INSERT INTO Consulta(id_medico, id_paciente, data_hora_inicio, data_hora_fim) VALUES
	((SELECT id FROM Medico WHERE nome = 'Beatriz'), (SELECT id FROM Paciente WHERE nome = 'Roberta'), '2024-12-08 10:00:00','2024-12-08 11:30:00'),
	((SELECT id FROM Medico WHERE nome = 'Beatriz'), (SELECT id FROM Paciente WHERE nome = 'Joaquim'), '2024-12-08 11:30:00','2024-12-08 12:00:00'),
	((SELECT id FROM Medico WHERE nome = 'Beatriz'), (SELECT id FROM Paciente WHERE nome = 'Bianca'), '2024-12-08 13:30:00','2024-12-08 14:30:00'),
	
	((SELECT id FROM Medico WHERE nome = 'José'), (SELECT id FROM Paciente WHERE nome = 'Marcos'), '2024-12-08 08:00:00','2024-12-08 10:00:00'),
	((SELECT id FROM Medico WHERE nome = 'José'), (SELECT id FROM Paciente WHERE nome = 'Maicon'), '2024-12-08 10:00:00','2024-12-08 11:00:00'),
	((SELECT id FROM Medico WHERE nome = 'José'), (SELECT id FROM Paciente WHERE nome = 'Marina'), '2024-12-08 11:00:00','2024-12-08 12:00:00');
	
INSERT INTO Consulta(id_medico, id_paciente, data_hora_inicio, data_hora_fim) VALUES
	((SELECT id FROM Medico WHERE nome = 'Paulo'), (SELECT id FROM Paciente WHERE nome = 'Pedro'), '2024-12-09 08:30:00','2024-12-08 09:00:00'),

	((SELECT id FROM Medico WHERE nome = 'Gustavo'), (SELECT id FROM Paciente WHERE nome = 'Pedro'), '2024-12-09 09:00:00','2024-12-08 10:00:00'),	
	((SELECT id FROM Medico WHERE nome = 'Gustavo'), (SELECT id FROM Paciente WHERE nome = 'Joaquim'), '2024-12-09 11:00:00','2024-12-08 12:00:00'),
	((SELECT id FROM Medico WHERE nome = 'Gustavo'), (SELECT id FROM Paciente WHERE nome = 'Bianca'), '2024-12-09 13:30:00','2024-12-08 14:30:00'),
	((SELECT id FROM Medico WHERE nome = 'Gustavo'), (SELECT id FROM Paciente WHERE nome = 'Marcos'), '2024-12-09 14:30:00','2024-12-08 15:00:00');
	