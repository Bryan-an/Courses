--Una empresa almacena los datos de sus empleados en una tabla denominada "empleados".
--1- Elimine la tabla si existe:
IF OBJECT_ID('empleados') IS NOT NULL
	DROP TABLE empleados;

--2- Cree la tabla:
CREATE TABLE empleados(
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(20) NOT NULL,
	documento CHAR(8) PRIMARY KEY,
	fecha_nacimiento DATETIME,
	fecha_ingreso DATETIME,
	sueldo DECIMAL(6,2)
);

GO

SET DATEFORMAT YMD;

--3- Ingrese algunos registros:
INSERT INTO empleados 
	VALUES ('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
INSERT INTO empleados 
	VALUES ('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
INSERT INTO empleados
	VALUES ('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
INSERT INTO empleados
	VALUES ('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
INSERT INTO empleados
	VALUES ('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

GO

--4- Muestre nombre y apellido concatenados, con el apellido en letras mayúsculas, el documento 
--precedido por "DNI Nº " y el sueldo precedido por "$ ".
SELECT nombre + '; ' + apellido  +'; DNI Nº ' + documento + '; $ ' + STR(sueldo, 6, 2)
	FROM empleados;

--5- Muestre el documento y el sueldo redondeado hacia arriba y precedido por "$ ".
SELECT documento, '$' + STR(CEILING(sueldo), 6) AS sueldo FROM empleados;

--6- Muestre los nombres y apellidos de los empleados que cumplen años en el mes "october" (3 
--registros)
SELECT nombre, apellido FROM empleados 
	WHERE DATENAME(MONTH, fecha_nacimiento) = 'Octubre';

--7- Muestre los nombres y apellidos de los empleados que ingresaron en un determinado año (2 
--registros).
SELECT nombre, apellido FROM empleados
	WHERE YEAR(fecha_ingreso) = 2000;