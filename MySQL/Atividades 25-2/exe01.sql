CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255),
habilidade VARCHAR(255)
);

CREATE TABLE tb_personagens(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
ataque INT,
defesa INT,
armadura INT,
classes_id INT,
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(tipo, habilidade)
VALUES ("guerreiro","alta resistência");
INSERT INTO tb_classes(tipo, habilidade)
VALUES ("arqueiro","combate a distância");
INSERT INTO tb_classes(tipo, habilidade)
VALUES ("mago","combate a distância");
INSERT INTO tb_classes(tipo, habilidade)
VALUES ("curandeiro","suporte");
INSERT INTO tb_classes(tipo, habilidade)
VALUES ("caçador","alta resistência");

INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("karl",1500,3000,100,4);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("lux",2100,1500,100,3);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("zeus",5000,4000,100,1);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("marx",1500,2000,100,2);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("zadock",3500,4000,100,3);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("hunter",7000,8000,100,5);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("drake",2500,1900,100,2);
INSERT INTO tb_personagens(nome, ataque, defesa, armadura, classes_id)
VALUES("saori",1000,2500,100,4);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.tipo = "mago";