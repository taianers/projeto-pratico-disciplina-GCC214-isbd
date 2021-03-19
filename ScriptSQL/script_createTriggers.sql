-- cria uma trigger para controle do atributo sexo
DELIMITER $$
CREATE TRIGGER before_pessoa_insert
BEFORE INSERT ON pessoa FOR EACH ROW
BEGIN
	IF (new.sexo = '1') THEN
		SET new.sexo = 'M';
	ELSEIF (new.sexo = '2') THEN
		SET new.sexo = 'F';
	ELSEIF (new.sexo NOT IN ('M','F')) THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Caracter inválido para o atributo sexo, informe M, F, 1 para M e 2 para F ';
	END IF;
END;
$$
DELIMITER ;

-- exemplo de como disparar a trigger before_pessoa_insert
INSERT INTO Pessoa(CPF, nome, sobrenome, dataNascimento, sexo, CEP, estado, cidade, bairro, log, num, dataCad)
VALUES('78946464465', 'Denis', 'Pereira', '1972-08-15', 'G', '37200000', 'MG', 'Lavras', 'UFLA', 'Aquenta Sol', 209, NOW());

-- cria uma trigger para controlar troca de motocicletas somente para mais novas
DELIMITER $$
CREATE TRIGGER after_moto_update
AFTER UPDATE ON moto
FOR EACH ROW
BEGIN
	IF OLD.ano > NEW.ano THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Você não pode trocar sua moto por um modelo mais antigo, fere os padrões de qualidade do aplicativo';
    END IF;
END;
$$
DELIMITER ;

-- exemplo de como disparar a trigger after_moto_update
UPDATE moto
set ano = '2018'
where placa = 'IAC5850'

-- cria uma trigger para não deixar exluir corridas do ano atual
DELIMITER $$
CREATE TRIGGER before_corrida_delete
BEFORE DELETE ON corrida
FOR EACH ROW
BEGIN
	IF old.dataCorrida > "2021-01-01" THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Não pode excluir corridas do ano atual, somente dos anos anteriores';
	END IF;
END;
$$
DELIMITER ;

-- exemplo de como disparar a trigger before_corrida_delete
delete from corrida
where idcorrida = '5';
