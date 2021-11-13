-- 1- Elimine la tabla "cuentas" si existe:
IF OBJECT_ID('cuentas') IS NOT NULL
	DROP TABLE cuentas;

-- 2- Cree la tabla eligiendo el tipo de dato adecuado para almacenar los datos descritos arriba:
CREATE TABLE cuentas(
	numero INT PRIMARY KEY,
	documento CHAR(8) NOT NULL,
	nombre VARCHAR(30),
	saldo FLOAT
);

-- 3- Ingrese los siguientes registros:
INSERT INTO cuentas
	VALUES ('1234','25666777','Pedro Perez',500000.60);
INSERT INTO cuentas
	VALUES ('2234','27888999','Juan Lopez',-250000);
INSERT INTO cuentas
	VALUES ('3344','27888999','Juan Lopez',4000.50);
INSERT INTO cuentas
	VALUES ('3346','32111222','Susana Molina',1000);

-- 4- Seleccione todos los registros cuyo saldo sea mayor a "4000" (2 registros)
SELECT * FROM cuentas WHERE saldo > 4000;

-- 5- Muestre el número de cuenta y saldo de todas las cuentas cuyo propietario sea "Juan Lopez" (2 
-- registros)
SELECT numero, saldo FROM cuentas WHERE nombre = 'Juan Lopez';

-- 6- Muestre las cuentas con saldo negativo (1 registro)
SELECT * FROM cuentas WHERE saldo < 0;

-- 7- Muestre todas las cuentas cuyo número es igual o mayor a "3000" (2 registros):
SELECT * FROM cuentas WHERE numero >= 3000;