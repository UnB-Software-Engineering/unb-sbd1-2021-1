-- ---------  << Trabalho Final - Tema 2 >>  -----------
--
--                  SCRIPT DE POPULACAO (DML)
--
-- Data Criacao ...........: 24/10/2021
-- Autor(es) ..............: Larissa Siqueira Sales e Marcelo Victor de Sousa Silva
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhoFinalTema2
--
-- Ultimas Alteracoes
--   24/10/2021 => População das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE trabalhoFinalTema2;

-- TABELAS
INSERT INTO USUARIO VALUES ('86475877077', 'Vandor Silva', '72579530', 'Brasil', 'DF', 'Santa Maria',  'Mansões Abrãao I', 
							'Chácara 6', 23, 'Casa amarela', '1970-05-19', 
							'5276800510957425', '2022-08-25', '499', 'Vandor Silva', '86475877077', 
							'vandor@email.com.br', 'mo6safQfLL');
                            
INSERT INTO USUARIO VALUES ('49244252066', 'Cauê Davi Jesus', '97571160', 'Brasil', 'RS', 'Santana do Livramento',  'Registro', 
							'Cândido Ribeiro Borba', 565, null, '1998-02-15', 
							'4556539267357157', '2022-09-25', '888', 'Cândido R Borba', '49244252066', 
							'borba@email.com.br', 'jhasg87AGq');
                            
INSERT INTO USUARIO VALUES ('20564787817', 'Analu Rita Milena da Rocha', '76824054', 'Brasil', 'RO', 'Porto Velho',  'Aponiã', 
							'Rua do Ouro', 922, null, '1983-10-12', 
							'4916748177420550', '2022-05-21', '888', 'Analu R M Rocha', '20564787817', 
							'analu-83@email.com.br', 'OCAztakiHb');
                            
INSERT INTO USUARIO VALUES ('13611013773', 'Emanuel Renan Santos', '79037077', 'Brasil', 'MS', 'Campo Grande',  'Jardim Veraneio', 
							'Travessa Camalote', 409, null, '1968-10-18', 
							'5516344932620501', '2022-06-25', '743', 'Emanuel R Santos', '13611013773', 
							'emanuel.renan@email.com.br', 'yX5fgEkpZS');
                                                        
INSERT INTO USUARIO VALUES ('95069214667', 'Lúcia Andrea Oliveira', '49080902', 'Brasil', 'SE', 'Aracaju',  'Capucho', 
							'Dr Carlos Rodrigues da Cruz', 965, null, '1967-05-14', 
							'5210667221159651', '2022-09-25', '860', 'Lucia A Oliveira', '95069214667', 
							'lucia_lucinha@email.com.br', 'woG9uinNjt');

-- autonomos                            
INSERT INTO USUARIO VALUES ('22733697609', 'Daniel Cláudio Lopes', '66080635', 'Brasil', 'PA', 'Belém',  'Pedreira', 
							'Passagem Maria Cunha', 985, null, '1982-10-29', 
							'5563093932109518', '2022-01-25', '972', 'Daniel C Lopes', '22733697609', 
							'danielclaudiolopes@email.com.br', 'OyL8HekFLN');
                            
INSERT INTO USUARIO VALUES ('69006070556', 'Sérgio Vitor Oliver Vieira', '68900904', 'Brasil', 'AP', 'Macapá',  'Central', 
							'Rua Cândido Mendes 1520', 937, null, '1995-02-15', 
							'4716624556602211', '2023-03-25', '519', 'Sergio V O Vieira', '69006070556', 
							'vieira_svitor@email.com.br', 'ejCBN5m4LX');
                            
INSERT INTO USUARIO VALUES ('85480390007', 'Tatiane Andrea Patrícia Campos', '77024528', 'Brasil', 'TO', 'Palmas',  'Plano Diretor Sul', 
							'Quadra 1206 Sul Alameda 28', 253, null, '1982-01-24', 
							'4532441960550148', '2023-02-25', '291', 'Tatiane A P Campos', '85480390007', 
							'tati.campos00@email.com.br', 'Li5mY7AX9A');
                            
INSERT INTO USUARIO VALUES ('69945667815', 'Ruan Fernando Victor Jesus', '45993437', 'Brasil', 'BA', 'Teixeira de Freitas',  'Liberdade I', 
							'Rua China', 980, null, '1982-01-24', 
							'5557946112622816', '2022-02-25', '872', 'Ruan F V Jesus', '69945667815', 
							'jesus_v_f_renan@email.com.br', '83m4WMhA6X');
                            
INSERT INTO USUARIO VALUES ('79018155667', 'Sara Patrícia Nina Brito', '90046902', 'Brasil', 'RS', 'Porto Alegre',  'Centro Histórico', 
							'Rua Sarmento Leite 425', 485, null, '1986-06-14', 
							'5536207545444310', '2023-09-25', '921', 'Sara P N Brito', '79018155667', 
							'sarinha_brito@email.com.br', '3tT45IEcqs');
                            
INSERT INTO CLIENTE VALUES ('86475877077', 5);
INSERT INTO CLIENTE VALUES ('49244252066', 10);
INSERT INTO CLIENTE VALUES ('20564787817', 1);
INSERT INTO CLIENTE VALUES ('13611013773', 5);
INSERT INTO CLIENTE VALUES ('95069214667', 5);

INSERT INTO AREAATUACAO VALUES (null, 'Cabelo e Unha');
INSERT INTO AREAATUACAO VALUES (null, 'Mecânica');
INSERT INTO AREAATUACAO VALUES (null, 'Elétrica');
INSERT INTO AREAATUACAO VALUES (null, 'Jardinagem');
INSERT INTO AREAATUACAO VALUES (null, 'Construção');

INSERT INTO AUTONOMO VALUES ('22733697609', 'A', 2, 4);
INSERT INTO AUTONOMO VALUES ('69006070556', 'A', 5, 2);
INSERT INTO AUTONOMO VALUES ('85480390007', 'A', 1, 2);
INSERT INTO AUTONOMO VALUES ('69945667815', 'A', 8, 1);
INSERT INTO AUTONOMO VALUES ('79018155667', 'A', 2, 4);

INSERT INTO SERVICO VALUES (null, 'Corte de Cabelo', 1);
INSERT INTO SERVICO VALUES (null, 'Pintura de Cabelo', 1);
INSERT INTO SERVICO VALUES (null, 'Troca de Pneu', 2);
INSERT INTO SERVICO VALUES (null, 'Troca de Oleo', 2);
INSERT INTO SERVICO VALUES (null, 'Instalação de Cerca Elétrica', 3);
INSERT INTO SERVICO VALUES (null, 'Manutenção de Motor de Portão', 3);
INSERT INTO SERVICO VALUES (null, 'Paisagismo', 4);
INSERT INTO SERVICO VALUES (null, 'Corte de Grama', 4);

INSERT INTO ATENDIMENTO VALUES ('2021-10-28', '14:30:00', '22733697609', '86475877077', 'aceito');
INSERT INTO ATENDIMENTO VALUES ('2021-10-19', '16:00:00', '69006070556', '49244252066', 'finalizado');
INSERT INTO ATENDIMENTO VALUES ('2021-11-04', '10:30:00', '85480390007', '20564787817', 'aceito');
INSERT INTO ATENDIMENTO VALUES ('2021-11-05', '11:00:00', '85480390007', '13611013773', 'agendado');
INSERT INTO ATENDIMENTO VALUES ('2021-10-25', '13:30:00', '79018155667', '95069214667', 'aceito');

INSERT INTO AVALIACAO VALUES (null, 5, "Serviço muito bem feito", '86475877077', '22733697609', '2021-10-28', '14:30:00');
INSERT INTO AVALIACAO VALUES (null, 4, "Serviço ótimo, só atrasou um pouco pra chegar", '49244252066', '69006070556', '2021-10-19', '16:00:00');
INSERT INTO AVALIACAO VALUES (null, 5, "Muito bom", '20564787817', '85480390007', '2021-11-04', '10:30:00');
INSERT INTO AVALIACAO VALUES (null, 5, null, '13611013773', '85480390007', '2021-11-05', '11:00:00');
INSERT INTO AVALIACAO VALUES (null, 5, null, '95069214667', '79018155667', '2021-10-25', '13:30:00');

INSERT INTO CONTABANCARIA VALUES ('123456789', '0001', 'Daniel Cláudio Lopes', '22733697609');
INSERT INTO CONTABANCARIA VALUES ('182736346', '0001', 'Sérgio Vitor Oliver Vieira', '69006070556');
INSERT INTO CONTABANCARIA VALUES ('987324617', '0001', 'Tatiane Andrea Patrícia Campos', '85480390007');
INSERT INTO CONTABANCARIA VALUES ('186738764', '0001', 'Ruan Fernando Victor Jesus', '69945667815');
INSERT INTO CONTABANCARIA VALUES ('012930984', '0001', 'Sara Patrícia Nina Brito', '79018155667');

INSERT INTO oferece VALUES ('2021-10-28', '14:30:00', 7, 2, 300.00);
INSERT INTO oferece VALUES ('2021-10-19', '16:00:00', 3, 1, 60.00);
INSERT INTO oferece VALUES ('2021-10-28', '14:30:00', 4, 1, 45.00);
INSERT INTO oferece VALUES ('2021-10-28', '14:30:00', 3, 1, 58.90);
INSERT INTO oferece VALUES ('2021-10-28', '14:30:00', 8, 2, 92.00);