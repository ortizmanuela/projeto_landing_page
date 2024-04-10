create database bd_manuelaortiz;

CREATE TABLE professores_senac(
	id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    idade int
);

INSERT INTO professores_senac (id, nome, email, idade)
VALUE (1, "Vitor Hugo Lopes", "vitor@gmail.com,", 29), (2, "Rafaella Egues", "rafa@gmail.com", 25);

DELETE FROM professores_senac where id = 3;

DESCRIBE professores_senac;

select * from professores_senac;

INSERT INTO professores_senac (id, nome, email, idade)
VALUE (1, "Bruno Schmidt", "bruno@gmail.com,", 29);

select id, nome from professores_senac where id = 1;

SELECT id, nome FROM professores_senac WHERE nome LIKE "%tor%" OR (idade < 27 	AND idade > 20);

SELECT id, nome FROM professores_senac WHERE nome LIKE "%tor%" OR idade > 20;

ALTER TABLE professores_senac ADD COLUMN genero VARCHAR(255);

ALTER TABLE professores_senac DROP COLUMN genero;

ALTER TABLE professores_senac CHANGE genero genero ENUM("masculino", "feminino", "não binário");

UPDATE professores_senac SET genero = "masculino" WHERE id = 1;

UPDATE professores_senac SET genero = "feminino" WHERE id = 2;

ALTER TABLE professores_senac ADD COLUMN formacao ENUM("graduação", "especialização", "mestrado", "doutorado") DEFAULT "graduação";

ALTER TABLE professores_senac CHANGE id id INT AUTO_INCREMENT;

SELECT LOWER(nome) FROM professores_senac;

SELECT UPPER(nome) FROM professores_senac;

SELECT SUM(idade) FROM professores_senac;

SELECT AVG(idade) FROM professores_senac;

SELECT COUNT(*) FROM professores_senac WHERE genero = "feminino";

SELECT MIN(idade) FROM professores_senac;

SELECT MAX(idade) FROM professores_senac;

SELECT CURDATE() FROM DUAL;

SELECT DATEDIFF(CURDATE(), "2020-02-10") FROM DUAL;

SELECT CONCAT("O professor ", nome, " tem ", idade, " anos") FROM professores_senac;
