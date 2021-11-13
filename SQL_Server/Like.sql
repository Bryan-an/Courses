IF OBJECT_ID ('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros (
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido',
	editorial VARCHAR(20),
	precio DECIMAL(6,2),
	PRIMARY KEY (codigo)
);

GO 

--INSERT INTO libros
--	VALUES ('El aleph', 'Borges', 'Emece', 15.90);
--INSERT INTO libros
--	VALUES ('Antología poética','J. L. Borges','Planeta',null);
--INSERT INTO libros
--	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
--INSERT INTO libros
--	VALUES ('Matematica estas ahi','Paenza','Siglo XXI',15);
--INSERT INTO libros
--	VALUES ('Martin Fierro','Jose Hernandez',default,40);
--INSERT INTO libros
--	VALUES ('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

INSERT INTO libros
	VALUES ('El aleph', 'Borges', 'Emece', 15.90), 
		('Antología poética','J. L. Borges','Planeta',null),
		('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90),
		('Matematica estas ahi','Paenza','Siglo XXI',15),
		('Martin Fierro','Jose Hernandez',default,40),
		('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

GO 

-- Recuperamos todos los libros que contengan en el campo "autor" la cadena "Borges":
--SELECT * FROM libros WHERE autor LIKE '%Borges%';

-- Seleccionamos los libros cuyos títulos comienzan con la letra "M":
--SELECT * FROM libros
--	WHERE titulo LIKE 'M%';

-- Seleccionamos todos los títulos que NO comienzan con "M":
--SELECT * FROM libros
--	WHERE titulo NOT LIKE 'M%';

-- Si queremos ver los libros de "Lewis Carroll" pero no recordamos si se escribe 
-- "Carroll" o "Carrolt", podemos emplear el comodín "_" (guión bajo) y establecer
-- la siguiente condición:
--SELECT * FROM libros
--	WHERE autor LIKE '%Carrol_';

-- Buscamos los libros cuya editorial comienza con las letras entre la "P" y la "S":
--SELECT titulo, autor, editorial 
--	FROM libros
--	WHERE editorial LIKE '[P-S]%';

-- Seleccionamos los libros cuya editorial NO comienza con las letras "P" ni "N":
--SELECT titulo, autor, editorial
--	FROM libros
--	WHERE editorial LIKE '[^PN]%';

-- Recuperamos todos los libros cuyo precio se encuentra entre 10.00 y 19.99:
--SELECT titulo, precio FROM libros
--	WHERE precio LIKE '1_.%';

-- Recuperamos los libros que NO incluyen centavos en sus precios:
SELECT titulo, precio FROM libros
	WHERE precio LIKE '%.00';


