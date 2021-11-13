IF OBJECT_ID('agenda') IS NOT NULL
	DROP TABLE agenda;

CREATE TABLE agenda(
	nombre VARCHAR(30),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

GO

INSERT INTO agenda	
	VALUES ('Juan Perez','Avellaneda 908','4252525');
INSERT INTO agenda
	VALUES ('Marta Lopez','Sucre 34','4556688');
INSERT INTO agenda
	VALUES ('Carlos Garcia','Sarmiento 1258',NULL);

SELECT nombre AS NombreYApellido,
	domicilio, telefono
	FROM agenda;

SELECT nombre AS 'Nombre y apellido', 
	domicilio, telefono
	FROM agenda;
		
SELECT nombre 'Nombre y apellido', 
	domicilio, telefono
	FROM agenda;
