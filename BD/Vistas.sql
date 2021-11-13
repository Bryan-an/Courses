USE bd_peliculas;
ALTER VIEW v_info_peliculas AS 
SELECT p.id AS idPeliculas,
	pn.nombre AS nombrePelicula,
    p.sinopsis,
    p.fechaEstreno,
    p.codigoPais,
    pa.nombre AS nombrePais,
    p.duracion, 
    p.calificacion,
    p.clasificacion,
    CONCAT(d.nombre, ' ', d.apellido) AS nombresDirector,
    g.nombre AS nombreGenero,
    CONCAT(a.nombre, ' ', a.apellido) AS nombresActor,
    p.fechaCreacion,
    p.fechaModificacion
    FROM pelicula AS p
    INNER JOIN pelicula_nombre AS pn ON pn.PELICULA_id = p.id
    INNER JOIN director AS d ON d.id = p.DIRECTOR_id
    INNER JOIN pais AS pa ON pa.codigo = p.codigoPais
    INNER JOIN genero_pelicula AS gp ON gp.PELICULA_id = p.id
    INNER JOIN genero AS g ON g.id = gp.GENERO_id
    INNER JOIN actor_pelicula AS ap ON ap.PELICULA_id = p.id
    INNER JOIN actor AS a ON a.id = ap.ACTOR_id;