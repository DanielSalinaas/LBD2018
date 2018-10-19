--  Practica 7 --

CREATE PROCEDURE AltoAlcohol @tipo int as 
BEGIN
	SELECT * FROM AlcoholAlto_Bebidas
	WHERE VolumenAlcohol = @tipo
END

EXEC AltoAlcohol @tipo = 40;
GO


CREATE PROCEDURE CuentaMasCara @precio money, @id int as 
BEGIN
	SELECT * FROM Cuenta_Maxima
	WHERE Total = @precio AND NoCuenta = @id
END

EXEC CuentaMasCara  @precio = 460, @id = 3;
GO


CREATE PROCEDURE Meseros @nombre varchar(20) as 
BEGIN
	SELECT * FROM Meseros_activos
	WHERE Mesero = @nombre
END

EXEC Meseros @nombre = "Mario ";
GO


CREATE PROCEDURE PrecioComidas @cantidad money as 
BEGIN
	SELECT * FROM Precio_Comidas
	WHERE  precio > @cantidad
END

EXEC PrecioComidas @cantidad = 150.0000;
GO


CREATE PROCEDURE PrecioEventos @precio money as 
BEGIN
	SELECT * FROM Precio_Eventos
	WHERE precio = @precio 
END

EXEC PrecioEventos @precio = 250.0000;
GO


CREATE FUNCTION EntradaBar(@param money) RETURNS money 
as
BEGIN
	DECLARE @PrecioEntrada money
	SET @PrecioEntrada = @param +(@param * .16)
 	RETURN @PrecioEntrada
END

SELECT dbo.EntradaBar(100) as PrecioTOTAL
GO

USE [Bar]
GO

/****** Object:  StoredProcedure [dbo].[AltoAlcohol]    Script Date: 19/10/2018 02:53:10 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltoAlcohol] @tipo int as 
BEGIN
	SELECT * FROM AlcoholAlto_Bebidas
	WHERE VolumenAlcohol = @tipo
END
GO
