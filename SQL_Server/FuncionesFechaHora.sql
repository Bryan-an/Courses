IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido', 
	editorial VARCHAR(20),
	edicion DATETIME,
	precio DECIMAL(6,2)
);

GO

SET DATEFORMAT YMD;

INSERT INTO libros
	VALUES ('El aleph','Borges','Emece','1980/10/10',25.33);
INSERT INTO libros
	VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
INSERT INTO libros
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
INSERT INTO libros
	VALUES ('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);

-- Mostramos el título del libro y el año de edición:
SELECT titulo, YEAR(edicion) FROM libros;

-- Mostramos el título del libro y el nombre del mes de edición:
SELECT titulo, DATENAME(MONTH, edicion) FROM libros;

-- Mostramos el título del libro y los años que tienen de editados:
SELECT titulo, DATEDIFF(YEAR, edicion, GETDATE()) FROM libros;

-- Muestre los títulos de los libros que se editaron el día 9, de cualquier mes de cualquier año:
SELECT titulo FROM libros WHERE DAY(edicion) = 9;