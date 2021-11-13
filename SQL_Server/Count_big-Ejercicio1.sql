--Trabaje con la tabla llamada "medicamentos" de una farmacia.
--1- Elimine la tabla, si existe:
IF OBJECT_ID ('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

--2- Cree la tabla con la siguiente estructura:
CREATE TABLE medicamentos (
	codigo INT IDENTITY,
	nombre VARCHAR(20),
	laboratorio VARCHAR(20),
	precio DECIMAL(6,2),
	cantidad TINYINT,
	fecha_vencimiento DATETIME NOT NULL,
	numero_lote INT DEFAULT NULL,
	PRIMARY KEY(codigo)
);

GO

--3- Ingrese algunos registros:
INSERT INTO medicamentos VALUES
	('Sertal','Roche',5.2,1,'2015-02-01',null),
	('Buscapina','Roche',4.10,3,'2016-03-01',null),
	('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null),
	('Paracetamol 500','Bago',1.90,20,'2018-02-01',null),
	('Bayaspirina',null,2.10,null,'2019-12-01',null),
	('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null);

GO

--4- Muestre la cantidad de registros empleando la función "count_big(*)" (6 registros)
--SELECT COUNT_BIG(*) FROM medicamentos;

--5- Cuente la cantidad de laboratorios distintos (3 registros)
--SELECT COUNT_BIG(DISTINCT laboratorio) FROM medicamentos;

--6- Cuente la cantidad de medicamentos que tienen precio y cantidad distinto de "null" (5 y 5)
SELECT COUNT(precio) AS "Con precio", COUNT(cantidad) AS "Con cantidad" FROM medicamentos;