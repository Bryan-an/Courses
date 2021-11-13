--Trabajamos con la tabla "peliculas" de un video club que alquila películas en video.
--1- Elimine la tabla, si existe;
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

--2- Créela con la siguiente estructura:
CREATE TABLE peliculas(
	codigo INT IDENTITY PRIMARY KEY,
	titulo VARCHAR(40) NOT NULL,
	actor VARCHAR(20),
	duracion TINYINT
);

GO

--3- Ingrese algunos registros:
INSERT INTO peliculas
	VALUES ('Mision imposible','Tom Cruise',120);
INSERT INTO peliculas
	VALUES ('Harry Potter y la piedra filosofal','Daniel R.',NULL);
INSERT INTO peliculas
	VALUES ('Harry Potter y la camara secreta','Daniel R.',190);
INSERT INTO peliculas
	VALUES ('Mision imposible 2','Tom Cruise',120);
INSERT INTO peliculas
	VALUES ('Mujer bonita',NULL,120);
INSERT INTO peliculas
	VALUES ('Tootsie','D. Hoffman',90);
INSERT INTO peliculas (titulo)
	VALUES ('Un oso rojo');

GO

--4- Recupere las películas cuyo actor sea nulo (2 registros)
SELECT * FROM peliculas 
	WHERE actor IS NULL;

--5- Cambie la duración a 0, de las películas que tengan duración igual a "null" (2 registros)
UPDATE peliculas SET duracion = 0 
	WHERE duracion IS NULL;

--6- Borre todas las películas donde el actor sea "null" y cuya duración sea 0 (1 registro)
DELETE FROM peliculas 
	WHERE actor IS NULL AND duracion = 0;