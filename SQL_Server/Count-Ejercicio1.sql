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
	PRIMARY KEY (codigo)
);

GO

--3- Ingrese algunos registros:
INSERT INTO medicamentos VALUES
	('Sertal','Roche',5.2,1,'2015-02-01',NULL),
	('Buscapina','Roche',4.10,3,'2016-03-01',NULL),
	('Amoxidal 500','Bayer',15.60,100,'2017-05-01',NULL),
	('Paracetamol 500','Bago',1.90,20,'2018-02-01',NULL),
	('Bayaspirina',NULL ,2.10,NULL ,'2019-12-01',NULL),
	('Amoxidal jarabe','Bayer',NULL ,250,'2019-12-15',NULL);

GO

--4- Muestre la cantidad de registros empleando la función "count(*)" (6 registros)
--SELECT COUNT(*) AS "Cantidad registros" FROM medicamentos;

--5- Cuente la cantidad de medicamentos que tienen laboratorio conocido (5 registros)
--SELECT COUNT(laboratorio) FROM medicamentos;

--6- Cuente la cantidad de medicamentos que tienen precio distinto a "null" y que tienen cantidad 
--distinto a "null", disponer alias para las columnas.
--SELECT COUNT(precio) AS "Precio", COUNT(cantidad) AS "Cantidad" FROM medicamentos;
--SELECT COUNT(*) AS "Cantidad medicamentos" FROM medicamentos WHERE precio IS NOT NULL AND cantidad IS NOT NULL;

--7- Cuente la cantidad de remedios con precio conocido, cuyo laboratorio comience con "B" (2 
--registros)
--SELECT COUNT(precio) FROM medicamentos WHERE laboratorio LIKE 'B%';

--8- Cuente la cantidad de medicamentos con número de lote distitno de "null" (0 registros)
SELECT COUNT(numero_lote) FROM medicamentos;