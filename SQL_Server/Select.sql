-- borramos la tabla libros si ya existe
if object_id('libros') is not null
	drop table libros;

-- creamos la tabla libros
create table libros(
	titulo varchar(40),
	autor varchar(30),
	editorial varchar(15),
	precio float, 
	cantidad int
);

go

-- llamamos al procedimiento almacenado sp_columns para conocer los campos
-- de la tabla libros
exec sp_columns libros;

-- insertamos varias filas en la tabla libros
insert into libros (titulo, autor, editorial, precio, cantidad)
	values ('El aleph', 'Borges', 'Emece', 25.50, 100);
insert into libros (titulo, autor, editorial, precio, cantidad)
	values ('Alicia en el pa�s de las marivillas', 'Lewis Carroll', 'Atlantida', 10, 200);
insert into libros (titulo, autor, editorial, precio, cantidad)
	values ('Matem�tica est�s ah�', 'Paenza', 'Siglo XXI', 18.8, 200);

-- recuperamos todos los datos de la tabla libros
select * from libros;

-- recuperamos solo el t�tulo, autor y editorial de la tabla libros
select titulo, autor, editorial from libros;

-- recuperamos el titulo y el precio
select titulo, precio from libros;

-- recuperamos la editorial y la cantidad 
select editorial, cantidad from libros;