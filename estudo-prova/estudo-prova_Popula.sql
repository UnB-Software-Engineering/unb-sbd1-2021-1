-- ---------  << Prova 1 >>  -----------
--
--                  SCRIPT DE CRIACAO (DML) - Popula
--
-- Data Criacao ...........: 20/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: larissasales
--
-- Ultimas Alteracoes
--   20/09/2021 => Criacao dos comandos de popular as tabelas
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE larissasales;

-- TABELAS
INSERT INTO PROFESSOR VALUES (null, '123456', 'Vandor Silva', '1970-05-19', 'M');
INSERT INTO PROFESSOR VALUES (null, '124345', 'Marta Rocha', '1986-03-03', 'F');

INSERT INTO DISCIPLINA VALUES (null, '176987', 'Sistemas de Banco de Dados 1', 'SDB1', 'vespertino', 4);
INSERT INTO DISCIPLINA VALUES (null, '987987', 'Matemática Discreta 1', 'MD1', 'matutino', 4);
INSERT INTO DISCIPLINA VALUES (null, '126376', 'Estrutura de Dados 1', 'ED1', 'matutino', 4);

INSERT INTO email VALUES (null, 'vandor@email.com.br', 1);
INSERT INTO email VALUES (null, 'marta@email.com.br', 2);

INSERT INTO preRequisito VALUES (null, 2, 1);
INSERT INTO preRequisito VALUES (null, 3, 1);

INSERT INTO leciona VALUES (null, 1, 1);
INSERT INTO leciona VALUES (null, 2, 2);
INSERT INTO leciona VALUES (null, 2, 3);