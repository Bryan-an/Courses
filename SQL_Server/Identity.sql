IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(30), 
	editorial VARCHAR(15),
	precio FLOAT
);

GO

INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('El aleph', 'Borges', 'Emece', 23);

SELECT * FROM libros;

INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Uno', 'Richard Bach', 'Planeta', 18);
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Aprenda PHP', 'Mario Molina', 'Siglo XXI', 45.60);
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Paidos', 15.50);

SELECT * FROM libros;

-- Intentemos ingresar un valor para el campo "codigo" (genera error):
--INSERT INTO libros(codigo,titulo,autor,editorial,precio)
--	VALUES(5,'Martin Fierro','Jose Hernandez','Paidos',25);

-- Intentemos cambiar el valor de código de un registro (genera error):
--UPDATE libros SET codigo = 9
--	WHERE titulo = 'Uno';

EXEC sp_columns libros;

-- Eliminemos el último registro:
DELETE FROM libros 
	WHERE autor = 'Lewis Carroll';

-- Ingresamos un quinto registro
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('Martin Fierro','Jose Hernandez','Paidos',25);

--  El campo código se guardó el valor secuencial sin considerar que el valor "4" ya no existe:
SELECT * FROM libros;