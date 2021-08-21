create database Products
go
use Products

create table Productos 
(
Id int identity (1,1) primary key,
Nombre nvarchar (100),
Descripcion nvarchar (100),
Marca nvarchar (100),
Precio float,
Stock int
)


insert into Productos 
values
('Leche','1 litro','Covap',0.75,35),
('Colacao','1 Kilogramo','El negrito',3.55,18),
('Queso','1 kilogramo','Sierra magina',15,100)

---PROCEDIMIENTOS ALMACENADOS 
--------------------------MOSTRAR 
create proc MostrarProductos
as
select *from Productos
go

--------------------------INSERTAR 
create proc InsetarProductos
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@precio float,
@stock int
as
insert into Productos values (@nombre,@descrip,@marca,@precio,@stock)
go

------------------------ELIMINAR
create proc EliminarProducto
@idpro int
as
delete from Productos where Id=@idpro
go
------------------EDITAR

create proc EditarProductos
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@precio float,
@stock int,
@id int
as
update Productos set Nombre=@nombre, Descripcion=@descrip, Marca=@marca, Precio=@precio, Stock=@stock where Id=@id
go
