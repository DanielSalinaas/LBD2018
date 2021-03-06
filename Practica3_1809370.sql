USE [Bar]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebida]') AND type in (N'U'))
ALTER TABLE [dbo].[Bebida] DROP CONSTRAINT IF EXISTS [CHK_BEBIDA_AlCOHOL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mesa]') AND type in (N'U'))
ALTER TABLE [dbo].[Mesa] DROP CONSTRAINT IF EXISTS [FK_Mesa_Tipo_Mesa]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Evento]') AND type in (N'U'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT IF EXISTS [FK_Evento_Banda]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT IF EXISTS [FK_Empleado_Tipo_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuenta]') AND type in (N'U'))
ALTER TABLE [dbo].[cuenta] DROP CONSTRAINT IF EXISTS [FK_cuenta_Mesa]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuenta]') AND type in (N'U'))
ALTER TABLE [dbo].[cuenta] DROP CONSTRAINT IF EXISTS [FK_cuenta_Evento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuenta]') AND type in (N'U'))
ALTER TABLE [dbo].[cuenta] DROP CONSTRAINT IF EXISTS [FK_cuenta_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuenta]') AND type in (N'U'))
ALTER TABLE [dbo].[cuenta] DROP CONSTRAINT IF EXISTS [FK_cuenta_Comida]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuenta]') AND type in (N'U'))
ALTER TABLE [dbo].[cuenta] DROP CONSTRAINT IF EXISTS [FK_cuenta_Bebida]
GO
/****** Object:  Table [dbo].[Tipo_Mesa]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tipo_Mesa]
GO
/****** Object:  Table [dbo].[Tipo_Empleado]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tipo_Empleado]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Mesa]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Evento]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[cuenta]
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Comida]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Bebida]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Banda]
GO
USE [master]
GO
/****** Object:  Database [Bar]    Script Date: 25/09/2018 10:27:35 p. m. ******/
DROP DATABASE IF EXISTS [Bar]
GO
/****** Object:  Database [Bar]    Script Date: 25/09/2018 10:27:35 p. m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Bar')
BEGIN
CREATE DATABASE [Bar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
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
/****** Object:  Table [dbo].[Banda]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Banda](
	[id_Banda] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Genero] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Banda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bebida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bebida](
	[id_Bebida] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[VolumenAlcohol] [int] NULL,
	[ContenidoNeto] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Descripcion] [text] NULL,
	[Imagen] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comida](
	[id_Comida] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Descripcion] [text] NOT NULL,
	[imagen] [image] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Comida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuenta]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Evento]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mesa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Mesa](
	[id_Mesa] [int] NOT NULL,
	[id_TipodeMesa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tipo_Empleado]    Script Date: 25/09/2018 10:27:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Empleado]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Tipo_Mesa]    Script Date: 25/09/2018 10:27:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Mesa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_Mesa](
	[id_TipodeMesa] [int] NOT NULL,
	[TipoMesa] [varchar](20) NULL,
	[num_Asientos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TipodeMesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Bebida]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Bebida] FOREIGN KEY([id_Bebida])
REFERENCES [dbo].[Bebida] ([id_Bebida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Bebida]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Bebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Comida]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Comida] FOREIGN KEY([id_Comida])
REFERENCES [dbo].[Comida] ([id_Comida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Comida]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Comida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Empleado] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleado] ([id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Evento]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Evento] FOREIGN KEY([id_Evento])
REFERENCES [dbo].[Evento] ([id_Evento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Evento]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Evento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Mesa]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_Mesa] FOREIGN KEY([id_Mesa])
REFERENCES [dbo].[Mesa] ([id_Mesa])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cuenta_Mesa]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuenta]'))
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_cuenta_Mesa]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Tipo_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Tipo_Empleado] FOREIGN KEY([id_TipodeEmpleado])
REFERENCES [dbo].[Tipo_Empleado] ([id_TipodeEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Tipo_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Tipo_Empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Banda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Banda] FOREIGN KEY([id_Banda])
REFERENCES [dbo].[Banda] ([id_Banda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Banda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Banda]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mesa_Tipo_Mesa]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mesa]'))
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Tipo_Mesa] FOREIGN KEY([id_TipodeMesa])
REFERENCES [dbo].[Tipo_Mesa] ([id_TipodeMesa])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mesa_Tipo_Mesa]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mesa]'))
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Tipo_Mesa]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CHK_BEBIDA_AlCOHOL]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebida]'))
ALTER TABLE [dbo].[Bebida]  WITH CHECK ADD  CONSTRAINT [CHK_BEBIDA_AlCOHOL] CHECK  (([VolumenAlcohol]<=(70)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CHK_BEBIDA_AlCOHOL]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bebida]'))
ALTER TABLE [dbo].[Bebida] CHECK CONSTRAINT [CHK_BEBIDA_AlCOHOL]
GO
USE [master]
GO
ALTER DATABASE [Bar] SET  READ_WRITE 
GO
