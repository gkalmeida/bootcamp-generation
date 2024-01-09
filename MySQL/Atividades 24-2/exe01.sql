CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
genero VARCHAR(10) NOT NULL,
cargo VARCHAR(50) NOT NULL,
salario DOUBLE NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, genero, cargo, salario)
VALUES ("gustavo", "masculino", "desenvolvedor jr", 3.500);
INSERT INTO tb_colaboradores(nome, genero, cargo, salario)
VALUES ("livia", "feminino", "desenvolvedora jr", 3.500);
INSERT INTO tb_colaboradores(nome, genero, cargo, salario)
VALUES ("klaus", "outros", "desenvolvedor sênior", 7.000);
INSERT INTO tb_colaboradores(nome, genero, cargo, salario)
VALUES ("leticia", "feminino", "desenvolvedora pleno", 5.500);
INSERT INTO tb_colaboradores(nome, genero, cargo, salario)
VALUES ("henrique", "masculino", "desenvolvedor pleno", 5.500);
INSERT INTO tb_colaboradores(nome, genero, cargo, salario)
VALUES ("ariel", "outros", "estágiarie", 1.800);

SELECT * FROM tb_colaboradores WHERE salario > 2.000;

SELECT * FROM tb_colaboradores WHERE salario < 2.000;

SET SQL_SAFE_UPDATES=0;
UPDATE tb_colaboradores SET salario = 9.000 WHERE cargo = "desenvolvedor sênior";