
 -- Recupera o nome ordenado e cpf de todas as mulheres cadastradas
SELECT nome, cpf
FROM Pessoa
WHERE sexo = 'F'
ORDER BY nome;

-- recupera nome e bairro dos passageiros do sexo feminino e que não moram na UFLA
SELECT p.nome, p.bairro
FROM pessoa p JOIN passageiro pa ON p.CPF = pa.Pessoa_CPF
WHERE NOT p.bairro = "UFLA" AND p.sexo = "F";


-- Recupera os estados em que temos pilotos cadastrados
SELECT DISTINCT estado AS 'Temos pilotos cadastrados em'
FROM pessoa, piloto
WHERE pessoa.CPF = piloto.Pessoa_CPF;


-- Recupera nome de pessoas que começam com a letra A, seu sobrenome e data de Nascimento
SELECT nome, sobrenome, dataNascimento
FROM Pessoa
WHERE nome LIKE 'A%';


-- Recupera o nome, cpf da pessoa, ano e cor da moto de placa 'NFB9054'
SELECT nome, cpf, ano, cor
FROM Pessoa JOIN Piloto ON Pessoa.CPF=Piloto.Pessoa_CPF NATURAL JOIN Moto
WHERE placa = 'NFB9054';


-- Recupera o CPF do piloto cuja corrida obteu-se 5 estrelas e o preco entre 100 a 200 reais
SELECT Piloto_Pessoa_CPF, preco
FROM Corrida C JOIN Avaliacao A ON C.idCorrida=A.Corrida_idCorrida
WHERE qtdEstrelas = '5' AND preco BETWEEN 100.00 AND 200.00;


-- Recupera todos os nome dos Pilotso que tenha, percorrido a distancia maior que 100km ou a moto seja da cor PRATA
SELECT ALL  P.nome
FROM  Pessoa P, Corrida C
WHERE C.distancia>100 AND C.Piloto_Pessoa_CPF=P.CPF 
UNION 
SELECT P.nome
FROM Pessoa P, Moto M, Piloto Pl
WHERE M.cor = 'Prata' AND M.placa=Pl.placa AND Pl.Pessoa_CPF=P.CPF;


-- Agrupa por tipo de cartao e retorna o tipo do Cartão e a quantidade de cada, quando o tipo do cartao é maior que 1
SELECT tipoCartao, count(*) AS 'Quantidade'
FROM Corrida C JOIN Pagamento P ON P.Corrida_idCorrida=C.idCorrida
GROUP BY tipoCartao
HAVING tipoCartao>1;



-- Recupera o nome, sexo e estado dos pilotos que possuem placa 'JVE9775' OU que a cor da sua moto seja vermelha
SELECT nome, sexo, estado
FROM Piloto LEFT OUTER JOIN Pessoa ON Pessoa.CPF=Piloto.Pessoa_CPF 
WHERE placa = 'JVE9775' OR 
		placa IN (SELECT placa
					FROM Moto M
                    WHERE M.cor = 'Vermelha');



 -- Recupera nome, sexo, estado da placa = 'JVE9775' OU quando o troco do pagamento for nulo.
SELECT nome, sexo, estado
FROM Piloto LEFT OUTER JOIN Pessoa ON Pessoa.CPF=Piloto.Pessoa_CPF 
WHERE placa = 'JVE9775' OR 
		Pessoa_CPF IN (SELECT Pessoa_CPF
					FROM Pagamento RIGHT OUTER JOIN Corrida ON Corrida.idCorrida=Pagamento.Corrida_idCorrida JOIN Piloto ON Piloto.Pessoa_CPF=Corrida.Piloto_Pessoa_CPF
                    WHERE troco IS NULL);
                    
                    
-- Seleciona os precos de corridas de Minas que sao maiores do que o maior valor de uma corrida em Sao Paulo
SELECT estadoPartida, preco
FROM Corrida 
WHERE estadoPartida='MG'AND preco >SOME (SELECT MAX(preco)
											FROM Corrida
											WHERE estadoPartida = 'SP');
                    


-- Recupera o nome, cidade de origem e cidade de destino dos passageiros que viajaram com motorista Osvaldo
SELECT p.nome, c.cidadePartida AS Origem, c.cidadeDestino AS Destino
FROM corrida c JOIN pessoa p ON c.Passageiro_Pessoa_CPF = p.CPF
WHERE EXISTS (SELECT *
			  FROM corrida c JOIN piloto p ON c.Piloto_Pessoa_CPF = p.Pessoa_CPF
			  JOIN pessoa pe ON p.Pessoa_CPF = pe.CPF
              WHERE nome = "Osvaldo" AND p.CPF = c.Passageiro_Pessoa_CPF);
              

-- Recupera o nome e sobrenome dos pilotos ordenados por melhores avaliações
SELECT DISTINCT p.nome, p.sobrenome, a.qtdEstrelas AS Avaliação, a.comentario
FROM avaliacao a NATURAL JOIN corrida c
	JOIN pessoa p ON c.Piloto_Pessoa_CPF = p.CPF
    ORDER BY a.qtdEstrelas DESC;