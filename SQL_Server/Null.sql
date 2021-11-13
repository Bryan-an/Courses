IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	titulo VARCHAR(30) NOT NULL,
	autor VARCHAR(30) NOT NULL,
	editorial VARCHAR(15),
	precio FLOAT
);

GO

-- Agregamos un registro a la tabla con valor nulo para el campo "precio":
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('El aleph', 'Borges', 'Emece', null);

-- Ingresamos otro registro, con valor nulo para el campo "editorial"
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Alicia en el pais', 'Lewis Carroll', null, 0);

-- Veamos lo que sucede si intentamos ingresar el valor "NULL"
-- en campos que no lo admiten, como "titulo":
--INSERT INTO libros(titulo, autor, editorial, precio)
	--VALUES(NULL, 'Borges', 'Siglo XXI', 25);

EXEC sp_columns libros;

-- Dijimos que el valor "null" no es lo mismo que una cadena vacía. 
-- Vamos a ingresar un registro con cadena vacía para el campo "editorial":
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Uno', 'Rrchard Bach', '', 18.50);

-- Ingresamos otro registro, ahora cargamos una cadena vacía en el campo "titulo":
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('', 'Richard Bach', 'Planeta', 22);

SELECT * FROM libros;

-- Recuperemos los registros que contengan el valor "null" en el campo "precio":
SELECT * FROM libros
	WHERE precio IS NULL;

-- La sentencia anterior tendrá una salida diferente a la siguiente:
SELECT * FROM libros
	WHERE precio = 0;

-- Recuperemos los libros cuyo nombre de editorial es "null":
SELECT * FROM libros
	WHERE editorial IS NULL;	

-- Ahora veamos los libros cuya editorial almacena una cadena vacía:
SELECT * FROM libros	
	WHERE editorial = '';

-- Para recuperar los libros cuyo precio no sea nulo tipeamos:
SELECT * FROM libros 
	WHERE precio IS NOT NULL;
