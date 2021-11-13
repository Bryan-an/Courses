IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY PRIMARY KEY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido',
	editorial VARCHAR(20),
	precio DECIMAL(6,2)
);

GO

INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES ('El aleph', 'Borges', 'Emece', 25.33);
INSERT INTO libros 
	VALUES ('Java en 10 minutos', 'Mario Molina','Siglo XXI',50.65);
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);

-- Vamos a mostrar los precios de los libros redondeando el valor hacia abajo y hacia arriba:
SELECT titulo, autor, precio,
	FLOOR(precio) AS abajo,
	CEILING(precio) AS arriba
	FROM libros;