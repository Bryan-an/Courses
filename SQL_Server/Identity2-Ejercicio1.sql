-- Elimine la tabla,si existe:
IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

-- Cree la tabla con un campo "codigo" que genere valores secuenciales 
-- autom�ticamente comenzando en  10 e increment�ndose en 1:
CREATE TABLE medicamentos(
	codigo INT IDENTITY(10, 1),
	nombre VARCHAR(20) NOT NULL,
	laboratorio VARCHAR(20),
	precio FLOAT,
	cantidad INT
);

GO

-- Ingrese los siguientes registros:
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Sertal','Roche',5.2,100);
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Buscapina','Roche',4.10,200);
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
	VALUES('Amoxidal 500','Bayer',15.60,100);

-- Verifique que SQL Server gener� valores para el campo "c�digo" de modo autom�tico:
SELECT * FROM medicamentos;

GO

-- Intente ingresar un registro con un valor para el campo "codigo"
--INSERT INTO medicamentos(codigo, nombre)
--	VALUES(103, 'Ibuprofeno');

-- Setee la opci�n "identity_insert" en "on"
SET IDENTITY_INSERT medicamentos ON;

-- Ingrese un nuevo registro sin valor para el campo "codigo" (no lo permite):
--INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
--	VALUES('Amoxilina 500','Bayer',15.60,100);

-- Ingrese un nuevo registro con valor para el campo "codigo" repetido.
INSERT INTO medicamentos(codigo, nombre)
	VALUES(10, 'Ibuprofeno');

-- Use la funci�n "ident_seed()" para averiguar el valor de 
-- inicio del campo "identity" de la tabla "medicamentos"
SELECT IDENT_SEED('medicamentos');

-- Emplee la funci�n "ident_incr()" para saber cu�l es el valor 
-- de incremento del campo "identity" de "medicamentos"
SELECT IDENT_INCR('medicamentos');

SELECT * FROM medicamentos;