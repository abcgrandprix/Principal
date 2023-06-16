CREATE DATABASE db_usuarios;
USE db_usuarios;

CREATE TABLE cadastro_usuarios  (
id_cadastro SMALLINT AUTO_INCREMENT NOT NULL,
funcao CHAR(20) NOT NULL,
nome_completo VARCHAR(50) NOT NULL,
email CHAR(50) NOT NULL,
senha CHAR(20) NOT NULL,
cpf CHAR(14) NOT NULL,
cep CHAR(9),
estado CHAR(2)
);

CREATE TABLE gestao_usuarios  (
id_gestao SMALLINT AUTO_INCREMENT NOT NULL,
id_cadastro SMALLINT NOT NULL -- foreign key
);

CREATE TABLE permissoes_acesso (
id_permissoes SMALLINT AUTO_INCREMENT NOT NULL,
nivel_acesso CHAR(20) NOT NULL,
id_cadastro SMALLINT NOT NULL -- foreign key
);
