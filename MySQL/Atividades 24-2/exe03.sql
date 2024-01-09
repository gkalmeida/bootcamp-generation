CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
periodo VARCHAR(50) NOT NULL,
nota FLOAT(10,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("matheus", 15, "vespertino", 8.5);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("larissa", 17, "manhã", 9.5);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("josé", 14, "vespertino", 7.5);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("flávia", 17, "noite", 6.5);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("erick", 15, "vespertino", 5.5);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("paola", 16, "manhã", 10);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("lucas", 17, "noite", 8.0);
INSERT INTO tb_estudantes(nome, idade, periodo, nota)
VALUES("noah", 14, "vespertino", 5.0);

ALTER TABLE tb_estudantes MODIFY nota FLOAT(10,1);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_estudantes SET nota = 7.5 WHERE nome = "lucas";