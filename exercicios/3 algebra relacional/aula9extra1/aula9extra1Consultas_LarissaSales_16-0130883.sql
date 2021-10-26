-- ---------  << Exercício Extra 1 da Aula 9 >>  -----------
--
--                  SCRIPT DE CONSULTAS (DML)
--
-- Data Criacao ...........: 27/09/2021
-- Autor(es) ..............: Larissa Siqueira Sales
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula9extra1
--
-- Ultimas Alteracoes
--   27/09/2021 => Criacao dos comandos de consultar as tabelas
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula9extra1;

-- CONSULTAS
SELECT sigla, nome FROM aula9extra1.ESTADO WHERE sigla='SP' or sigla='DF';

SELECT nome, sigla FROM aula9extra1.CIDADE WHERE sigla='RJ' or sigla='DF' or sigla='GO';

SELECT CIDADE.nome, ESTADO.nome, CIDADE.sigla FROM aula9extra1.CIDADE, aula9extra1.ESTADO 
	WHERE ESTADO.sigla='PE' and CIDADE.sigla='PE';
    
SELECT ESTADO.nome, ESTADO.sigla, CIDADE.nome, CIDADE.habitantes FROM aula9extra1.CIDADE, aula9extra1.ESTADO 
	WHERE ESTADO.sigla='PB' and CIDADE.sigla='PB' ORDER BY ESTADO.nome and CIDADE.nome;