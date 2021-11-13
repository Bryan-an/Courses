--Una concesionaria de autos vende autos usados y almacena la información en una tabla llamada 
--"autos".
--1- Elimine la tabla "autos" si existe:
IF OBJECT_ID ('autos') IS NOT NULL
	DROP TABLE autos;

--2- Cree la tabla con la siguiente estructura:
CREATE TABLE autos(
	patente CHAR(6) PRIMARY KEY,
	marca VARCHAR(20),
	modelo CHAR(4),
	precio decimal(8,2)
);

--3- Ingrese algunos registros:
INSERT INTO autos
	VALUES ('ACD123', 'Fiat 128', '1970', 15000);
INSERT INTO autos
	VALUES ('ACG234','Renault 11','1980',40000);
INSERT INTO autos
	VALUES ('BCD333','Peugeot 505','1990',80000);
INSERT INTO autos
	VALUES ('GCD123','Renault Clio','1995',70000);
INSERT INTO autos
	VALUES ('BCC333','Renault Megane','1998',95000);
INSERT INTO autos
	VALUES ('BVF543','Fiat 128','1975',20000);

--4- Seleccione todos los autos cuyo modelo se encuentre entre '1970' y '1990' usando el operador 
--"between" y ordénelos por dicho campo(4 registros)
--SELECT * FROM autos WHERE modelo BETWEEN '1970' AND '1990'
--	ORDER BY modelo;

--5- Seleccione todos los autos cuyo precio esté entre 50000 y 100000.
SELECT * FROM autos WHERE precio BETWEEN 50000 AND 100000;