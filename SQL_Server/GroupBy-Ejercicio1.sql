--Un comercio que tiene un stand en una feria registra en una tabla llamada "visitantes" algunos datos 
--de las personas que visitan o compran en su stand para luego enviarle publicidad de sus productos.
--1- Elimine la tabla "visitantes", si existe:
IF OBJECT_ID('visitantes') IS NOT NULL
	DROP TABLE visitantes;

--2- Cree la tabla con la siguiente estructura:
CREATE TABLE visitantes(
	nombre VARCHAR(30),
	edad TINYINT,
	sexo CHAR(1) DEFAULT 'f',
	domicilio VARCHAR(30),
	ciudad VARCHAR(20) DEFAULT 'Cordoba',
	telefono VARCHAR(11),
	mail VARCHAR(30) DEFAULT 'no tiene',
	monto_compra DECIMAL(6, 2)
);

GO

--3- Ingrese algunos registros:
INSERT INTO visitantes VALUES 
	('Susana Molina',35,default,'Colon 123',default,null,null,59.80),
	('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50),
	('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
INSERT INTO visitantes (nombre, edad, sexo, telefono, mail) VALUES
	('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
INSERT INTO visitantes (nombre, ciudad, monto_compra) VALUES
	('Alejandra Gonzalez','La Falda',280.50);
INSERT INTO visitantes (nombre, edad, sexo, ciudad, mail, monto_compra) VALUES 
	('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
INSERT INTO visitantes VALUES
	('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85),
	('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

GO

--4- Queremos saber la cantidad de visitantes de cada ciudad utilizando la cláusula "group by" (4 filas devueltas)
--SELECT ciudad, COUNT(ciudad) AS Cantidad FROM visitantes GROUP BY ciudad;

--5- Queremos la cantidad visitantes con teléfono no nulo, de cada ciudad (4 filas devueltas)
--SELECT ciudad, COUNT(telefono) AS Cantidad FROM visitantes GROUP BY ciudad;

--6- Necesitamos el total del monto de las compras agrupadas por sexo (3 filas)
--SELECT sexo, SUM(monto_compra) FROM visitantes GROUP BY sexo;

--7- Se necesita saber el máximo y mínimo valor de compra agrupados por sexo y ciudad (6 filas)
--SELECT sexo, ciudad, MAX(monto_compra) AS Máximo, MIN(monto_compra) AS Mínimo FROM visitantes GROUP BY sexo, ciudad;

--8- Calcule el promedio del valor de compra agrupados por ciudad (4 filas)
--SELECT ciudad, AVG(monto_compra) AS Promedio FROM visitantes GROUP BY ciudad;

--9- Cuente y agrupe por ciudad sin tener en cuenta los visitantes que no tienen mail (3 filas):
--SELECT ciudad, COUNT(mail) FROM visitantes GROUP BY ciudad;

--10- Realice la misma consulta anterior, pero use la palabra clave "all" para mostrar todos los 
--valores de ciudad, incluyendo las que devuelven cero o "null" en la columna de agregado (4 filas)
SELECT ciudad, COUNT(mail) FROM visitantes GROUP BY ALL ciudad;
