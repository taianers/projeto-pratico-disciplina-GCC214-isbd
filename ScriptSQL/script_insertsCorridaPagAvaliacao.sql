INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(1, 234, 120.00, 'Aquenta Sol', 'Lavras', 'MG', 'Perdões','Santa luz','MG', now(),'12345678900', '74226338910');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(1, '1', '1234567890123456','1','123','11/23', null, 1, '12345678900', '74226338910');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(1, 5, 'Serviço ótimo, recomendo!', 1, '12345678900', '74226338910');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(2, 28.5, 15.31, 'Rua Esperança', 'Belo Horizonte', 'MG', 'Lavras','Rua Raul Soares 159','MG', now(),'15440525025', '04797247681');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(2, '1', '4716770493297423','2','118','10/22', null, 2, '15440525025', '04797247681');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(2, 0, 'Péssimo serviço, o piloto chegou atrasado!', 2, '15440525025', '04797247681');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(3, 300, 150.28, 'Rua João Gualberto', 'Juiz de Fora', 'MG', 'Lavras','Rua Professor Alberto Carvalho','MG', now(),'71145175643', '30779797566');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(3, '1', '5191401132511781','1','260','05/24', null, 3, '71145175643', '30779797566');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(3, 4, null, 3, '71145175643', '30779797566');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(4, 54, 21.95, 'Praça da Divisa', 'São Vicente', 'SP', 'São Paulo','Rua Geraldo Magela','SP', now(),'00613146336', '49813853905');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(4, '1', '30284551386695','3','318','12/29', null, 4, '00613146336', '49813853905');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(4, 4, 'Atrasou um pouco, mas o serviço é bom.', 4, '00613146336', '49813853905');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(5, 1300, 250.56, 'Rua São Miguel', 'São Paulo', 'SP', 'Ijaci','Centro','MG', now(),'13243546578', '49813853905');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(5, '1', '4430155695964829','2','460','01/22', null, 5, '13243546578', '49813853905');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(5, 2, null, 5, '13243546578', '49813853905');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(6, 37.4, 24.78, 'Rua Nossa Senhora Aparecida', 'Piracicaba', 'SP', 'Rua Helio Mendoça','João Pinheiro','MG', now(),'64942285348', '94289028454');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(6, '1', '30023154819060','3','927','03/22', null, 6, '64942285348', '94289028454');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(6, 1, 'Péssima qualidade', 6, '64942285348', '94289028454');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(7, 350, 400.53, 'Rua Rei Pelé', 'Santos', 'SP', 'Rua das flores','Paracatu','MG', now(),'12345678900', '28493614106');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(7, '1', '5527140333005913','1','635','02/23', null, 7, '12345678900', '28493614106');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(7, 5, 'Serviço demorado, porém preço acessível', 7, '12345678900', '28493614106');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(8, 95, 183.92, 'Rua Rei Pelé', 'Santos', 'SP', 'Rua São Miguel','São Paulo','SP', now(),'00613146336', '49813853905');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(8, '1', '4539441168402459','1','565','08/29', null, 8, '00613146336', '49813853905');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(8, 5, null, 8, '00613146336', '49813853905');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(9, 288, 234.90, 'Rua são João', 'Pirapora', 'MG', 'Rua Hortência','Patos','MG', now(),'80415810809', '94289028454');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(9, '1', '30015715131282','3','362','08/29', null, 9, '80415810809', '94289028454');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(9, 0, null, 9, '80415810809', '94289028454');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Corrida(idcorrida, distancia, preco, logPartida, cidadePartida, estadoPartida, cidadeDestino, logDestino,
estadoDestino, dataCorrida, Passageiro_Pessoa_CPF, Piloto_Pessoa_CPF)
values(10, 438, 576.34, 'Rua do Ouro', 'Ouro Preto', 'MG', 'Rua Pão de Açucar','Volta Redonda','RJ', now(),'15440525025', '30779797566');

INSERT INTO Pagamento(idPag,tipoPagamento,numCartao,tipoCartao,codSeguranca,dataValidade,troco,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(10, '1', '4532098577426979','2','982','11/21', null, 10, '15440525025', '30779797566');

INSERT INTO Avaliacao(idAvaliacao,qtdEstrelas,comentario,Corrida_idcorrida,Corrida_Passageiro_Pessoa_CPF,Corrida_Piloto_Pessoa_CPF)
values(10, 0, null, 10, '15440525025', '30779797566');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
