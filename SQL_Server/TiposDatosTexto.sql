IF OBJECT_ID('visitantes') IS NOT NULL
	DROP TABLE visitantes;

/* Un comercio que tiene un stand en una feria registra en una tabla llamada "visitantes" 
   algunos datos de las personas que visitan o compran en su stand para luego enviarle 
   publicidad de sus productos. */
CREATE TABLE visitantes(
	nombre VARCHAR(30),
	edad INT,
	sexo CHAR(1),
	domicilio VARCHAR(30),
	ciudad VARCHAR(20),
	telefono VARCHAR(11)
);

GO

-- Intentamos ingresar una cadena de mayor longitud que la definida 
-- en el campo sexo (se genera un error):
--INSERT INTO visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
--	VALUES('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');

-- Ingresamos un número telefónico olvidando las comillas, es decir, 
-- como un valor numérico (lo transforma a cadena):
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono)
	VALUES ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

SELECT * FROM visitantes;