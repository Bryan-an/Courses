IF OBJECT_ID('empleados') IS NOT NULL
	DROP TABLE empleados;

CREATE TABLE empleados(
	nombre VARCHAR(20),
	documento CHAR(8),
	fecha_ingreso DATETIME
);

GO

-- Seteamos el formato de la fecha para que guarde día, mes y año:
SET DATEFORMAT dmy;

INSERT INTO empleados VALUES ('Ana Gomez', '22222222', '12-01-1980');
INSERT INTO empleados VALUES ('Bernardo Huerta', '23333333', '15-03-81');
INSERT INTO empleados VALUES ('Carla Juarez', '24444444', '20/05/1983');
INSERT INTO empleados VALUES ('Daniel Lopez', '25555555', '2.5.1990');

-- Note que el formato de visualización es "y-m-d".
SELECT * FROM empleados;

-- Mostramos los datos de los empleados cuya fecha de ingreso es anterior a '01-01-1985':
SELECT * FROM empleados WHERE fecha_ingreso < '01-01-1985';

-- Actualizamos el nombre a "Maria Carla Juarez' 
-- del empleado cuya fecha de ingreso es igual a '20/05/1983':
UPDATE empleados SET nombre = 'Maria Carla Juarez' WHERE fecha_ingreso = '20.05.1983';

SELECT * FROM empleados;

-- Borramos los empleados cuya fecha de ingreso es distinta a '20.5.83':
DELETE FROM empleados WHERE fecha_ingreso <> '20.5.83';

SELECT * FROM empleados;