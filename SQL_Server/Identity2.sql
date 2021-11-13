IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY(100,2),
	titulo VARCHAR(20),
	autor VARCHAR(30),
	precio FLOAT
);

GO

INSERT INTO libros (titulo, autor, precio)
	VALUES('El aleph', 'Borges', 23);
INSERT INTO libros (titulo, autor, precio)
	VALUES('Uno', 'Richard Bach', 18);
INSERT INTO libros (titulo, autor, precio)
	VALUES('Aprenda PHP', 'Mario Molina', 45.60);

SELECT * FROM libros;

-- Para saber cuál es el valor de inicio del campo "identity" de la tabla "libros":
SELECT IDENT_SEED('libros');

-- Si intentamos ingresar un valor para el campo "codigo" (genera error):
--INSERT INTO libros (codigo,titulo, autor, precio)
--	VALUES(106,'Martin Fierro','Jose Hernandez',25);

-- Para permitir ingresar un valor en un campo de identidad activamos la opción "identity_insert":
SET IDENTITY_INSERT libros ON;

-- Recordemos que si "identity_insert" está en ON, la instrucción "insert" DEBE explicitar un valor:
INSERT INTO libros(codigo, titulo, autor)
	VALUES(100,'Matematica estas ahi','Paenza');

-- Note que ingresamos un valor de código que ya existe; esto está permitido porque
-- el atributo "identity" no implica unicidad.
INSERT INTO libros(codigo, titulo, autor)
	VALUES(1,'Ilusiones','Richard Bach');

-- Si no se coloca un valor para el campo de identidad, 
-- la sentencia no se ejecuta y aparece un mensaje de error:
--INSERT INTO libros(titulo, autor)
--	VALUES('Uno','Richard Bach');

-- Para desactivar la opción "identity_insert" 
SET IDENTITY_INSERT libros OFF;

-- Intentemos ingresar un valor para el campo "codigo" (genera error):
--INSERT INTO libros (codigo,titulo,autor)
--  VALUES(300,'Uno','Richard Bach');

SELECT * FROM libros;