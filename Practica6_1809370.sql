﻿USE [master]
GO
/****** Object:  Database [Bar]    Script Date: 13/10/2018 01:20:02 a. m. ******/
CREATE DATABASE [Bar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Bar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bar] SET RECOVERY FULL 
GO
ALTER DATABASE [Bar] SET  MULTI_USER 
GO
ALTER DATABASE [Bar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bar] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bar', N'ON'
GO
ALTER DATABASE [Bar] SET QUERY_STORE = OFF
GO
USE [Bar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Bar]
GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuenta](
	[id_Cuenta] [int] IDENTITY(1,1) NOT NULL,
	[id_Mesa] [int] NULL,
	[id_Empleado] [int] NULL,
	[fecha] [datetime] NULL,
	[id_Bebida] [int] NULL,
	[id_Comida] [int] NULL,
	[id_Evento] [int] NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_Empleado] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[id_TipodeEmpleado] [int] NOT NULL,
	[Turno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Meseros_activos]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Meseros_activos] as (
select nombre + ' ' + apellido as Mesero from Empleado join 
cuenta on cuenta.id_Empleado = Empleado.id_Empleado
)
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[id_Evento] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Nombre] [varchar](50) NULL,
	[id_Banda] [int] NULL,
	[Descripcion] [text] NULL,
	[PrecioEntrada] [money] NULL,
	[CargoxServicio] [float] NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Precio_Eventos]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Precio_Eventos] as(
	select nombre as Evento, Total as precio  from Evento where Total  > (
	Select AVG(Total) as PrecioPromedio 
	from Evento 
	) 
)
GO
/****** Object:  Table [dbo].[Tipo_Empleado]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Empleado](
	[id_TipodeEmpleado] [int] NOT NULL,
	[Trabajo] [varchar](20) NULL,
	[Sueldo] [varchar](20) NULL,
	[AreadeTrabajo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TipodeEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Empleados_Limpieza]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleados_Limpieza] as (
	Select Trabajo  as posicion , t.id_TipodeEmpleado from Tipo_Empleado as t join Empleado as e
	on t.id_TipodeEmpleado = e.id_TipodeEmpleado
)
GO
/****** Object:  View [dbo].[Tipos_Empleados]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Tipos_Empleados] as (
	Select Trabajo  as posicion , t.id_TipodeEmpleado from Tipo_Empleado as t join Empleado as e
	on t.id_TipodeEmpleado = e.id_TipodeEmpleado
)
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comida](
	[id_Comida] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Descripcion] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Comida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Precio_Comidas]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Precio_Comidas] as(
	select nombre as Comida, Precio as precio  from Comida where Precio  > (
	Select AVG(Precio) as PrecioPromedio 
	from Comida 
	) 
)
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebida](
	[id_Bebida] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[VolumenAlcohol] [int] NULL,
	[ContenidoNeto] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[AlcoholAlto_Bebidas]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[AlcoholAlto_Bebidas] as(
	select nombre as Bebida, VolumenAlcohol from Bebida where VolumenAlcohol >(
		Select AVG(VolumenAlcohol) as VolumenPromedio 
	from Bebida

	)
)
GO
/****** Object:  View [dbo].[Cuenta_Maxima]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Cuenta_Maxima] as(
select id_Cuenta as NoCuenta, Total from cuenta where Total =(
		Select Max(Total) as CuentaMaxima
	from cuenta

	)
)
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banda](
	[id_Banda] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Genero] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Banda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 13/10/2018 01:20:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[id_Mesa] [int] NOT NULL,
	[id_TipodeMesa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Mesa]    Script Date: 13/10/2018 01:20:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Mesa](
	[id_TipodeMesa] [int] NOT NULL,
	[TipoMesa] [varchar](20) NULL,
	[num_Asientos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TipodeMesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Bebida] FOREIGN KEY([id_Bebida])
REFERENCES [dbo].[Bebida] ([id_Bebida])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Bebida]
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Comida] FOREIGN KEY([id_Comida])
REFERENCES [dbo].[Comida] ([id_Comida])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Comida]
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Empleado] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleado] ([id_Empleado])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Empleado]
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Evento] FOREIGN KEY([id_Evento])
REFERENCES [dbo].[Evento] ([id_Evento])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Evento]
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Mesa] FOREIGN KEY([id_Mesa])
REFERENCES [dbo].[Mesa] ([id_Mesa])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Mesa]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Tipo_Empleado] FOREIGN KEY([id_TipodeEmpleado])
REFERENCES [dbo].[Tipo_Empleado] ([id_TipodeEmpleado])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Tipo_Empleado]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Banda] FOREIGN KEY([id_Banda])
REFERENCES [dbo].[Banda] ([id_Banda])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Banda]
GO
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Tipo_Mesa] FOREIGN KEY([id_TipodeMesa])
REFERENCES [dbo].[Tipo_Mesa] ([id_TipodeMesa])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Tipo_Mesa]
GO
ALTER TABLE [dbo].[Bebida]  WITH CHECK ADD  CONSTRAINT [CHK_BEBIDA_AlCOHOL] CHECK  (([VolumenAlcohol]<=(70)))
GO
ALTER TABLE [dbo].[Bebida] CHECK CONSTRAINT [CHK_BEBIDA_AlCOHOL]
GO
USE [master]
GO
ALTER DATABASE [Bar] SET  READ_WRITE 
GO
USE [Bar]
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (1, N'Hamburguesa con Papas', 100.0000, N'Hamburguesa normal con papas a la francesa')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (2, N'Boneless', 120.0000, N'Boneless de pollo(500 gr)')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (3, N'Nachos', 100.0000, N'Totopos con queso y salchicha')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (4, N'Cacahuates', 60.0000, N'Plato de cacahuates variados y semillas')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (5, N'Orden de papas a la francesa', 90.0000, N'Plato de papas a la francesa con queso')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (6, N'Ensalada', 100.0000, N'Ración de lechuga con tiras de pollo, verduras y aderezo')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (7, N'Pizza', 120.0000, N'Pizza Grande de ingredientes al gusto')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (8, N'Alitas', 150.0000, N' Orden de alitas bañadas en salsa Barbecue')
GO
INSERT [dbo].[Comida] ([id_Comida], [Nombre], [Precio], [Descripcion]) VALUES (9, N'Tacos', 100.0000, N'Orden de tacos con ingredientes variados')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (1, N'Cuba Libre', 14, N'160 ml', 90.0000, N'Ron con coca y agua mineral adicionado con una rodaja de limon')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (2, N'Margarita', 20, N'200ml', 100.0000, N'Liquido margarita mezclado con tequila, limon y sal')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (3, N'Vampiro', 20, N'200ml', 110.0000, N'Liquido Sangrita mezclado con tequila, sal y limon.')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (4, N'Mojito cubano', 10, N'250ml', 80.0000, N'Ron blanco combinado con agua mineral, azucar, hierbabuena lima y hielo')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (5, N'Piña colada', 14, N'250ml', 90.0000, N'Ron blanco mezclado con sumo de piña y crema de coco')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (6, N'Sangria', 20, N'200ml', 100.0000, N'Vino tinto mezclado con melocoton, naranja, limon, platano, manzana y refresco de naranja')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (7, N'Mandarina blast', 20, N'340ml', 150.0000, N'Mezcal combinado con mandarina y agua caliente adicionado con 2 barras de canela')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (8, N'Margarita de fresa', 15, N'300ml', 130.0000, N'Tequila combinado con fresas, licor de naranja sal y limon.')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (9, N'Caipirinha Brasileña', 17, N'150ml', 120.0000, N'Chacaca con lima, azucar y hielo.')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (10, N'Cubeta de cervezas', 16, N'355ml', 220.0000, N'Cubeta de 6 cervezas(355ml)  de su preferencia')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (11, N'Botella de Tequila', 40, N'800ml', 400.0000, N'Botella de tequila Jose Cuervo')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (12, N'Botella de Whisky', 40, N'750ml', 700.0000, N'Botella de Whisky Johnnie Walker')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (13, N'Botella de Vodka', 42, N'800ml', 500.0000, N'Botella de Vodka Absolut')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (14, N'Botella de Bacardi', 60, N'900ml', 600.0000, N'Botella de Bacardi')
GO
INSERT [dbo].[Bebida] ([id_Bebida], [Nombre], [VolumenAlcohol], [ContenidoNeto], [Precio], [Descripcion]) VALUES (15, N'Limonada', 0, N'500ml', 50.0000, N'Agua de limon')
GO
INSERT [dbo].[Tipo_Empleado] ([id_TipodeEmpleado], [Trabajo], [Sueldo], [AreadeTrabajo]) VALUES (1, N'Mesero', N'5000', N'Mesas')
GO
INSERT [dbo].[Tipo_Empleado] ([id_TipodeEmpleado], [Trabajo], [Sueldo], [AreadeTrabajo]) VALUES (2, N'Cocinero', N'6000', N'Cocina')
GO
INSERT [dbo].[Tipo_Empleado] ([id_TipodeEmpleado], [Trabajo], [Sueldo], [AreadeTrabajo]) VALUES (3, N'Limpieza', N'3000', N'Baños')
GO
INSERT [dbo].[Tipo_Empleado] ([id_TipodeEmpleado], [Trabajo], [Sueldo], [AreadeTrabajo]) VALUES (4, N'Bartender', N'5000', N'Barra')
GO
INSERT [dbo].[Tipo_Empleado] ([id_TipodeEmpleado], [Trabajo], [Sueldo], [AreadeTrabajo]) VALUES (5, N'Gerente', N'15000', N'Todo')
GO
INSERT [dbo].[Tipo_Empleado] ([id_TipodeEmpleado], [Trabajo], [Sueldo], [AreadeTrabajo]) VALUES (6, N'Guardia', N'4000', N'Todo')
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (1, N'Daniel ', N'Salinas', 5, 2)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (2, N'Mario', N'Gonzalez', 1, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (3, N'Jesus', N'Botello', 4, 2)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (4, N'Erick ', N'Gonzalez', 2, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (5, N'Daniel ', N'Saenz', 3, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (6, N'Alan ', N'Alvarez', 1, 2)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (7, N'Carlos', N'Castillo', 3, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (8, N'Alberto', N'Charles', 5, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (9, N'Ivan', N'Valenciano', 2, 2)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (10, N'Maria ', N'Botello', 4, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (11, N'Diana ', N'Perez', 3, 2)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (12, N'Ricardo ', N'Botello', 1, 1)
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Apellido], [id_TipodeEmpleado], [Turno]) VALUES (13, N'Keneth', N'Ocon ', 4, 2)
GO
INSERT [dbo].[Tipo_Mesa] ([id_TipodeMesa], [TipoMesa], [num_Asientos]) VALUES (1, N'individual', 1)
GO
INSERT [dbo].[Tipo_Mesa] ([id_TipodeMesa], [TipoMesa], [num_Asientos]) VALUES (2, N'Normal', 4)
GO
INSERT [dbo].[Tipo_Mesa] ([id_TipodeMesa], [TipoMesa], [num_Asientos]) VALUES (3, N'Familiar', 8)
GO
INSERT [dbo].[Tipo_Mesa] ([id_TipodeMesa], [TipoMesa], [num_Asientos]) VALUES (4, N'Mesa-Sillon', 4)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (1, 1)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (2, 1)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (3, 1)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (4, 1)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (5, 2)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (6, 2)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (7, 2)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (8, 2)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (9, 2)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (10, 3)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (11, 3)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (12, 3)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (13, 3)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (14, 4)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (15, 4)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (16, 4)
GO
INSERT [dbo].[Mesa] ([id_Mesa], [id_TipodeMesa]) VALUES (17, 4)
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (1, N'Jadafa', N'Rock')
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (2, N'RapperGang', N'Rap')
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (3, N'Scream Day', N'Alternativo')
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (4, N'Atelier', N'Alternativo')
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (5, N'Animas', N'Indie')
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (6, N'Alter ', N'Indie')
GO
INSERT [dbo].[Banda] ([id_Banda], [Nombre], [Genero]) VALUES (7, N'Trainer', N'Rap-Rock')
GO
INSERT [dbo].[Evento] ([id_Evento], [Fecha], [Nombre], [id_Banda], [Descripcion], [PrecioEntrada], [CargoxServicio], [Total]) VALUES (1, CAST(N'2018-09-30T18:00:00.000' AS DateTime), N'JadaFest', 1, N'Inicio del tour de JadafaBand', 100.0000, 20, 120.0000)
GO
INSERT [dbo].[Evento] ([id_Evento], [Fecha], [Nombre], [id_Banda], [Descripcion], [PrecioEntrada], [CargoxServicio], [Total]) VALUES (2, CAST(N'2018-10-31T22:00:00.000' AS DateTime), N' HalloweenFest', 2, N'Fiesta de disfraces', 200.0000, 40, 240.0000)
GO
INSERT [dbo].[Evento] ([id_Evento], [Fecha], [Nombre], [id_Banda], [Descripcion], [PrecioEntrada], [CargoxServicio], [Total]) VALUES (3, CAST(N'2018-11-05T22:00:00.000' AS DateTime), N'IndieFest', 5, N'Festival de musica Indie', 200.0000, 50, 250.0000)
GO
INSERT [dbo].[Evento] ([id_Evento], [Fecha], [Nombre], [id_Banda], [Descripcion], [PrecioEntrada], [CargoxServicio], [Total]) VALUES (4, CAST(N'2018-11-10T22:00:00.000' AS DateTime), N'Rap God', 7, N'Festival de musica rap', 300.0000, 50, 350.0000)
GO
SET IDENTITY_INSERT [dbo].[cuenta] ON 
GO
INSERT [dbo].[cuenta] ([id_Cuenta], [id_Mesa], [id_Empleado], [fecha], [id_Bebida], [id_Comida], [id_Evento], [Total]) VALUES (1, 1, 2, CAST(N'2018-10-01T15:00:00.000' AS DateTime), 2, NULL, NULL, 100.0000)
GO
INSERT [dbo].[cuenta] ([id_Cuenta], [id_Mesa], [id_Empleado], [fecha], [id_Bebida], [id_Comida], [id_Evento], [Total]) VALUES (2, 2, 6, CAST(N'2018-10-02T00:00:00.000' AS DateTime), 4, 5, NULL, 170.0000)
GO
INSERT [dbo].[cuenta] ([id_Cuenta], [id_Mesa], [id_Empleado], [fecha], [id_Bebida], [id_Comida], [id_Evento], [Total]) VALUES (3, 5, 12, CAST(N'2018-10-31T22:00:00.000' AS DateTime), 6, 7, 2, 460.0000)
GO
SET IDENTITY_INSERT [dbo].[cuenta] OFF
GO
													       
/**** Practica 6 ****/													       
													       
SELECT COMIDA.Nombre ,COMIDA.Descripcion , (
	SELECT MAX(PRECIO)
	FROM Comida
) as PrecioMaximo
FROM COMIDA

SELECT NOMBRE AS BEBIDA , CONTENIDONETO AS CANTIDAD FROM Bebida WHERE PRECIO >(
		SELECT   AVG(PRECIO)
		FROM Bebida AS PRECIOPROMEDIO
		) 

SELECT top 1* from(
	SELECT id_banda,(
		select count(id_banda)
			From Banda	as B
			where b.id_Banda =id_Banda
	) as Bandas
	from Banda
	) as NB
where NB.Bandas >1
	

WITH SUMAPRECIOEVENTOS AS (
	SELECT COUNT(id_Evento) as NUMEVENTOS, SUM(Total) AS TOTALEVENTOS
	 FROM Evento 

)
SELECT * FROM SUMAPRECIOEVENTOS 




DECLARE @query nvarchar(MAX)
DECLARE @Comidas nvarchar(MAX) = 'Comidas'
SET @query = 'Select Nombre as ' + @Comidas +  ' from Comida'
print (@query)
EXEC (@query)


create view Meseros_activos as (
select nombre + ' ' + apellido as Mesero from Empleado join 
cuenta on cuenta.id_Empleado = Empleado.id_Empleado
)
select * from Meseros_activos


create view PrecioAlto_Eventos as(
	select nombre as Evento, Total as precio  from Evento where Total  > (
	Select AVG(Total) as PrecioPromedio 
	from Evento 
	) 
)
Select *from Precio_Eventos

create view PrecioAlto_Comidas as(
	select nombre as Comida, Precio as precio  from Comida where Precio  > (
	Select AVG(Precio) as PrecioPromedio 
	from Comida 
	) 
)
select * from Precio_Comidas 

create view AlcoholAlto_Bebidas as(
	select nombre as Bebida, VolumenAlcohol from Bebida where VolumenAlcohol >(
		Select AVG(VolumenAlcohol) as VolumenPromedio 
	from Bebida

	)
)
select * from AlcoholAlto_Bebidas

create view Cuenta_Maxima as(
select id_Cuenta as NoCuenta, Total from cuenta where Total =(
		Select Max(Total) as CuentaMaxima
	from cuenta

	)
)
select * from  Cuenta_Maxima

