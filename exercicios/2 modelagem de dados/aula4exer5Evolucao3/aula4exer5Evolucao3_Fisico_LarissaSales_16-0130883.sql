-- --------  << aula4exer5Evolucao3 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 26/08/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao3
--
-- Ultimas Alteracoes
--   26/08/2021 => Criacao do BD e das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 07 Tabelas
--
-- ---------------------------------------------------------
CREATE DATABASE aula4exer5Evolucao3;

CREATE TABLE MEDICO (
    numeroCrm INT NOT NULL,
    unidadeFederativaCrm VARCHAR(2) NOT NULL,
    nomeMedico VARCHAR(30) NOT NULL,
    especialidade VARCHAR(30) NOT NULL,
    CONSTRAINT MEDICO_PK PRIMARY KEY (numeroCrm, unidadeFederativaCrm),
	CONSTRAINT MEDICO_ESPECIALIDADE_FK FOREIGN KEY (especialidade) REFERENCES ESPECIALIDADE (idEspecialidade)
);

CREATE TABLE PACIENTE (
    idPaciente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(11),
    nomePaciente VARCHAR(30) NOT NULL,
    dataNascimento DATE,
    sexo VARCHAR(11) NOT NULL,
    pais VARCHAR(30),
    cep VARCHAR(8),
    estado VARCHAR(30),
    cidade VARCHAR(30),
    bairro VARCHAR(30),
    numero INT,
    complemento VARCHAR(30),
	CONSTRAINT PACIENTE_PK PRIMARY KEY (idPaciente)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE RECEITA (
    idReceita INT NOT NULL AUTO_INCREMENT,
    idConsulta INT NOT NULL,
    idPaciente INT NOT NULL,
    dataPrescricao DATE NOT NULL,
    CONSTRAINT RECEITA_PK PRIMARY KEY (idReceita),
	CONSTRAINT RECEITA_PACIENTE_FK FOREIGN KEY (idPaciente) REFERENCES PACIENTE(idPaciente),
	CONSTRAINT RECEITA_CONSULTA_FK FOREIGN KEY (idConsulta) REFERENCES CONSULTA(idConsulta)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CONSULTA (
    idConsulta INT NOT NULL AUTO_INCREMENT,
    numeroCrm INT NOT NULL,
    unidadeFederativaCrm VARCHAR(2) NOT NULL,
    idPaciente INT NOT NULL,
    dataConsulta DATE NOT NULL,
    horaConsulta TIME NOT NULL,
	CONSTRAINT CONSULTA_PK PRIMARY KEY (idConsulta),
    CONSTRAINT CONSULTA_UK UNIQUE (idPaciente, dataConsulta, horaConsulta, numeroCrm, unidadeFederativaCrm)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE MEDICAMENTO (
    idMedicamento INT NOT NULL AUTO_INCREMENT,
    nomeMedicamento VARCHAR(30) NOT NULL,
    principioAtivo VARCHAR(30) NOT NULL,
	CONSTRAINT MEDICAMENTO_PK PRIMARY KEY (idMedicamento)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESPECIALIDADE (
    idEspecialidade INT NOT NULL AUTO_INCREMENT,
    nomeEspecialidade VARCHAR(30) NOT NULL,
	CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY (idEspecialidade)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE telefone (
    idTelefone INT  NOT NULL AUTO_INCREMENT,
    idPaciente INT NOT NULL,
    telefone VARCHAR(30),
	CONSTRAINT telefone_PK PRIMARY KEY (idTelefone),
	CONSTRAINT telefone_PACIENTE_FK FOREIGN KEY (idPaciente) REFERENCES PACIENTE(idPaciente)
)ENGINE = InnoDB AUTO_INCREMENT = 1;