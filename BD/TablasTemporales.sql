USE bd_peliculas;

-- Creación de una tabla temporal para almacenar la información inicial
-- que extraemos de la base de datos.
CREATE TEMPORARY TABLE reporte_temporal(
	id INT NOT NULL AUTO_INCREMENT,
    idPelicula INT,
    nombrePelicula VARCHAR(300),
    nombreDirector VARCHAR(300),
    sinopsis VARCHAR(1500),
    fechaEstreno DATE,
    nombreDiaEstreno VARCHAR(25),
    codigoPais VARCHAR(3),
    duracionHoras DECIMAL(6,2),
    calificacion DECIMAL(6,1),
    valoracion VARCHAR(25),
    clasificacion VARCHAR(50),
    PRIMARY KEY (id)
);

-- extracción de la información original y sin procesar por medio de una consulta 
INSERT INTO reporte_temporal (idPelicula,
	nombrePelicula,
    nombreDirector,
    sinopsis,
    fechaEstreno,
    codigoPais,
    duracionHoras,
    calificacion,
    clasificacion)
	SELECT p.id,
	pn.nombre,
    CONCAT(d.nombre, ' ', d.apellido),
    p.sinopsis,
    p.fechaEstreno,
    p.codigoPais,
    p.duracion,
    p.calificacion,
    p.clasificacion
    FROM pelicula AS p
    INNER JOIN pelicula_nombre AS pn ON pn.PELICULA_id = p.id
    INNER JOIN director AS d ON d.id = p.DIRECTOR_id
    WHERE p.codigopais = 'USA';

-- procesamiento, calculos, transformación de la información
UPDATE reporte_temporal SET 
	nombrePelicula = UPPER(nombrePelicula),
    nombreDirector = UPPER(nombreDirector),
    sinopsis = LPAD(sinopsis, 50, '.'),
    nombreDiaEstreno = CASE DAYNAME(fechaEstreno)
							WHEN 'Monday' THEN 'Lunes'
                            WHEN 'Tuesday' THEN 'Martes'
                            WHEN 'Wednesday' THEN 'Miércoles'
                            WHEN 'Thursday' THEN 'Jueves'
                            WHEN 'Friday' THEN 'Viernes'
                            WHEN 'Saturday' THEN 'Sábado'
                            ELSE 'Domingo'
						END,
	duracionHoras = duracionHoras / 60,
    valoracion = IF(calificacion >= 3.5, 'BUENA', 'MALA');

-- Mostramos o almacenamos la información procesada.
SELECT * FROM reporte_temporal;

-- Al finalizar todas las operaciones, se debe borrar la tabla temporal de una vez para liberar
-- espacio en memoria
DROP TABLE reporte_temporal;