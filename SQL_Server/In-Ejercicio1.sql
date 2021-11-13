--Trabaje con la tabla llamada "medicamentos" de una farmacia.
--1- Elimine la tabla, si existe:
IF OBJECT_ID ('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

--2- Cree la tabla con la siguiente estructura:
CREATE TABLE medicamentos (
	codigo INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(20),
	laboratorio VARCHAR(20),
	precio DECIMAL(6,2),
	cantidad TINYINT,
	fecha_vencimiento DATETIME NOT NULL
);

GO

--3- Ingrese algunos registros:
INSERT INTO medicamentos
	VALUES ('Sertal', 'Roche', 5.2, 1, '2015-02-01');
INSERT INTO medicamentos
	VALUES ('Buscapina','Roche',4.10,3,'2016-03-01');
INSERT INTO medicamentos
	VALUES ('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
INSERT INTO medicamentos
	VALUES ('Paracetamol 500','Bago',1.90,20,'2018-02-01');
INSERT INTO medicamentos
	VALUES ('Bayaspirina','Bayer',2.10,150,'2019-12-01');
INSERT INTO medicamentos
	VALUES ('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

GO

--4- Recupere los nombres y precios de los medicamentos cuyo laboratorio sea "Bayer" o "Bago" 
--empleando el operador "in" (4 registros)
--SELECT nombre, precio FROM medicamentos WHERE laboratorio IN ('Bayer', 'Bago');

--5- Seleccione los remedios cuya cantidad se encuentre entre 1 y 5 empleando el operador "between" y 
--luego el operador "in" (2 registros):
--SELECT * FROM medicamentos WHERE cantidad BETWEEN 1 AND 5;
--SELECT * FROM medicamentos WHERE cantidad IN (1, 2, 3, 4, 5);