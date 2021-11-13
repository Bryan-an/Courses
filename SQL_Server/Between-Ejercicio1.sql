--En una página web se guardan los siguientes datos de las visitas: número de visita, nombre, mail, 
--pais, fechayhora de la visita.
--1- Elimine la tabla "visitas", si existe:
IF OBJECT_ID('visitas') IS NOT NULL
	DROP TABLE visitas;

--2- Créela con la siguiente estructura:
CREATE TABLE visitas(
	numero INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(30) DEFAULT 'Anonimo',
	mail VARCHAR(50),
	pais VARCHAR(20),
	fechaHora DATETIME
);

GO

SET DATEFORMAT YMD;

--3- Ingrese algunos registros:
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
INSERT INTO visitas (nombre, mail, pais, fechaHora)
	VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
INSERT INTO visitas (nombre, mail, pais)
	VALUES ('Federico1','federicogarcia@xaxamail.com','Argentina');

--4- Seleccione los usuarios que visitaron la página entre el '2006-09-12' y '2006-10-11' (5 
--registros)
--SELECT nombre FROM visitas WHERE fechaHora BETWEEN '2006-09-12' AND '2006-10-11';

--5- Recupere las visitas cuyo número se encuentra entre 2 y 5 (4 registros)
SELECT * FROM visitas WHERE numero BETWEEN 2 AND 5;