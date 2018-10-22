--Practica 8 Triggers--
USE Bar
GO
--SE AGREGO UN NUEVO CAMPO A LA TABLA MESA--
	ALTER TABLE mesa
	ADD Estado VARCHAR(1);
GO

--Al momento de registrar el id_mesa en la cuenta, cambia la mesa a estado disponible--
CREATE TRIGGER TR_MESAS on cuenta after insert 
AS
declare @mesa Varchar(1)
select @mesa = id_mesa from inserted
update Mesa set Estado ='D' where id_Mesa = @mesa

insert into cuenta values(3,2, GETDATE(),6,4,null,160)
go


-- Se creo una tabla despidos para el siguiente trigger--

CREATE TABLE Despidos (id_Empleado int, Nombre varchar(20),Apellido varchar(20))
go

--Al eliminar de la tabla empleado, la informacion se guarda en otra tabla llamada despidos--
CREATE TRIGGER TR_DESPIDOS ON  Empleado AFTER delete 
AS
declare @id_empleado varchar(20)
select @id_empleado = id_Empleado from deleted
declare @nombre varchar(20)
select @nombre = nombre from deleted
declare @Apellido varchar(20)
select @Apellido = Apellido from deleted
insert into Despidos values(@id_empleado,@nombre,@Apellido)
go

delete  from Empleado where id_Empleado = 13

go

--En vez de actualizar, solicita los datos que se quisieron insertar y los que se quisieron borrar--
CREATE TRIGGER TR_BEBIDA on Bebida 
Instead of update 
as
 Select * from inserted
 Select * from deleted
go

update Bebida set Precio=100
where id_Bebida =1
go

