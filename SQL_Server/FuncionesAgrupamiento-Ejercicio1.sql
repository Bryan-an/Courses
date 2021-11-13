--Una empresa almacena los datos de sus empleados en una tabla "empleados".
--1- Elimine la tabla, si existe:
IF OBJECT_ID ('empleados') IS NOT NULL
	DROP TABLE empleados;

--2- Cree la tabla:
CREATE TABLE empleados (
	nombre VARCHAR(30),
	documento CHAR(8),
	domicilio VARCHAR(30),
	seccion VARCHAR(20),
	sueldo DECIMAL(6,2),
	cantidad_hijos TINYINT,
	PRIMARY KEY (documento)
);

GO

--3- Ingrese algunos registros:
INSERT INTO empleados VALUES 
	('Juan Perez','22333444','Colon 123','Gerencia',5000,2),
	('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0),
	('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1),
	('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3),
	('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0),
	('Yolanda Perez','35111222','Colon 180','Administracion',3200,1),
	('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3),
	('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4),
	('Andres Costa','28444555', DEFAULT,'Secretaria', NULL, NULL);

--4- Muestre la cantidad de empleados usando "count" (9 empleados)
--SELECT COUNT(*) FROM empleados;

--5- Muestre la cantidad de empleados con sueldo no nulo de la sección "Secretaria" (2 empleados)
--SELECT COUNT(sueldo) FROM empleados WHERE seccion = 'Secretaria';

--6- Muestre el sueldo más alto y el más bajo colocando un alias (5000 y 2000)
--SELECT MAX(sueldo) AS Higher, MIN(sueldo) AS "Lower" FROM empleados;

--7- Muestre el valor mayor de "cantidadhijos" de los empleados "Perez" (3 hijos)
--SELECT MAX(cantidad_hijos) FROM empleados WHERE nombre LIKE '%Perez%';

--8- Muestre el promedio de sueldos de todo los empleados (3400. Note que hay un sueldo nulo y no es 
--tenido en cuenta)
--SELECT AVG(sueldo) AS "Promedio sueldos" FROM empleados;

--9- Muestre el promedio de sueldos de los empleados de la sección "Secretaría" (2100)
--SELECT AVG(sueldo) AS "Promedio sueldos" FROM empleados WHERE seccion = 'Secretaria';

--10- Muestre el promedio de hijos de todos los empleados de "Sistemas" (2)
SELECT AVG(cantidad_hijos) FROM empleados WHERE seccion = 'Sistemas';