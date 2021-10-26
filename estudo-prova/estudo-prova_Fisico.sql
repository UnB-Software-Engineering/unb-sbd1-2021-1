-- ---------  << Prova 1 >>  -----------
--
--                  SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: larissasales
--
-- Ultimas Alteracoes
--   20/09/2021 => Criacao da base e das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS larissasales
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE larissasales;

CREATE TABLE PROFESSOR (
    idProfessor INT NOT NULL AUTO_INCREMENT,
    matricula VARCHAR(6) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    dataNascimento DATE NOT NULL,
    sexo ENUM('F', 'M') NOT NULL,
    CONSTRAINT PROFESSOR_PK PRIMARY KEY (idProfessor)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE DISCIPLINA (
    idDisciplina INT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(6) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    sigla VARCHAR(10) NOT NULL,
    periodo ENUM('matutino', 'vespertino', 'noturno') NOT NULL,
    creditos INT NOT NULL,
    CONSTRAINT DISCIPLINA_PK PRIMARY KEY (idDisciplina)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE email (
    idEmail INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(30) NOT NULL,
    idProfessor INT NOT NULL,
    CONSTRAINT email_PK PRIMARY KEY (idEmail),
    CONSTRAINT email_PROFESSOR_FK FOREIGN KEY (idProfessor) REFERENCES PROFESSOR(idProfessor)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE preRequisito (
    idPreRequisito INT NOT NULL AUTO_INCREMENT,
    preRequisito INT NOT NULL,
    idDisciplina INT NOT NULL,
    CONSTRAINT idPreRequisito_PK PRIMARY KEY (idPreRequisito),
    CONSTRAINT preRequisito_DISCIPLINA_FK FOREIGN KEY (idDisciplina) REFERENCES DISCIPLINA(idDisciplina),
    CONSTRAINT idDisciplina_DISCIPLINA_FK FOREIGN KEY (idDisciplina) REFERENCES DISCIPLINA(idDisciplina)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE leciona (
    idLeciona INT NOT NULL AUTO_INCREMENT,
    idProfessor INT NOT NULL,
    idDisciplina INT NOT NULL,
    CONSTRAINT leciona_PK PRIMARY KEY (idLeciona),
    CONSTRAINT leciona_PROFESSOR_FK FOREIGN KEY (idProfessor) REFERENCES PROFESSOR(idProfessor),
    CONSTRAINT leciona_DISCIPLINA_FK FOREIGN KEY (idDisciplina) REFERENCES DISCIPLINA(idDisciplina)
) ENGINE = InnoDB AUTO_INCREMENT = 1;