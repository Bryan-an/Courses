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
	monto_compra DECIMAL(6,2)
);

-- 4- Vea la información de las columnas "COLUMN_DEF" y "IS_NULLABLE":
EXEC sp_columns visitantes;

--5- Ingrese algunos registros sin especificar valores para algunos campos para ver cómo opera la 
--cláusula "default":
INSERT INTO visitantes(nombre, domicilio, monto_compra)
	VALUES ('Susana Molina', 'Colon 123', 59.80);
INSERT INTO visitantes(nombre, edad, ciudad, mail)
	VALUES ('Marcos Torres', 29, 'Carlos Paz', 'marcostorres@hotmail.com');

SELECT * FROM visitantes;

-- 6- Use la palabra "default" para ingresar valores en un insert.
INSERT INTO visitantes
	VALUES('Bryan', 20, DEFAULT, DEFAULT, DEFAULT, 1234, DEFAULT, 83);

SELECT * FROM visitantes;

--7- Ingrese un registro con "default values".
INSERT INTO visitantes DEFAULT VALUES;

SELECT * FROM visitantes;