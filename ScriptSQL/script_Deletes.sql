-- Deletando um piloto pelo CPF
DELETE FROM piloto WHERE Pessoa_CPF = '02855606896';

-- Deletando um passageiro pelo RG
DELETE FROM passageiro WHERE RG = '127467531';

-- Deletando a avaliação de identificação 9
DELETE FROM avaliacao WHERE idAvaliacao = 9;

-- Deletando o pagamento do passageiro de cpf 12345678900 e piloto de cpf 28493614106
DELETE FROM pagamento WHERE Corrida_Passageiro_Pessoa_CPF = '12345678900' AND Corrida_Piloto_Pessoa_CPF = '28493614106';

-- Deletando por aninhamento a piloto Aline Teixeira Alves
DELETE FROM Piloto WHERE Pessoa_CPF IN (SELECT CPF FROM Pessoa WHERE (nome = 'Aline' AND sobrenome = 'Teixeira Alves'));
