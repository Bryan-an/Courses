USE bd_peliculas;

SELECT pe.id,
	pn.nombre AS nombrePelicula,
    ge.nombre AS nombreGenero,
    CONCAT(ac.nombre, ' ', ac.apellido) AS nombreActor,
	pe.sinopsis, 
	date_format(pe.fechaEstreno,'%d/%m/%Y') AS fechaEstreno, 
    pe.codigoPais,
    pa.nombre AS nombrePais,
	pe.duracion, 
    pe.calificacion, 
    pe.DIRECTOR_id, 
    concat(di.nombre, ' ', di.apellido) AS nombreDirector, 
    date_format(di.fechaNacimiento, '%d/%m/%Y') AS fechaNacimientoDirector,
    pe.clasificacion
	FROM pelicula AS pe
    INNER JOIN director AS di ON di.id = pe.DIRECTOR_id
    INNER JOIN pais AS pa ON pa.codigo = pe.codigoPais
    INNER JOIN pelicula_nombre pn ON pn.PELICULA_id = pe.id
    INNER JOIN genero_pelicula AS gp ON gp.PELICULA_id = pe.id
    INNER JOIN genero AS ge ON ge.id = gp.GENERO_id
    INNER JOIN actor_pelicula AS ap ON ap.PELICULA_id = pe.id
    INNER JOIN actor AS ac ON ac.id = ap.ACTOR_id
	ORDER BY pe.id ASC;