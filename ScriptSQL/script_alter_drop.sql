-- -----------------------------------------------------
-- Exemplos usando Alter Table e Drop Table
-- -----------------------------------------------------
-- Alterando tabela Pessoa incluindo a coluna idade
-- -----------------------------------------------------
-- 
ALTER TABLE Pessoa ADD COLUMN idade CHAR(2) NOT NULL;
-- -----------------------------------------------------
-- Alterando tabela Pessoa excluindo a coluna idade
-- -----------------------------------------------------
-- 
ALTER TABLE Pessoa DROP COLUMN idade;
--
-- -----------------------------------------------------
-- Alterando tabela Pessoa renomeando a coluna nome para primeiroNome
-- -----------------------------------------------------
-- 
ALTER TABLE Pessoa RENAME COLUMN nome TO primeiroNome;
--
-- -----------------------------------------------------
-- Criando tabela satisfacao do usuário
-- -----------------------------------------------------
-- 
CREATE TABLE SatisfacaoUsuario (
	idSatisfacao INT NOT NULL AUTO_INCREMENT,
    avaliacaoApp VARCHAR(45) NOT NULL,
    PRIMARY KEY (idSatisfacao)
);
--
-- -----------------------------------------------------
-- Excluindo tabela satisfacao do usuário
-- -----------------------------------------------------
--
DROP TABLE SatisfacaoUsuario;



