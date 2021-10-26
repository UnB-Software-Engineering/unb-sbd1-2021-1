-- ---------  << Exercício Extra 1 da Aula 9 >>  -----------
--
--                  SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 27/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula9extra1
--
-- Ultimas Alteracoes
--   27/09/2021 => Criacao da base e das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS aula9extra1
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE aula9extra1;

-- TABELAS
CREATE TABLE ESTADO (
    sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(20) NOT NULL,
    CONSTRAINT ESTADO_PK PRIMARY KEY (sigla)
);

CREATE TABLE CIDADE (
    codigo INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    habitantes BIGINT NOT NULL,
    CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
    CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla) 
		REFERENCES ESTADO(sigla)
			ON DELETE CASCADE
            ON UPDATE CASCADE,
	CONSTRAINT sigla_nome_UK UNIQUE (sigla, nome)
) ENGINE = InnoDB AUTO_INCREMENT = 1;