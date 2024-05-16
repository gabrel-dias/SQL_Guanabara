CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
-- criação do banco de dados com os padrões de caractere e collation UTF-8
USE cadastro;
-- utilização do banco de dados

CREATE TABLE pessoas (
    id int NOT NULL AUTO_INCREMENT,
    -- AUTO_INCREMENT = automaticamente vai ser preenchido
    nome VARCHAR(30) NOT NULL,
    -- NOT NULL = obrigatório ter um valor digitado
    nascimento date,
    -- formato de data
    sexo ENUM('M', 'F'),
    -- tipo de coleção, estabelecendo quais valores serão aceitos nessa coluna
    peso DECIMAL(5,2),
    -- 5 casas ao todo, e 2 casas depois da vírgula
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    -- se não houverem valores digitados, o valor padrão será "Brasil"
    PRIMARY KEY (id)
    -- a chave primária será a coluna "id"
) DEFAULT CHARSET = utf8;
-- configuração de caracteres utf-8 padrão

INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Jodofredo', '1984-01-02', 'M', '60.5', '1.60', 'Brasil'),
('Manuel', '1996-06-09', 'M', '60.9', '1.69', 'Portugal'),
('Maria', '1969-09-06', 'F', '60.8', '1.96', 'Portugal');

SELECT * from pessoas;
