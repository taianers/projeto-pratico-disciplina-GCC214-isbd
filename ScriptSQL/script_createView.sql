-- Cria uma view para recuperar dados de viagens feitas por Passageiros 
CREATE VIEW pilotoPassageiro AS
	SELECT pe.nome AS Passageiro, ps.nome AS Piloto, c.cidadePartida, c.logDestino AS cidadeDestino, c.distancia, c.preco
		FROM corrida c JOIN passageiro p ON c.Passageiro_Pessoa_CPF = p.Pessoa_CPF
		JOIN pessoa pe ON p.Pessoa_CPF = pe.CPF
		JOIN piloto pi ON c.Piloto_Pessoa_CPF = pi.Pessoa_CPF
		JOIN pessoa ps ON pi.Pessoa_CPF = ps.CPF;

-- usando a view pilotoPassageiro para recuperar maior viagem registrada 
SELECT passageiro, piloto, MAX(distancia) AS 'Distância máxima'
FROM pilotoPassageiro;

-- usando a view pilotoPassageiro para recuperar os pilotos com quem o passageiro Denilson já viajou
SELECT piloto
FROM pilotoPassageiro
WHERE passageiro = 'Denilson';

-- cria uma view com número de telefone e cpf de pessoas cadastradas
CREATE VIEW pessoaTelefone AS
	SELECT p.nome, p.cpf, t.telefone
	FROM telefonepessoa t JOIN pessoa p ON t.Pessoa_CPF = p.CPF;

-- usa a view pessoatelefone para recuperar telefone de pessoas que são passageiros
SELECT nome, telefone
FROM pessoatelefone JOIN passageiro p ON cpf = p.Pessoa_CPF;

-- usa a view pessoatelefone para recuperar telefones com DDD 35
SELECT nome, telefone
FROM pessoatelefone
WHERE telefone LIKE '35%'; 

-- cria uma view com pilotos e suas motos cadastradas
CREATE VIEW pilotoMoto AS
	SELECT p.nome, m.placa, m.ano, m.cor
	FROM piloto pi NATURAL JOIN moto m
	JOIN pessoa p ON pi.Pessoa_CPF = p.CPF;
    
-- usa a view pilotomoto para recuperar pilotos com motos de ano 2019 ou mais recentes
SELECT nome, placa, ano
FROM pilotomoto
WHERE ano >= '2019';

-- usa a view pilotomoto para recuperar pilotos com motos de cor prata
SELECT nome, placa, cor
FROM pilotomoto
WHERE cor = 'Prata';