-- ---------  << Exercício Extra 1 da Aula 9 >>  -----------
--
--                  SCRIPT DE POPULACAO (DML)
--
-- Data Criacao ...........: 27/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula9extra1
--
-- Ultimas Alteracoes
--   27/09/2021 => Criacao dos comandos de popular as tabelas
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula9extra1;

-- TABELAS
INSERT INTO ESTADO VALUES ('PE', 'Pernambuco');
INSERT INTO ESTADO VALUES ('DF', 'Distrito Federal');
INSERT INTO ESTADO VALUES ('PB', 'Paraíba');

INSERT INTO CIDADE VALUES (null, 'Recife', 'PE', 1555000);
INSERT INTO CIDADE VALUES (null, 'Olinda', 'PE', 393115);
INSERT INTO CIDADE VALUES (null, 'Garanhuns', 'PE', 140577);
INSERT INTO CIDADE VALUES (null, 'Brasília', 'DF', 3094325);
INSERT INTO CIDADE VALUES (null, 'Taguatinga', 'DF', 222598);
INSERT INTO CIDADE VALUES (null, 'João Pessoa', 'PB', 817511);
INSERT INTO CIDADE VALUES (null, 'Campina Grande', 'PB', 402912);

