-- -------- << Exercício 6 da Aula 4 - DETRAN >> --------
--
--                  SCRIPT DE MANIPULACAO (DML) - Poupula
--
-- Data Criacao ...........: 07/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer6
--
-- Ultimas Alteracoes
--   07/09/2021 => População das tabelas
-- -------------------------------------------------------------
-- PROJETO => 01 base
--         => 06 Tabelas
--
-- -------------------------------------------------------------

-- BASE DE DADOS
USE aula4exer6;

-- TABELAS
INSERT INTO PESSOA VALUES ('84110370027', 'José da Silva', 'Casa Grande', 'Recife', 'PE', 1986-05-22, 'M');
INSERT INTO PESSOA VALUES ('38294913014', 'Augusta Ferreira', 'Asa Norte', 'Brasília', 'DF', 1976-03-04, 'F');
INSERT INTO PESSOA VALUES ('62355400008', 'Clara Santos', 'Setor Leste', 'Gama', 'DF', 1995-11-20, 'F');

INSERT INTO telefone VALUES ('84110370027', '61982824050');
INSERT INTO telefone VALUES ('38294913014', '61985674863');
INSERT INTO telefone VALUES ('62355400008', '61993784563');

INSERT INTO VEICULO VALUES ('JHZ-9100', '87569863568', 165, 1, '84110370027');
INSERT INTO VEICULO VALUES ('KCK-7716', '19230107452', 85, 1, '38294913014');
INSERT INTO VEICULO VALUES ('NAD-5563', '92664741179', 92, 1, '62355400008');

INSERT INTO AGENTE VALUES ('87357463', 'Sandra Dias', 2013-05-01);
INSERT INTO AGENTE VALUES ('71723681', 'Alvaro Ribeiro', 2016-02-01);
INSERT INTO AGENTE VALUES ('12653479', 'Claudio Paiva', 2019-09-01);

INSERT INTO LUGAR VALUES (32, 37.4267861, -122.0806032, 80);
INSERT INTO LUGAR VALUES (34, 40.7142484, -73.9614103, 60);
INSERT INTO LUGAR VALUES (90, 25.1236876, 34.1827367, 80);

INSERT INTO INFRACAO VALUES (880.41, 2021-03-03, 20:30:27, null, 502-91, 'JHZ-9100', '87357463', '84110370027', 32);
INSERT INTO INFRACAO VALUES (880.41, 2021-03-03, 20:35:30, null, 502-91, 'KCK-7716', '87357463', '38294913014', 32);
INSERT INTO INFRACAO VALUES (880.41, 2021-03-03, 21:02:23, null, 502-91, 'NAD-5563', '87357463', '62355400008', 32);