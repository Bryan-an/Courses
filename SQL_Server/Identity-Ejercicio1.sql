IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

CREATE TABLE medicamentos(
	codigo INT IDENTITY,
	nombre VARCHAR(20) NOT NULL,
	laboratorio VARCHAR(20),
	precio FLOAT,
	cantidad INT,
);

EXEC sp_columns medicamentos;

GO 

INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Sertal', 'Roche', 5.2, 100);
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Buscapina', 'Roche', 4.10, 200);
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Amoxidal 500', 'Bayer', 15.60, 100);

SELECT * FROM medicamentos;

GO

-- Intente ingresar un registro con un valor para el campo "codigo"
--INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
--	VALUES(10, 'Paracetamol', 'LabEcu', 4.40, 30);

-- Intente actualizar un valor de código (aparece un mensaje de error)
--UPDATE medicamentos SET codigo = 4 WHERE codigo = 1;

-- Elimine el registro con codigo "3" (1 registro eliminado)
DELETE FROM medicamentos WHERE codigo = 3;

-- Ingrese un nuevo registro:
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Amoxilina 500', 'Bayer', 15.60, 100);

SELECT * FROM medicamentos;