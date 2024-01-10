CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(255),
sabor VARCHAR(255)  
);

CREATE TABLE tb_pizzas(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco FLOAT(10,2),
borda VARCHAR (255),
massa VARCHAR (255),
categorias_id INT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tamanho, sabor)
VALUES ("p","salgada");
INSERT INTO tb_categorias(tamanho, sabor)
VALUES ("p","doce");
INSERT INTO tb_categorias(tamanho, sabor)
VALUES ("m","salgada");
INSERT INTO tb_categorias(tamanho, sabor)
VALUES ("m","doce");
INSERT INTO tb_categorias(tamanho, sabor)
VALUES ("g","salgada");
INSERT INTO tb_categorias(tamanho, sabor)
VALUES ("g","doce");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("mussarela",45.50,"catupiry","normal",1);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("nutella/morango",50.00,"sem borda","fina",2);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("portuguesa",49.50,"queijo","fina",3);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("beijinho",50.50,"chocolate","normal",4);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("mussarela/bacon",58.00,"catupiry","normal",5);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("romeu/julieta",45.50,"sem borda","normal",6);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("frango/caputiry",40.50,"sem borda","fina",1);
INSERT INTO tb_pizzas(nome, preco, borda, massa, categorias_id)
VALUES("chocolate",60.50,"sem borda","normal",2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id WHERE tb_categorias.sabor = "doce";