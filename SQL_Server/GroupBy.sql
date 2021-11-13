IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(40),
	autor VARCHAR(30),
	editorial VARCHAR(15),
	precio DECIMAL(5,2),
	cantidad TINYINT,
	PRIMARY KEY (codigo)
);

INSERT INTO libros VALUES
	('El aleph','Borges','Planeta',15,null),
	('Martin Fierro','Jose Hernandez','Emece',22.20,200),
	('Antologia poetica','J.L. Borges','Planeta',null,150),
	('Aprenda PHP','Mario Molina','Emece',18.20,null),
	('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100),
	('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120),
	('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90),
	('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100),
	('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200),
	('PHP de la A a la Z',null,null,null,0);

-- Cantidad de libros de cada editorial:
--SELECT editorial, COUNT(*) FROM libros
--	GROUP BY editorial;

-- Cantidad libros con precio no nulo de cada editorial:
--SELECT editorial, COUNT(precio) FROM libros
--	GROUP BY editorial;

-- Total en dinero de los libros agrupados por editorial:
--SELECT editorial, SUM(precio) FROM libros 
--	GROUP BY editorial;

-- Máximo y mínimo valor de los libros agrupados por editorial: 
--SELECT editorial,
--	MAX(precio) AS mayor,
--	MIN(precio) AS menor
--	FROM libros GROUP BY editorial;

-- Promedio del valor de los libros agrupados por editorial:
--SELECT editorial, AVG(precio)
--	FROM libros GROUP BY editorial;

-- Contar y agrupar por editorial considerando solamente los libros cuyo precio es menor a 30 pesos:
--SELECT editorial, COUNT(*)
--	FROM libros
--	WHERE precio < 30
--	GROUP BY editorial;

-- Todos los valores de editorial, incluso los que devuelven cero o "null" en la columna de agregado,
--  debemos emplear la palabra clave "all" al lado de "group by":
SELECT editorial, COUNT(*)
	FROM libros
	WHERE precio < 30
	GROUP BY ALL editorial;