IF OBJECT_ID('agenda') IS NOT NULL
	DROP TABLE agenda;

CREATE TABLE agenda(
	apellido VARCHAR(30),
	nombre VARCHAR(20),
	domicilio VARCHAR(30), 
	telefono VARCHAR(11)
);

GO 

INSERT INTO agenda(apellido, nombre, domicilio, telefono)
	VALUES('Alvarez', 'Alberto', 'Colon 123', '4234567');
INSERT INTO agenda(apellido, nombre, domicilio, telefono)
	VALUES('Juarez', 'Juan', 'Avellaneda 135', '4458787');
INSERT INTO agenda(apellido, nombre, domicilio, telefono)
	VALUES('Lopez', 'Maria', 'Urquiza 333', '4545454');
INSERT INTO agenda(apellido, nombre, domicilio, telefono)
	VALUES('Lopez', 'Jose', 'Urquiza 333', '4545454');
INSERT INTO agenda(apellido, nombre, domicilio, telefono)
	VALUES('Salas', 'Susana', 'Gral. Paz 1234', '4123456');

DELETE FROM agenda WHERE nombre = 'Juan';
DELETE FROM agenda WHERE telefono = '4545454';
SELECT * FROM agenda;

DELETE FROM agenda;
SELECT * FROM agenda;
