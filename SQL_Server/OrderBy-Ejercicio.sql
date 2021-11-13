--En una página web se guardan los siguientes datos de las visitas: número de visita, nombre, mail, 
--pais, fecha.
--1- Elimine la tabla "visitas", si existe:
IF OBJECT_ID('visitas') IS NOT NULL
	DROP TABLE visitas;

--2- Créela con la siguiente estructura:
CREATE TABLE visitas(
	numero INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(20) DEFAULT 'Anonimo', 
	mail VARCHAR(50),
	pais VARCHAR(20),
	fecha DATETIME
);

GO

SET DATEFORMAT YMD;

--3- Ingrese algunos registros:
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
INSERT INTO visitas (nombre, mail, pais, fecha)
	VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

GO

--4- Ordene los registros por fecha, en orden descendente.
SELECT * FROM visitas ORDER BY fecha DESC;

--5- Muestre el nombre del usuario, pais y el nombre del mes, ordenado por pais (ascendente) y nombre 
--del mes (descendente)
SELECT nombre, pais, DATENAME(MONTH, fecha) AS 'month' FROM visitas
	ORDER BY pais ASC, 3 DESC;

--6- Muestre el pais, el mes, el día y la hora y ordene las visitas por nombre del mes, del día y la 
--hora.
SELECT pais, DATENAME(MONTH, fecha) AS 'month', DAY(fecha) AS 'day',  DATEPART(HOUR, fecha) AS 'hour' 
	FROM visitas
	ORDER BY 2, 3, 4;

--7- Muestre los mail, país, ordenado por país, de todos los que visitaron la página en octubre (4 
--registros)
SELECT mail, pais FROM visitas
	WHERE DATENAME(MONTH, fecha) = 'Octubre'
	ORDER BY pais;