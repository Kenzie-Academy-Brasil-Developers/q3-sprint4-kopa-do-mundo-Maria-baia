CREATE TABLE IF NOT EXISTS kopas(
	id bigserial CONSTRAINT pk_kopas PRIMARY KEY,
	selecao varchar(120) UNIQUE,
	qnt_copas integer
);
INSERT INTO 
	kopas(selecao, qnt_copas)
VALUES 
	('Brasil', 5),
	('Alemanha', 5),
	('Itália', 4),
	('Argentina', 2),
	('França', 2),
	('Uruguai', 2),
	('Inglaterra', 1),
	('Espanha', 1),
	('Japão', 1);
UPDATE kopas SET qnt_copas = 4 WHERE selecao LIKE 'Alemanha';
DELETE FROM kopas WHERE selecao LIKE 'Japão';
SELECT * FROM kopas;