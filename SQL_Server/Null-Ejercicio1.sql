IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

CREATE TABLE medicamentos(
	codigo INT NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	laboratorio VARCHAR(20),
	precio FLOAT,
	cantidad INT NOT NULL
);

EXEC sp_columns medicamentos;

GO 

INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
	VALUES(1, 'Sertal gotas', null, null, 100);
INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
	VALUES(2, 'Sertal compuesto', null, 8.90, 1.50);
INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
	VALUES(3, 'Buscapina', 'Roche', null, 200);

SELECT * FROM medicamentos;

GO

INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
	VALUES(4, 'Bayaspirina', '', 0, 150);
INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
	VALUES(0, '', 'Bayer', 15.60, 0);

SELECT * FROM medicamentos;

GO

--INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
--	VALUES(NULL, 'Amoxidal jarabe', 'Bayer', 25, 120);

SELECT * FROM medicamentos WHERE laboratorio IS NULL;
SELECT * FROM medicamentos WHERE laboratorio = '';
SELECT * FROM medicamentos WHERE precio IS NULL;
SELECT * FROM medicamentos WHERE precio = 0;
SELECT * FROM medicamentos WHERE laboratorio <> '';
SELECT * FROM medicamentos WHERE laboratorio IS NOT NULL;
SELECT * FROM medicamentos WHERE precio <> 0;
SELECT * FROM medicamentos WHERE precio IS NOT NULL;