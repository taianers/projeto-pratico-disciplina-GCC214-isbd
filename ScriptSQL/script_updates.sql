-- Alterando o endereço de uma pessoa

UPDATE Pessoa SET CEP = '12335390', estado = 'SP', cidade = 'Jacareí', bairro = 'Parque Meia Lua', log = 'Rua José Aristeu da Cunha', num = '638'
WHERE CPF = '94289028454';

-- Alterando o RG de um passageiro

UPDATE Passageiro SET RG = '464096947' WHERE Pessoa_CPF = '15440525025';

-- Alterando a CNH de um piloto

UPDATE Piloto SET CNH = '55619473899' WHERE Pessoa_CPF = '60098656465';

-- Alterando o cor de uma moto

UPDATE Moto SET cor = 'Vermelha' WHERE Placa = 'NAV6805';

-- Alterando o telefone de uma pessoa usando aninhamento

UPDATE telefonePessoa SET telefone = '12987482224' WHERE Pessoa_CPF IN (SELECT CPF FROM Pessoa WHERE (nome = 'Juliana' AND sobrenome = 'Galvani Gregh'));