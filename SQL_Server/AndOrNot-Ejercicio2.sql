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
	VALUES ('Harry Potter y la piedra filosofal','Daniel R.',180);
INSERT INTO peliculas
	VALUES ('Harry Potter y la camara secreta','Daniel R.',190);
INSERT INTO peliculas
	VALUES ('Mision imposible 2','Tom Cruise',120);
INSERT INTO peliculas
	VALUES ('Mujer bonita','Richard Gere',120);
INSERT INTO peliculas
	VALUES ('Tootsie','D. Hoffman',90);
INSERT INTO peliculas
	VALUES ('Un oso rojo','Julio Chavez',100);
INSERT INTO peliculas
	VALUES ('Elsa y Fred','China Zorrilla',110);

GO

--4- Recupere los registros cuyo actor sea "Tom Cruise" or "Richard Gere" (3 registros)
SELECT * FROM peliculas
	WHERE actor = 'Tom Cruise' OR actor = 'Richard Gere';

--5- Recupere los registros cuyo actor sea "Tom Cruise" y duración menor a 100 (ninguno cumple ambas 
--condiciones)
SELECT * FROM peliculas
	WHERE actor = 'Tom Cruise' AND duracion < 100;

--6- Cambie la duración a 200, de las películas cuyo actor sea "Daniel R." y cuya duración sea 180 (1 
--registro afectado)
UPDATE peliculas SET duracion = 200 
	WHERE actor = 'Daniel R.' AND duracion = 180;

--7- Borre todas las películas donde el actor NO sea "Tom Cruise" y cuya duración sea mayor o igual a 
--100 (2 registros eliminados)
DELETE FROM peliculas 
	WHERE actor <> 'Tom Cruise' AND duracion >= 100;