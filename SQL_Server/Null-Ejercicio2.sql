IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas

CREATE TABLE peliculas(
	codigo INT NOT NULL,
	titulo VARCHAR(40) NOT NULL,
	actor VARCHAR(20),
	duracion INT
);

GO

EXEC sp_columns peliculas;

INSERT INTO peliculas(codigo, titulo, actor, duracion)
	VALUES(1, 'Mision imposible', 'Tom Cruise', 120);
INSERT INTO peliculas(codigo, titulo, actor, duracion)
	VALUES(2, 'Harry Potter y la piedra filosofal', NULL, 180);
INSERT INTO peliculas(codigo, titulo, actor, duracion)
	VALUES(3, 'Harry Potter y la camara secreta', 'Daniel R.', NULL);
INSERT INTO peliculas(codigo, titulo, actor, duracion)
	VALUES(0, 'Mision imposible 2', '', 150);
INSERT INTO peliculas(codigo, titulo, actor, duracion)
	VALUES(4, '', 'L. Di Caprio', 220);
INSERT INTO peliculas(codigo, titulo, actor, duracion)
	VALUES(5, 'Mujer bonita', 'R. Gere-J. Roberts', 0);

GO

SELECT * FROM peliculas;
SELECT * FROM peliculas WHERE actor IS NULL;
SELECT * FROM peliculas WHERE actor = '';

GO

UPDATE peliculas SET duracion = 120 WHERE duracion IS NULL;
UPDATE peliculas SET actor = 'Desconocido' WHERE actor = '';

GO

SELECT * FROM peliculas;
DELETE FROM peliculas WHERE titulo = '';
SELECT * FROM peliculas;