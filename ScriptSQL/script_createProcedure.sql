-- cria um procedimento para cadastrar dados na tabela pessoa
DELIMITER //
CREATE PROCEDURE CadastraPessoa(
   pCPF CHAR(11),
   pNome VARCHAR(15),
   pSobrenome VARCHAR(40),
   pDataNasc char(10),
   pSexo CHAR(1),
   pCEP CHAR(8),
   pEstado CHAR(2),
   pCidade VARCHAR(30),
   PBairro VARCHAR(30),
   pLog VARCHAR (40),
   pNum INT(11),
   pDataCad DATETIME
)
BEGIN 
   INSERT INTO pessoa
   VALUES (pCPF, pNome, pSobrenome, pDataNasc, pSexo, pCEP, pEstado, pCidade, pBairro, pLog, pNum, pDataCad);
END //
$$
DELIMITER ;

-- chama cadastraPessoa passando dados por parâmetro
CALL cadastraPessoa ('12345678988', 'Carlos', 'Alberto', '21/03/1998', 'M', '37210000', 'MG', 'Itumirim', 'Centro', 'Rua das laranjeiras', '521', now());


-- Cria um procedimento para mostrar corridas feitas em cidade passada por parâmentro
DELIMITER //
CREATE PROCEDURE corridasCidades (IN pCidade VARCHAR (30))
BEGIN
	SELECT c.cidadePartida, c.cidadeDestino, c.dataCorrida
    from corrida c
    where c.cidadePartida = pCidade;
END//
DELIMITER ;

-- chama o procedimento corridaCidades passando por parâmentro uma cidade
CALL corridasCidades ('Lavras');

-- Cria um procedimento para retornar telefone de uma pessoa passada por parâmetro
DELIMITER //
CREATE PROCEDURE retornaTelefone (IN pNome VARCHAR (15), OUT Telefone VARCHAR (11))
BEGIN
    SELECT t.telefone INTO telefone
    FROM pessoa p JOIN telefonepessoa t on p.CPF = t.Pessoa_CPF
    WHERE p.nome = pNome;
END //
DELIMITER ;

-- chama o procedimento retornaTelefone passando por parâmetro um nome, e recebendo um telefone como retorno
CALL retornaTelefone ('Breno', @tel);

-- mostrando o resultado na tela
SELECT @tel AS Telefone;