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
delete from Mesa
where id_Mesa = 18

delete from comida
where id_Comida = 10

delete from Empleado 
where id_Empleado = 15

delete from Empleado 
where id_Empleado = 14 

delete from Mesa 
where id_Mesa = 17

update Mesa set id_TipodeMesa =1
where id_Mesa = 8

update Empleado set id_TipodeEmpleado = 5
where Nombre ='Diana' and Apellido = 'Perez'

update Bebida set Nombre ='Refresco' 
where id_Bebida = 15

update Comida set Nombre = 'Nachos Especiales'
where Nombre ='Nachos'

