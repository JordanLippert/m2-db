-- QUESTÃO 3 E 4 

UPDATE Paciente 
SET celular = '(47) 91234-5678'
WHERE nome = 'Bianca';

UPDATE Paciente
SET celular = '(47) 98765-4321'
WHERE nome = 'Marcos';


DELETE FROM Consulta
	WHERE id_medico = (SELECT id FROM Medico WHERE nome = 'Beatriz')
	AND id_paciente = (SELECT id FROM Paciente WHERE nome = 'Bianca')
	AND data_hora_inicio = '2024-12-08 13:30:00';