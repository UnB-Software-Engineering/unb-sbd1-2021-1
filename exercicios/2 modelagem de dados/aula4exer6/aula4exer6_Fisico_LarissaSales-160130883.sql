-- ---------  << Exercício 6 da Aula 4 - DETRAN >>  -----------
--
--                  SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 07/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer6
--
-- Ultimas Alteracoes
--   07/09/2021 => Criacao da base
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS aula4exer6
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE aula4exer6;

-- TABELAS
CREATE TABLE PESSOA (
    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    dataNascimento DATE NOT NULL,
    sexo ENUM('F', 'M') NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf),
);

CREATE TABLE telefone (
    idTelefone INT AUTO_INCREMENT,
    idPessoa VARCHAR(30) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
	CONSTRAINT telefone_PK PRIMARY KEY (idTelefone),
	CONSTRAINT telefone_PESSOA_FK FOREIGN KEY (idPessoa) REFERENCES PESSOA(idPessoa)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VEICULO (
    placa VARCHAR(8) NOT NULL,
    renavan VARCHAR(11) UNIQUE NOT NULL,
    codigoModelo INTEGER NOT NULL,
    codigoCategoria INTEGER NOT NULL,
    idPessoa VARCHAR(11) NOT NULL,
    CONSTRAINT VEICULO_PK PRIMARY KEY (placa),
    CONSTRAINT VEICULO_PESSOA_FK FOREIGN KEY (idPessoa) REFERENCES PESSOA (cpf)
);

CREATE TABLE AGENTE (
    matricula VARCHAR(8) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    dataContratacao DATE NOT NULL,
    CONSTRAINT AGENTE_PK PRIMARY KEY (matricula)
);

CREATE TABLE LUGAR (
    codigoLugar INTEGER NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    velocidadePermitida INTEGER NOT NULL,
    CONSTRAINT LUGAR_PK PRIMARY KEY (codigoLugar),
);

CREATE TABLE INFRACAO (
    idInfracao INTEGER NOT NULL AUTO_INCREMENT,
    valorInfracao FLOAT NOT NULL,
    dataInfracao DATE NOT NULL,
    horaInfracao TIME NOT NULL,
    velocidadeAferida FLOAT,
    codigoInfracao INTEGER NOT NULL,
    veiculoInfrator INTEGER NOT NULL,
    idAgente VARCHAR(30) NOT NULL,
    idPessoa VARCHAR(11) NOT NULL,
    idLugar INTEGER NOT NULL,
    CONSTRAINT INFRACAO_PK PRIMARY KEY (idInfracao),
    CONSTRAINT INFRACAO_AGENTE_FK FOREIGN KEY (idAgente) REFERENCES AGENTE (matricula),
    CONSTRAINT INFRACAO_PESSOA_FK FOREIGN KEY (idPessoa) REFERENCES PESSOA (cpf),
    CONSTRAINT INFRACAO_LUGAR_FK FOREIGN KEY (idLugar) REFERENCES LUGAR (codigoLugar)
) ENGINE = InnoDB AUTO_INCREMENT = 1;