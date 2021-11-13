--Trabaje con la tabla llamada "medicamentos" de una farmacia.
--1- Elimine la tabla, si existe:
IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

--2- Cree la tabla con la siguiente estructura:
CREATE TABLE medicamentos(
	codigo INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(20),
	laboratorio VARCHAR(20),
	precio DECIMAL(5,2),
	cantidad TINYINT,
);

GO

--3- Ingrese algunos registros:
INSERT INTO medicamentos
	VALUES ('Sertal','Roche',5.2,100);
INSERT INTO medicamentos
	VALUES ('Buscapina','Roche',4.10,200);
INSERT INTO medicamentos
	VALUES ('Amoxidal 500','Bayer',15.60,100);
INSERT INTO medicamentos
	VALUES ('Paracetamol 500','Bago',1.90,200);
INSERT INTO medicamentos
	VALUES ('Bayaspirina','Bayer',2.10,150); 
INSERT INTO medicamentos
	VALUES ('Amoxidal jarabe','Bayer',5.10,250); 

GO

--4- Recupere los códigos y nombres de los medicamentos cuyo laboratorio sea 'Roche' y cuyo precio sea 
--menor a 5 (1 registro cumple con ambas condiciones)
SELECT codigo, nombre FROM medicamentos 
	WHERE laboratorio = 'Roche' AND precio < 5;

--5- Recupere los medicamentos cuyo laboratorio sea 'Roche' o cuyo precio sea menor a 5 (4 registros):
SELECT * FROM medicamentos 
	WHERE laboratorio = 'Roche' OR precio < 5;

--6- Muestre todos los medicamentos cuyo laboratorio NO sea "Bayer" y cuya cantidad sea=100 (1 
--registro)
SELECT * FROM medicamentos 
	WHERE laboratorio <> 'Bayer' AND cantidad = 100;

--7- Muestre todos los medicamentos cuyo laboratorio sea "Bayer" y cuya cantidad NO sea=100 (2 registros):
SELECT * FROM medicamentos 
	WHERE laboratorio = 'Bayer' AND cantidad <> 100;

--8- Elimine todos los registros cuyo laboratorio sea igual a "Bayer" y su precio sea mayor a 10 (1 
--registro eliminado)
DELETE FROM medicamentos 
	WHERE laboratorio = 'Bayer' AND precio > 10;

--9- Cambie la cantidad por 200, a todos los medicamentos de "Roche" cuyo precio sea mayor a 5 (1 
--registro afectado)
UPDATE medicamentos SET cantidad = 200
	WHERE laboratorio = 'Roche' AND precio > 5;

--10- Borre los medicamentos cuyo laboratorio sea "Bayer" o cuyo precio sea menor a 3 (3 registros 
--borrados)
DELETE FROM medicamentos
	WHERE laboratorio = 'Bayer' OR precio < 3;