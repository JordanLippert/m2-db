-- QUESTÃO 1
CREATE SCHEMA consultorio;

USE consultorio;

CREATE TABLE Especialidade (
    id integer PRIMARY KEY auto_increment,
    nome varchar(50) NOT NULL
);

CREATE TABLE Paciente (
    id integer PRIMARY KEY auto_increment,
    nome varchar(100) NOT NULL,
    celular varchar(15) NOT NULL
);

CREATE TABLE Medico (
    id integer PRIMARY KEY auto_increment,
    id_especialidade integer,
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id),
    nome varchar(50) NOT NULL,
    celular varchar(15) NOT NULL
);

CREATE TABLE Consulta (
    id integer PRIMARY KEY auto_increment,
    id_medico integer,
    id_paciente integer,
    FOREIGN KEY (id_medico) REFERENCES Medico(id),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id),
    data_hora_inicio DATETIME,
    data_hora_fim DATETIME
);
