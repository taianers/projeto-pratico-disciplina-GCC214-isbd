-- cria o usuário Jussara
CREATE USER 'Jussara'@'Localhost' IDENTIFIED BY '1234';

-- Permite acesso total a tabela pessoa
GRANT ALL ON trabalhoisbd.pessoa TO 'Jussara'@'Localhost';

-- Permite acesso a selecão na tabela corrida a apenas alguns atributos
GRANT SELECT (cidadePartida, cidadeDestino, distancia, preco) ON trabalhoisbd.corrida TO 'Jussara'@'Localhost';
SELECT cidadePartida, cidadeDestino, distancia, preco FROM corrida;

-- Revoga o acesso aos atributos da tabela corrida
REVOKE SELECT (cidadePartida, cidadeDestino, distancia, preco) ON trabalhoisbd.corrida FROM 'Jussara'@'Localhost';

-- cria o usuário Joao
CREATE USER 'Joao'@'Localhost' IDENTIFIED BY '4321';

-- Permite acesso total a tabela moto
GRANT ALL ON trabalhoisbd.moto TO 'Joao'@'Localhost';

-- Permite acesso a selecão na tabela corrida a apenas alguns atributos
GRANT SELECT ON trabalhoisbd.pagamento TO 'Joao'@'Localhost';

-- Revoga o acesso aos atributos da tabela corrida
REVOKE SELECT  ON trabalhoisbd.pagamento FROM 'Joao'@'Localhost';