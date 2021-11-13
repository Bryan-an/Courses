IF OBJECT_ID('usuarios') IS NOT NULL
	DROP TABLE usuarios;

CREATE TABLE usuarios(
	nombre VARCHAR(20),
	clave VARCHAR(10),
	PRIMARY KEY(nombre)
);

GO 

EXEC sp_columns usuarios;

INSERT INTO usuarios(nombre, clave)
	VALUES('juanperez', 'Boca');
INSERT INTO usuarios(nombre, clave)
	VALUES('raulgarcia', 'River');

--  Intentamos ingresar un valor de clave primaria existente (genera error):
--INSERT INTO usuarios(nombre, clave)
--	VALUES('juanperez', 'payaso');

-- Intentamos ingresar el valor "null" en el campo clave primaria (genera error):
--INSERT INTO usuarios(nombre, clave)
--	VALUES(NULL, 'payaso');

-- Intentemos actualizar el nombre de un usuario colocando un nombre existente (genera error):
--UPDATE usuarios SET nombre = 'juanperez' WHERE nombre = 'raulgarcia';