IF OBJECT_ID('usuarios') IS NOT NULL
	DROP TABLE usuarios;

CREATE TABLE usuarios(
	nombre VARCHAR(20),
	clave VARCHAR(10)
);

GO

INSERT INTO usuarios(nombre, clave)
	VALUES('Marcelo', 'River');
INSERT INTO usuarios(nombre, clave)
	VALUES('Susana', 'chapita');
INSERT INTO usuarios(nombre, clave)
	VALUES('Carlosfuentes', 'Boca');
INSERT INTO usuarios(nombre, clave)
	VALUES('Federicolopez', 'Boca');

SELECT * FROM usuarios;

UPDATE usuarios SET clave = 'RealMadrid';

SELECT * FROM usuarios;

UPDATE usuarios SET clave = 'Boca'
	WHERE nombre = 'Federicolopez';

SELECT * FROM usuarios;

UPDATE usuarios SET clave = 'payaso'
	WHERE nombre = 'JuanaJuarez';

SELECT * FROM usuarios;

UPDATE usuarios SET nombre = 'Marceloduarte', clave = 'Marce'
	WHERE nombre = 'Marcelo';

SELECT * FROM usuarios;