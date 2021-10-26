-- ---------  << Trabalho Final - Tema 2 >>  -----------
--
--                  SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 24/10/2021
-- Autor(es) ..............: Larissa Siqueira Sales e Marcelo Victor de Sousa Silva
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhoFinalTema2
--
-- Ultimas Alteracoes
--   24/10/2021 => Criacao da base e das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS trabalhoFinalTema2
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE trabalhoFinalTema2;

-- TABELAS
CREATE TABLE USUARIO (
    cpf 			VARCHAR(11) 	NOT NULL,
    nomeUsuario 	VARCHAR(50) 	NOT NULL,
    cep 			VARCHAR(8)		NOT NULL,
    pais 			VARCHAR(30) 	NOT NULL,
	uf 				VARCHAR(2)		NOT NULL,
    cidade 			VARCHAR(30) 	NOT NULL,
    bairro 			VARCHAR(30) 	NOT NULL,
    rua 			VARCHAR(30) 	NOT NULL,
    numero 			INT				NOT NULL,
    complemento 	VARCHAR(100),
    dataNascimento 	DATE			NOT NULL,
    numeroCartao 	VARCHAR(16)		NOT NULL,
    validade 		DATE			NOT NULL,
    cvv 			VARCHAR(5)		NOT NULL,
    nomeTitular 	VARCHAR(30)		NOT NULL,
    cpfTitular 		VARCHAR(11)		NOT NULL,
    email 			VARCHAR(50) 	NOT NULL,
    senha 			VARCHAR(16)		NOT NULL,
    CONSTRAINT USUARIO_PK PRIMARY KEY (cpf),
    CONSTRAINT USUARIO_UK UNIQUE (email)
)ENGINE = InnoDB;

CREATE TABLE CLIENTE (
	cpfCliente 		VARCHAR(11) 	NOT NULL,
    diaSalario 		INT				NOT NULL,
    CONSTRAINT CLIENTE_PK PRIMARY KEY (cpfCliente),
    CONSTRAINT CLIENTE_USUARIO_FK FOREIGN KEY (cpfCliente)
		REFERENCES USUARIO (cpf)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)ENGINE = InnoDB;

CREATE TABLE AREAATUACAO (
    idAreaAtuacao 	INT 		NOT NULL	AUTO_INCREMENT,
    nomeAreaAtuacao VARCHAR(30) NOT NULL,
    CONSTRAINT AREAATUACAO_PK PRIMARY KEY (idAreaAtuacao)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AUTONOMO (
	cpfAutonomo 	VARCHAR(11)		NOT NULL,
    ativo 			ENUM('A','I')	NOT NULL,
    diaCobranca 	INT				NOT NULL,
    idAreaAtuacao	INT				NOT NULL,
    CONSTRAINT AUTONOMO_PK PRIMARY KEY (cpfAutonomo),
    CONSTRAINT AUTONOMO_USUARIO_FK FOREIGN KEY (cpfAutonomo)
		REFERENCES USUARIO (cpf)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
    CONSTRAINT AUTONOMO_AREAATUACAO_FK FOREIGN KEY (idAreaAtuacao)
		REFERENCES AREAATUACAO (idAreaAtuacao)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)ENGINE = InnoDB;

CREATE TABLE SERVICO (
    idServico 		INT 		NOT NULL	AUTO_INCREMENT,
    nomeServico 	VARCHAR(30)	NOT NULL,
    idAreaAtuacao	INT			NOT NULL,
    CONSTRAINT SERVICO_PK PRIMARY KEY (idServico),
    CONSTRAINT SERVICO_AREAATUACAO_FK FOREIGN KEY (idAreaAtuacao)
		REFERENCES AREAATUACAO (idAreaAtuacao)
			ON UPDATE CASCADE
			ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ATENDIMENTO (
    dataAtendimento DATE										NOT NULL,
    horaAtendimento TIME										NOT NULL,
    cpfAutonomo 	VARCHAR(11)									NOT NULL,
    cpfCliente 		VARCHAR(11)									NOT NULL,
	status 			ENUM('agendado', 'aceito', 'finalizado')	NOT NULL,
    CONSTRAINT ATENDIMENTO_PK PRIMARY KEY (dataAtendimento, horaAtendimento),
    CONSTRAINT ATENDIMENTO_AUTONOMO_FK FOREIGN KEY (cpfAutonomo)
		REFERENCES AUTONOMO (cpfAutonomo)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
    CONSTRAINT ATENDIMENTO_CLIENTE_FK FOREIGN KEY (cpfCliente)
		REFERENCES CLIENTE (cpfCliente)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)ENGINE = InnoDB;

CREATE TABLE AVALIACAO (
    idAvaliacao 	BIGINT 			NOT NULL	AUTO_INCREMENT,
    notaAvaliacao 	INT				NOT NULL,
    descAvaliacao 	VARCHAR(100),
    cpfCliente 		VARCHAR(11)		NOT NULL,
    cpfAutonomo 	VARCHAR(11)		NOT NULL,
    dataAtendimento DATE			NOT NULL,
    horaAtendimento TIME			NOT NULL,
    CONSTRAINT AVALIACAO_PK PRIMARY KEY (idAvaliacao),
    CONSTRAINT AVALIACAO_CLIENTE_FK FOREIGN KEY (cpfCliente)
		REFERENCES CLIENTE (cpfCliente) 
			ON UPDATE CASCADE
			ON DELETE CASCADE,
    CONSTRAINT AVALIACAO_AUTONOMO_FK FOREIGN KEY (cpfAutonomo)
		REFERENCES AUTONOMO (cpfAutonomo)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
    CONSTRAINT AVALIACAO_ATENDIMENTO_FK FOREIGN KEY (dataAtendimento, horaAtendimento)
		REFERENCES ATENDIMENTO (dataAtendimento, horaAtendimento)
			ON UPDATE CASCADE
			ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CONTABANCARIA (
    numeroConta 		VARCHAR(9)	NOT NULL,
    numeroAgencia 		VARCHAR(5)	NOT NULL,
    nomeTitularConta 	VARCHAR(30)	NOT NULL,
    cpfAutonomo 		VARCHAR(11)	NOT NULL,
    CONSTRAINT CONTABANCARIA_PK PRIMARY KEY (numeroConta, numeroAgencia),
    CONSTRAINT CONTABANCARIA_AUTONOMO_FK FOREIGN KEY (cpfAutonomo)
		REFERENCES AUTONOMO (cpfAutonomo)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)ENGINE = InnoDB;

CREATE TABLE oferece (
    dataAtendimento DATE			NOT NULL,
    horaAtendimento TIME			NOT NULL,
    idServico 		INT				NOT NULL,
    tempoServico 	INT				NOT NULL,
    valorServico 	DECIMAL(8,2)	NOT NULL,
    CONSTRAINT oferece_ATENDIMENTO_FK FOREIGN KEY (dataAtendimento, horaAtendimento)
		REFERENCES ATENDIMENTO (dataAtendimento, horaAtendimento)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
    CONSTRAINT oferece_SERVICO_FK FOREIGN KEY (idServico)
		REFERENCES SERVICO (idServico)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)ENGINE = InnoDB;