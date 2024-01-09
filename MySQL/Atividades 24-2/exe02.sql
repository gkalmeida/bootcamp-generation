CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
quantidade INT NOT NULL,
preco DECIMAL NOT NULL,
cor VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta nk", 15, 110.00, "azul");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta nk", 10, 110.00, "rosa");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta nk", 5, 110.00, "verde");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta ad", 3, 90.00, "azul");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta ad", 5, 90.00, "marrom");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta lsct", 15, 150.00, "verde");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta lsct", 1, 150.00, "azul");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
VALUES("camiseta lv", 3, 200.00, "rosa");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produtos SET preco = 600 WHERE nome = "camiseta lv";