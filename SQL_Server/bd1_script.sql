USE [master]
GO
/****** Object:  Database [bd1]    Script Date: 12/10/2021 0:14:49 ******/
CREATE DATABASE [bd1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bd1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bd1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bd1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd1] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bd1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd1] SET RECOVERY FULL 
GO
ALTER DATABASE [bd1] SET  MULTI_USER 
GO
ALTER DATABASE [bd1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bd1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd1', N'ON'
GO
ALTER DATABASE [bd1] SET QUERY_STORE = OFF
GO
USE [bd1]
GO
/****** Object:  Table [dbo].[agenda]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agenda](
	[nombre] [varchar](30) NULL,
	[domicilio] [varchar](30) NULL,
	[telefono] [varchar](11) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alumnos]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnos](
	[apellido] [varchar](30) NULL,
	[nombre] [varchar](30) NULL,
	[documento] [char](8) NULL,
	[domicilio] [varchar](30) NULL,
	[fecha_ingreso] [datetime] NULL,
	[fecha_nacimiento] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[descripcion] [varchar](30) NULL,
	[precio] [smallmoney] NULL,
	[cantidad] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[autos]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autos](
	[patente] [char](6) NOT NULL,
	[marca] [varchar](20) NULL,
	[modelo] [char](4) NULL,
	[precio] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[documento] [char](8) NULL,
	[apellido] [varchar](20) NULL,
	[nombre] [varchar](20) NULL,
	[domicilio] [varchar](30) NULL,
	[telefono] [varchar](11) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentas]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentas](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[documento] [char](8) NOT NULL,
	[nombre] [varchar](30) NULL,
	[saldo] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[nombre] [varchar](30) NOT NULL,
	[apellido] [varchar](20) NOT NULL,
	[documento] [char](8) NOT NULL,
	[fecha_nacimiento] [datetime] NULL,
	[fecha_ingreso] [datetime] NULL,
	[sueldo] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[libros]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](40) NOT NULL,
	[autor] [varchar](20) NULL,
	[editorial] [varchar](20) NULL,
	[precio] [decimal](6, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicamentos]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicamentos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[laboratorio] [varchar](20) NULL,
	[precio] [decimal](5, 2) NULL,
	[cantidad] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[peliculas]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peliculas](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](40) NOT NULL,
	[actor] [varchar](20) NULL,
	[duracion] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestamos]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamos](
	[titulo] [varchar](40) NOT NULL,
	[documento] [char](8) NOT NULL,
	[fecha_prestamo] [datetime] NOT NULL,
	[fecha_devolucion] [datetime] NULL,
	[devuelto] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[nombre] [varchar](20) NOT NULL,
	[clave] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visitantes]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visitantes](
	[nombre] [varchar](30) NULL,
	[edad] [tinyint] NULL,
	[sexo] [char](1) NULL,
	[domicilio] [varchar](30) NULL,
	[ciudad] [varchar](20) NULL,
	[telefono] [varchar](11) NULL,
	[mail] [varchar](30) NULL,
	[monto_compra] [decimal](6, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visitas]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visitas](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[mail] [varchar](50) NULL,
	[pais] [varchar](20) NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[agenda] ([nombre], [domicilio], [telefono]) VALUES (N'Juan Perez', N'Avellaneda 908', N'4252525')
GO
INSERT [dbo].[agenda] ([nombre], [domicilio], [telefono]) VALUES (N'Marta Lopez', N'Sucre 34', N'4556688')
GO
INSERT [dbo].[agenda] ([nombre], [domicilio], [telefono]) VALUES (N'Carlos Garcia', N'Sarmiento 1258', NULL)
GO
INSERT [dbo].[alumnos] ([apellido], [nombre], [documento], [domicilio], [fecha_ingreso], [fecha_nacimiento]) VALUES (N'Gonzalez', N'Ana', N'22222222', N'Colon 123', CAST(N'1990-08-10T00:00:00.000' AS DateTime), CAST(N'1972-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[alumnos] ([apellido], [nombre], [documento], [domicilio], [fecha_ingreso], [fecha_nacimiento]) VALUES (N'Juarez', N'Bernardo', N'25555555', N'Sucre 456', CAST(N'1991-03-03T00:00:00.000' AS DateTime), CAST(N'1972-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[alumnos] ([apellido], [nombre], [documento], [domicilio], [fecha_ingreso], [fecha_nacimiento]) VALUES (N'Perez', N'Laura', N'26666666', N'Bulnes 345', CAST(N'1991-03-03T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[alumnos] ([apellido], [nombre], [documento], [domicilio], [fecha_ingreso], [fecha_nacimiento]) VALUES (N'Lopez', N'Carlos', N'27777777', N'Sarmiento 1254', CAST(N'1990-03-15T00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[articulos] ON 
GO
INSERT [dbo].[articulos] ([codigo], [nombre], [descripcion], [precio], [cantidad]) VALUES (1, N'impresora', N'Epson Stylus C45', 460.9200, 20)
GO
INSERT [dbo].[articulos] ([codigo], [nombre], [descripcion], [precio], [cantidad]) VALUES (2, N'impresora', N'Epson Stylus C85', 575.0000, 0)
GO
INSERT [dbo].[articulos] ([codigo], [nombre], [descripcion], [precio], [cantidad]) VALUES (3, N'monitor', N'Samsung 14', 920.0000, 0)
GO
INSERT [dbo].[articulos] ([codigo], [nombre], [descripcion], [precio], [cantidad]) VALUES (4, N'teclado', N'ingles Biswal', 115.0000, 45)
GO
SET IDENTITY_INSERT [dbo].[articulos] OFF
GO
INSERT [dbo].[autos] ([patente], [marca], [modelo], [precio]) VALUES (N'ACD123', N'Fiat 128', N'1970', 15000)
GO
INSERT [dbo].[autos] ([patente], [marca], [modelo], [precio]) VALUES (N'ACG234', N'Renault 11', N'1990', 40000)
GO
INSERT [dbo].[autos] ([patente], [marca], [modelo], [precio]) VALUES (N'BCC333', N'Renault Megane', N'1998', 95000)
GO
INSERT [dbo].[autos] ([patente], [marca], [modelo], [precio]) VALUES (N'BCD333', N'Peugeot 505', N'1990', 80000)
GO
INSERT [dbo].[autos] ([patente], [marca], [modelo], [precio]) VALUES (N'BVF543', N'Fiat 128', N'1975', 20000)
GO
INSERT [dbo].[autos] ([patente], [marca], [modelo], [precio]) VALUES (N'GCD123', N'Renault Clio', N'1990', 70000)
GO
INSERT [dbo].[clientes] ([documento], [apellido], [nombre], [domicilio], [telefono]) VALUES (N'2233344 ', N'Perez', N'Juan', N'Sarmiento 980', N'4342345')
GO
INSERT [dbo].[clientes] ([documento], [apellido], [nombre], [domicilio], [telefono]) VALUES (N'2333344 ', N'Perez', N'Ana', N'Colon 234', N'43434')
GO
INSERT [dbo].[clientes] ([documento], [apellido], [nombre], [domicilio], [telefono]) VALUES (N'2433344 ', N'Garcia', N'Luis', N'Avellaneda 1454', N'4558877')
GO
INSERT [dbo].[clientes] ([documento], [apellido], [nombre], [domicilio], [telefono]) VALUES (N'2533344 ', N'Juarez', N'Ana', N'Urquiza 444', N'4789900')
GO
SET IDENTITY_INSERT [dbo].[cuentas] ON 
GO
INSERT [dbo].[cuentas] ([numero], [documento], [nombre], [saldo]) VALUES (1, N'25666777', N'Juan Perez', 2500.5000)
GO
INSERT [dbo].[cuentas] ([numero], [documento], [nombre], [saldo]) VALUES (2, N'12345678', NULL, 324.0000)
GO
SET IDENTITY_INSERT [dbo].[cuentas] OFF
GO
INSERT [dbo].[empleados] ([nombre], [apellido], [documento], [fecha_nacimiento], [fecha_ingreso], [sueldo]) VALUES (N'Ana', N'Acosta', N'22222222', CAST(N'1970-10-10T00:00:00.000' AS DateTime), CAST(N'1995-05-05T00:00:00.000' AS DateTime), CAST(228.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[empleados] ([nombre], [apellido], [documento], [fecha_nacimiento], [fecha_ingreso], [sueldo]) VALUES (N'Carlos', N'Caseres', N'25555555', CAST(N'1978-02-06T00:00:00.000' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), CAST(309.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[empleados] ([nombre], [apellido], [documento], [fecha_nacimiento], [fecha_ingreso], [sueldo]) VALUES (N'Francisco', N'Garcia', N'26666666', CAST(N'1978-10-15T00:00:00.000' AS DateTime), CAST(N'1998-10-02T00:00:00.000' AS DateTime), CAST(250.68 AS Decimal(6, 2)))
GO
INSERT [dbo].[empleados] ([nombre], [apellido], [documento], [fecha_nacimiento], [fecha_ingreso], [sueldo]) VALUES (N'Gabriela', N'Garcia', N'30000000', CAST(N'1985-10-25T00:00:00.000' AS DateTime), CAST(N'2000-12-22T00:00:00.000' AS DateTime), CAST(300.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[empleados] ([nombre], [apellido], [documento], [fecha_nacimiento], [fecha_ingreso], [sueldo]) VALUES (N'Luis', N'Lopez', N'31111111', CAST(N'1987-02-10T00:00:00.000' AS DateTime), CAST(N'2000-08-21T00:00:00.000' AS DateTime), CAST(350.98 AS Decimal(6, 2)))
GO
SET IDENTITY_INSERT [dbo].[libros] ON 
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (1, N'El aleph', N'Borges', N'Emece', CAST(15.90 AS Decimal(6, 2)))
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (2, N'Cervantes y el quijote', N'Borges', N'Paidos', NULL)
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (3, N'Alicia en el pais de las maravillas', N'Lewis Carroll', NULL, CAST(19.90 AS Decimal(6, 2)))
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (4, N'Martin Fierro', N'Jose Hernandez', N'Emece', CAST(25.90 AS Decimal(6, 2)))
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (5, N'Antología poética', N'Borges', NULL, CAST(32.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (6, N'Java en 10 minutos', N'Mario Molina', NULL, CAST(45.80 AS Decimal(6, 2)))
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (7, N'Martin Fierro', N'Jose Hernandez', NULL, CAST(40.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[libros] ([codigo], [titulo], [autor], [editorial], [precio]) VALUES (8, N'Aprenda PHP', N'Mario Molina', NULL, CAST(56.50 AS Decimal(6, 2)))
GO
SET IDENTITY_INSERT [dbo].[libros] OFF
GO
SET IDENTITY_INSERT [dbo].[medicamentos] ON 
GO
INSERT [dbo].[medicamentos] ([codigo], [nombre], [laboratorio], [precio], [cantidad]) VALUES (1, N'Sertal', N'Roche', CAST(5.20 AS Decimal(5, 2)), 200)
GO
INSERT [dbo].[medicamentos] ([codigo], [nombre], [laboratorio], [precio], [cantidad]) VALUES (2, N'Buscapina', N'Roche', CAST(4.10 AS Decimal(5, 2)), 200)
GO
SET IDENTITY_INSERT [dbo].[medicamentos] OFF
GO
SET IDENTITY_INSERT [dbo].[peliculas] ON 
GO
INSERT [dbo].[peliculas] ([codigo], [titulo], [actor], [duracion]) VALUES (1, N'Mision imposible', N'Tom Cruise', 120)
GO
INSERT [dbo].[peliculas] ([codigo], [titulo], [actor], [duracion]) VALUES (2, N'Harry Potter y la piedra filosofal', N'Daniel R.', 0)
GO
INSERT [dbo].[peliculas] ([codigo], [titulo], [actor], [duracion]) VALUES (3, N'Harry Potter y la camara secreta', N'Daniel R.', 190)
GO
INSERT [dbo].[peliculas] ([codigo], [titulo], [actor], [duracion]) VALUES (4, N'Mision imposible 2', N'Tom Cruise', 120)
GO
INSERT [dbo].[peliculas] ([codigo], [titulo], [actor], [duracion]) VALUES (5, N'Mujer bonita', NULL, 120)
GO
INSERT [dbo].[peliculas] ([codigo], [titulo], [actor], [duracion]) VALUES (6, N'Tootsie', N'D. Hoffman', 90)
GO
SET IDENTITY_INSERT [dbo].[peliculas] OFF
GO
INSERT [dbo].[prestamos] ([titulo], [documento], [fecha_prestamo], [fecha_devolucion], [devuelto]) VALUES (N'Manual de 1 grado', N'23456789', CAST(N'2006-12-15T00:00:00.000' AS DateTime), CAST(N'2005-12-18T00:00:00.000' AS DateTime), N'n')
GO
INSERT [dbo].[prestamos] ([titulo], [documento], [fecha_prestamo], [fecha_devolucion], [devuelto]) VALUES (N'Alicia en el pais de las maravillas', N'23456789', CAST(N'2006-12-16T00:00:00.000' AS DateTime), NULL, N'n')
GO
INSERT [dbo].[prestamos] ([titulo], [documento], [fecha_prestamo], [fecha_devolucion], [devuelto]) VALUES (N'El aleph', N'22543987', CAST(N'2006-12-16T00:00:00.000' AS DateTime), CAST(N'2006-08-19T00:00:00.000' AS DateTime), N'n')
GO
INSERT [dbo].[prestamos] ([titulo], [documento], [fecha_prestamo], [fecha_devolucion], [devuelto]) VALUES (N'Manual de geografia 5 grado', N'25555666', CAST(N'2006-12-18T00:00:00.000' AS DateTime), NULL, N's')
GO
INSERT [dbo].[prestamos] ([titulo], [documento], [fecha_prestamo], [fecha_devolucion], [devuelto]) VALUES (N'Cosmos', N'12345678', CAST(N'2021-03-02T00:00:00.000' AS DateTime), NULL, N'n')
GO
INSERT [dbo].[usuarios] ([nombre], [clave]) VALUES (N'juanperez', N'Boca')
GO
INSERT [dbo].[usuarios] ([nombre], [clave]) VALUES (N'raulgarcia', N'River')
GO
INSERT [dbo].[visitantes] ([nombre], [edad], [sexo], [domicilio], [ciudad], [telefono], [mail], [monto_compra]) VALUES (N'Susana Molina', NULL, N'f', N'Colon 123', N'Cordoba', NULL, N'no tiene', CAST(59.80 AS Decimal(6, 2)))
GO
INSERT [dbo].[visitantes] ([nombre], [edad], [sexo], [domicilio], [ciudad], [telefono], [mail], [monto_compra]) VALUES (N'Marcos Torres', 29, N'f', NULL, N'Carlos Paz', NULL, N'marcostorres@hotmail.com', NULL)
GO
INSERT [dbo].[visitantes] ([nombre], [edad], [sexo], [domicilio], [ciudad], [telefono], [mail], [monto_compra]) VALUES (N'Bryan', 20, N'f', NULL, N'Cordoba', N'1234', N'no tiene', CAST(83.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[visitantes] ([nombre], [edad], [sexo], [domicilio], [ciudad], [telefono], [mail], [monto_compra]) VALUES (NULL, NULL, N'f', NULL, N'Cordoba', NULL, N'no tiene', NULL)
GO
SET IDENTITY_INSERT [dbo].[visitas] ON 
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (1, N'Ana Maria Lopez', N'AnaMaria@hotmail.com', N'Argentina', CAST(N'2006-10-10T10:10:00.000' AS DateTime))
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (2, N'Gustavo Gonzalez', N'GustavoGGonzalez@hotmail.com', N'Chile', CAST(N'2006-10-10T21:30:00.000' AS DateTime))
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (3, N'Juancito', N'JuanJosePerez@hotmail.com', N'Argentina', CAST(N'2006-10-11T15:45:00.000' AS DateTime))
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (4, N'Fabiola Martinez', N'MartinezFabiola@hotmail.com', N'Mexico', CAST(N'2006-10-12T08:15:00.000' AS DateTime))
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (5, N'Fabiola Martinez', N'MartinezFabiola@hotmail.com', N'Mexico', CAST(N'2006-09-12T20:45:00.000' AS DateTime))
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (6, N'Juancito', N'JuanJosePerez@hotmail.com', N'Argentina', CAST(N'2006-09-12T16:20:00.000' AS DateTime))
GO
INSERT [dbo].[visitas] ([numero], [nombre], [mail], [pais], [fecha]) VALUES (7, N'Juancito', N'JuanJosePerez@hotmail.com', N'Argentina', CAST(N'2006-09-15T16:25:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[visitas] OFF
GO
ALTER TABLE [dbo].[articulos] ADD  DEFAULT ((0)) FOR [cantidad]
GO
ALTER TABLE [dbo].[libros] ADD  DEFAULT ('Desconocido') FOR [autor]
GO
ALTER TABLE [dbo].[prestamos] ADD  DEFAULT ('n') FOR [devuelto]
GO
ALTER TABLE [dbo].[visitantes] ADD  DEFAULT ('f') FOR [sexo]
GO
ALTER TABLE [dbo].[visitantes] ADD  DEFAULT ('Cordoba') FOR [ciudad]
GO
ALTER TABLE [dbo].[visitantes] ADD  DEFAULT ('no tiene') FOR [mail]
GO
ALTER TABLE [dbo].[visitas] ADD  DEFAULT ('Anonimo') FOR [nombre]
GO
/****** Object:  StoredProcedure [dbo].[HelloWorldprocedure]    Script Date: 12/10/2021 0:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[HelloWorldprocedure]
as 
print 'Hello World'

exec HelloWorldprocedure
GO
USE [master]
GO
ALTER DATABASE [bd1] SET  READ_WRITE 
GO
