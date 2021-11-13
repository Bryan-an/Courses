IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido', 
	editorial VARCHAR(20),
	precio DECIMAL(6,2)
);

GO

INSERT INTO libros
	VALUES ('El aleph','Borges','Emece',15.90);
INSERT INTO libros
	VALUES ('Antología poética','Borges','Planeta',39.50);
INSERT INTO libros
	VALUES ('Java en 10 minutos','Mario Molina','Planeta',50.50);
INSERT INTO libros
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.90);
INSERT INTO libros
	VALUES ('Martin Fierro','Jose Hernandez','Emece',25.90);
INSERT INTO libros
	VALUES ('Martin Fierro','Jose Hernandez','Paidos',16.80);
INSERT INTO libros
	VALUES ('Aprenda PHP','Mario Molina','Emece',19.50);
INSERT INTO libros
	VALUES ('Cervantes y el quijote','Borges','Paidos',18.40);

-- Recuperamos los libros cuyo autor sea igual a "Borges" y 
-- cuyo precio no supere los 20 pesos:
SELECT * FROM libros
	WHERE (autor = 'Borges') AND (precio <= 20);

-- Seleccionamos los libros cuyo autor es "Borges" y/o cuya editorial es "Planeta":
SELECT * FROM libros
	WHERE autor = 'Borges' OR editorial = 'Planeta';

-- Recuperamos los libros cuya editorial NO es "Planeta":
SELECT * FROM libros
	WHERE NOT editorial = 'Planeta';

-- Veamos cómo el uso de paréntesis hace que SQL Server evalúe en forma diferente
-- ciertas consultas aparentemente iguales:
SELECT * FROM libros
	WHERE (autor = 'Borges') OR (editorial = 'Paidos' AND precio < 20);

SELECT * FROM libros
	WHERE (autor = 'Borges' OR editorial = 'Paidos') AND (precio < 20);