IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY PRIMARY KEY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido', 
	editorial VARCHAR(20),
	precio DECIMAL(6,2),
	cantidad TINYINT DEFAULT 0,
);

GO

INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES ('El aleph', 'Borges', 'Emece', 25);
INSERT INTO libros	
	 VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
INSERT INTO libros(titulo, autor, editorial, precio, cantidad)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

-- Queremos saber el monto total en dinero de cada libro: 
SELECT titulo, precio, cantidad, precio * cantidad
	FROM libros;

-- Conocer el precio de cada libro con un 10% de descuento:
SELECT titulo, precio, precio * 0.9
	FROM libros;

-- Actualizar los precios con un 10% de descuento:
UPDATE libros SET precio = precio * 0.9;

SELECT * FROM libros;

-- Queremos una columna con el título, el autor y la editorial de cada libro:
SELECT titulo + '-' + autor + '-' + editorial FROM libros;