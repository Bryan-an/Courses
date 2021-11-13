--Un banco tiene registrados las cuentas corrientes de sus clientes en una tabla llamada "cuentas".
--1- Elimine la tabla "cuentas" si existe:
IF OBJECT_ID('cuentas') IS NOT NULL
	DROP TABLE cuentas;

-- 2- Cree la tabla :
CREATE TABLE cuentas(
	numero INT IDENTITY,
	documento CHAR(8) NOT NULL,
	nombre VARCHAR(30),
	saldo MONEY
);

GO

--3- Ingrese un registro con valores para todos sus campos, inclusive el campo identity, omitiendo la 
--lista de campos (error, no se debe ingresar para el campo identity):
--INSERT INTO cuentas 
--	VALUES (1,'25666777','Juan Perez',2500.50);

--4- Ingrese un registro con valores para todos sus campos omitiendo la lista de campos (excepto el 
--campo "identity"):
INSERT INTO cuentas 
	VALUES ('25666777','Juan Perez',2500.50);

--5- Ingrese un registro omitiendo algún campo que admitan valores nulos.
INSERT INTO cuentas (documento, saldo)
	VALUES ('12345678', 324);

--6- Intente ingresar un registro con valor para el campo "numero" (error):
--INSERT INTO cuentas (numero, documento, nombre, saldo)
--	VALUES (5,'28999777','Luis Lopez',34000);

--7- Intente ingresar un registro listando 3 campos y colocando 4 valores (error)
--INSERT INTO cuentas (documento, nombre, saldo)
--	VALUES (3, '12345678', 'Andres', 2345);

--8- Intente ingresar un registro sin valor para el campo "documento" (error)
--INSERT INTO cuentas (nombre, saldo)
--	VALUES ('Bryan Andagoya', 34);

--9- Vea los registros ingresados
SELECT * FROM cuentas;