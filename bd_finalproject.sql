create database FunerariaElFinaldb

use FunerariaElFinaldb

--crear tabla clientes
create table Clientes
(
id_Clientes int primary key,
Nombre varchar (100) not null,
Apellido varchar (100) not null,
Fecha_Nac date,
Direccion varchar (200),
Telefono varchar (50),
id_Sector int,
id_Municipio int,
id_Provincia int,
id_Region int,
Email varchar(50) unique,
Fecha_Creacion DateTime
)

select * from Clientes 

alter table Clientes add   --Agregar las tablas que me faltaron


EXEC sp_RENAME 'Clientes.Region', 'IDRegion', 'column' --Renaming column

Alter table Clientes drop column Email --Eliminaar columna

Create table Sector
(
ID int primary key,
Descripcion varchar (50)
)
--Creando las tablas estaticas
Create table Municipio
(
ID int primary key,
Descripcion varchar (50)
)

Create table Provincia
(
ID int primary key,
Descripcion varchar (50)
)

Create table Region
(
ID int primary key,
Descripcion varchar (50)
)

 --SECTORES DE MI TABLA
insert into Sector values
(1, 'La Caleta'),
(2, 'Los Frailes'),
(3, 'Gazcue'),
(4, 'LOS MINEROS'),
(5, 'Palo Alto'),
(6, 'Bella Luz'),
(7, 'El Erfa'),
(8, 'Los hatos'),
(9, 'Los Españoles'),
(10, 'Barrio Libertad'),
(11, 'Los Multi'),
(12, 'Santa Fe'),
(13, 'Quita Sueño'),
(14, 'Los Pinos'),
(15, 'Vista de Valle'),
(16, 'El Paraiso'),
(17, 'Los Cajuiles'),
(18, 'Los Pomos'),
(19, 'La Cruz'),
(20, 'Sabana Al Medio'),
(21, 'Plan Piloto'),
(22, 'URB. Maria Cristina'),
(23, 'URB. Los Maestros'),
(24, 'Santa Rosa'),
(25, 'Las Colinas'),
(26, 'La Altagracia al Norte'),
(27, 'Los Algodones'),
(28, 'Barrio La Yuca'),
(29, 'Las Flores'),
(30, 'El tanque'),
(31, 'Los tres brazos'),
(32, 'El tamarindo'),
(33, 'Los mina norte'),
(34, 'Los mina sur'),
(35, 'Los trinitarios'),
(36, 'Cancino'),
(37, 'Alma Rosa'),
(38, 'Villa faro'),
(39, 'Cancino adentro'),
(40, 'Cancino afuera'),
(42, 'El Almirante'),
(43, 'Ensanche Ozama'),
(44, 'Las Americas'),
(45, 'Las Canas'),
(46, 'Villa Duarte'),
(47,'Isabelita'),
(41, 'Hainamosa')

insert into Region values
(1, 'Norte'),
(2, 'Sureste'),
(3, 'Suroeste')

insert into Provincias values
(1, 'Azua'),
(2, 'Bahoruco'),
(3, 'Barahona'),
(4, 'Dajabón'),
(5, 'Distrito Nacional'),
(6, 'Duarte'),
(7, 'Elías Piña'),
(8, 'El Seibo'),
(9, 'Espaillat'),
(10, 'Hato Mayor'),
(11, 'Hermanas Mirabal'),
(12, 'Independencia'),
(13, 'La Altagracia'),
(14, 'La Romana'),
(15, 'La Vega'),
(16, 'María Trinidad Sánchez'),
(17, 'Monseñor Nouel'),
(18, 'Monte Cristi'),
(19, 'Monte Plata'),
(20, 'Pedernales'),
(21, 'Peravia'),
(22, 'Puerto Plata'),
(23, 'Samaná'),
(24, 'Sánchez Ramírez'),
(25, 'San Cristóbal'),
(26, 'San José de Ocoa'),
(27, 'San Juan'),
(28, 'San Pedro de Macorís'),
(29, 'Santiago'),
(30, 'Santiago Rodríguez'),
(31, 'Santo Domingo'),
(32, 'Valverde')

Insert into Municipios values
(1, 'Altamira'),
(2, 'Arenoso'),
(3, 'Azua'),
(4, 'Baitoa'),
(5, 'Bajos de Haina'),
(6, 'Bani'),
(7, 'Banica'),
(8, 'Barahona'),
(9, 'Bayaguana'),
(10, 'Boca Chica'),
(11, 'Bohechio'),
(12, 'Bonao'),
(13, 'Cabral'),
(14, 'Cabrera'),
(15, 'Cambita Garabitos'),
(16, 'Castañuelas'),
(17, 'Castillo'),
(18, 'Cayetano Germosen'),
(19, 'Cevicos'),
(20, 'Comendador'),
(21, 'Constanza'),
(22, 'Consuelo'),
(23, 'Cotui'),
(24, 'Cristobal'),
(25, 'Dajabon'),
(26, 'Distrito Nacional'),
(27, 'Duverge'),
(28, 'El Cercado'),
(29, 'El Factor'),
(30, 'El Llano'),
(31, 'El Peñon'),
(32, 'El Pino'),
(33, 'El Seibo'),
(34, 'El Valle'),
(35, 'Enriquillo'),
(36, 'Esperanza'),
(37, 'Estebania'),
(38, 'Eugenio Maria de Hostos'),
(39, 'Fantino'),
(40, 'Fundacion'),
(41, 'Galvan'),
(42, 'Gaspar Hernandez'),
(43, 'Guananico'),
(44, 'Guayabal'),
(45, 'Guayacanes'),
(46, 'Guaymate'),
(47, 'Guayubin'),
(48, 'Hato Mayor'),
(49, 'Higuey'),
(50, 'Hondo Valle'),
(51, 'Imbert'),
(52, 'Jamo Al Norte'),
(53, 'Janico'),
(54, 'Jaquimeyes'),
(55, 'Jarabacoa'),
(56, 'Jima Abajo'),
(57, 'Jimani'),
(58, 'Juan de Herrera'),
(59, 'Juan Santiago'),
(60, 'La Cienaga'),
(61, 'La Descubierta'),
(62, 'La Romana'),
(63, 'La Vega'),
(64, 'Laguna Salada'),
(65, 'Las Charcas'),
(66, 'Las Guaranas'),
(67, 'Las Matas de Farfan'),
(68, 'Las Matas de Santa Cruz'),
(69, 'Las Salinas'),
(70, 'Las Terrenas'),
(71, 'Las Yayas de Viajama'),
(72, 'Licey al Medio'),
(73, 'Loma de Cabrera'),
(74, 'Los Alcarrizos'),
(75, 'Los Cacaos'),
(76, 'Los Hidalgos'),
(77, 'Los llanos'),
(78, 'Los Rios'),
(79, 'Luperon'),
(80, 'Maimon'),
(81, 'Mao'),
(82, 'Matanzas'),
(83, 'Mella'),
(84, 'Miches'),
(85, 'Moca'),
(86, 'Moncion'),
(87, 'Monte Plata'),
(88, 'Monte Cristi'),
(89, 'Nagua'),
(90, 'Neyba'),
(91, 'Nizao'),
(92, 'Oviedo'),
(93, 'Padre Las Casas'),
(94, 'Paraiso'),
(95, 'Pedernales'),
(96, 'Pedro Brand'),
(97, 'Pedro Santana'),
(98, 'Pepillo Salcedo'),
(99, 'Peralta'),
(100, 'Peralvillo'),
(101, 'Piedra Blanca'),
(102, 'Pimentel'),
(103, 'Polo'),
(104, 'Postrer Rio'),
(105, 'Pueblo Viejo'),
(106, 'Puerto Plata'),
(107, 'Puñal'),
(108, 'Quisqueya'),
(109, 'Ramon Santana'),
(110, 'Rancho Arriba'),
(111, 'Restauracion'),
(112, 'Rio San Juan'),
(113, 'Sabana de la Mar'),
(114, 'Sabana Grande de Boya'),
(115, 'Sabana Grande de Pallenque'),
(116, 'Sabana Iglecia'),
(117, 'Sabana Larga'),
(118, 'Sabana Yegua'),
(119, 'Salcedo'),
(120, 'Samana'),
(121, 'San Antonio de Guerra'),
(122, 'San Cristobal'),
(123, 'San Francisco de Macoris'),
(124, 'San Gregorio de Nigua'),
(125, 'San Ignacio de Sabaneta'),
(126, 'San Jose de las Matas'),
(127, 'San Jose de Ocoa'),
(128, 'San Juan de la Maguana'),
(129, 'San Pedro de Macoris'),
(130, 'San Rafael del Yuma'),
(131, 'San Victor'),
(132, 'Sanchez'),
(133, 'Santiago de los Caballeros'),
(134, 'Santo Domingo Este'),
(135, 'Santo Domingo Norte'),
(136, 'Santo Domingo Oeste'),
(137, 'Sosua'),
(138, 'Tabara Arriba'),
(139, 'Tamayo'),
(140, 'Tamboril'),
(141, 'Tenares'),
(142, 'Vallejuelo'),
(143, 'Vicente Noble'),
(144, 'Villa Altagracia'),
(145, 'Villa Bisono Navarrete'),
(146, 'Villa Gonzalez'),
(147, 'Villa Hermosa'),
(148, 'Villa Isabela'),
(149, 'Villa La Mata'),
(150, 'Villa los ALmacigos'),
(151, 'Villa Montellano'),
(152, 'Villa Riva'),
(153, 'Villa Tapia'),
(154, 'Villa Vasquez'),
(155, 'Yaguate'),
(156, 'Yamasa')


--Insertando valores
Insert into Clientes values
(001, 'Elian', 'Castro', '1998-2-01', 'C/Cinco #14 El campito', '849-240-2800', 2, 28, 3, 2, 'Elian_elmejor@gmail.com', '2022-07-23'),
(002, 'Manuel', 'Brito', '1998-12-01', 'C/Real #4 Los Mina', '829-340-5000', 2, 8, 3, 3, 'manuel@gmail.com', '2022-07-23'),
(003, 'Jose', 'Diaz', '1999-12-01', 'C/Acapulco SN', '829-227-8000', 1, 9, 19, 2, 'sd_01@gmail.com', '2022-06-23'),
(004, 'Ana', 'Baez', '1984-11-01', 'CManuel Ramon NUÑEZ Casa 15', '829-300-5000', 2, 15, 25, 2, 'Ana_b@gmail.com', '2022-05-23'),
(005, 'Maria', 'Rodriguez', '2000-02-11', 'C/Santa Rosa casa 12', '829-120-5000', 1, 10, 18, 3, 'Mary@gmail.com', '2022-04-23'),
(006, 'Gabriel', 'Paz', '1991-08-10', 'C/Principal Casa SN', '829-220-5040', 12, 18, 13, 1, 'Gaby@gmail.com', '2022-08-03'),
(007, 'John', 'Breton', '1992-2-11', 'C/Real #4 Los Mina', '829-120-5000', 9, 8, 32, 1, 'johnb@gmail.com', '2022-02-3'),
(008, 'Felix', 'Santos', '1985-04-01', '1ra. Calle, Local S/N, La Moraleja', '829-820-5000', 4, 28, 32, 2, 'FS@gmail.com', '2022-08-3'),
(009, 'Rebeca', 'Rivas', '1962-2-01', 'Villa Olga, Santiago de los Caballeros, Santiago', '829-220-5000', 12, 28, 33, 2, 'Rebe@gmail.com', '2022-08-2'),
(010, 'Eliana', 'Sanchez', '2005-03-7', 'C/La vega 2B Los Frailes', '829-320-5000', 7, 28, 13, 1, 'Elia@gmail.com', '2022-1-1')

Select * from Clientes

select c.Nombre, c.Apellido, c.Telefono, s.Descripcion as Sector
from Clientes c inner join Sector s on (c.id_Sector = s.ID)

--inner join tabla clientes con las demas
Select * from Clientes c inner join Sector s on (c.id_Sector = s.ID)
Select * from Clientes c inner join Region r on (c.id_Region = r.ID)
Select * from Clientes c inner join Provincias p on (c.id_Provincia = p.ID)
Select * from Clientes c inner join Municipios m on (c.id_Municipio = m.ID)
Select * from Clientes c inner join Facturas f on (c.id_Clientes = f.ID_Factura)
Select * from Facturas f inner join Productos pr on (f.ID = pr.id_producto)  

--Clientes y las compras realizadas por c/u
select c.Nombre, c.Apellido,  f.Descr_Producto, f.Fecha_Compra, f.Total as Factura
from Clientes c inner join Facturas f on (f.id_Nombre = c.id_Clientes)


create table Facturas 
(
ID_Factura int primary key,
id_Nombre int,
Descripcion varchar(50),
Fecha_Compra Date,
Cantidad int,
Precio int
)

Select * From Facturas

insert into Facturas values
(1, 4, 'Terreno', '2022-12-04', 1, 50000),
(2, 2, 'Silla', '2022-08-03', 8, 350),
(3, 7, 'Feretro', '2022-06-10', 2, 18000),
(4, 9, 'Sala', '2022-07-08', 1, 12000),
(5, 3, 'Velas', '2022-04-11', 14, 250),
(6, 1, 'Lapida',  '2022-06-15', 1, 12000),
(7, 7, 'Embalzamiento', '2022-04-10', 1, 8000),
(8, 3, 'Vestimenta', '2022-05-11', 1, 2000),
(9, 10, 'Incineracion', '2022-04-20', 1, 40000),
(10, 9, 'Cubreferetro', '2022-07-20', 2, 2500)

--insertando total de consumos
alter table Facturas 
add Total as (Cantidad * Precio)


--VISTA de los servicios hecho por cada persona
Create view vwClientes 
as
select distinct c.id_Clientes as Identificador, c.Nombre, c.Apellido, f.Descr_Producto, f.Fecha_Compra, f.Total
from Clientes c
join Facturas f on (f.id_Nombre = c.id_Clientes)

select * from vwClientes 



-------STORE PROCEDURE (1)
create procedure Consultar_factura (@id int)
as
begin
		Select c.id_Clientes, c.Nombre, c.Apellido, f.Descr_Producto, f.Total
		from Clientes c 
		Join Facturas as f on f.id_Nombre = c.id_Clientes
		where c.id_Clientes = @id
end
go

exec Consultar_factura 2
-------------

-------STORE PROCEDURE (2)

create procedure Consulta_Cliente (@id int)
as
begin
		Select c.id_Clientes, c.Nombre, c.Apellido, c.Fecha_Nac, c.Direccion, c.Telefono, s.Sector,  m.Municipio, p.Provincia, r.Region, c.Email, c.Fecha_Creacion
		From Clientes c
		inner join Sector as s on s.ID = c.id_Sector
		inner Join Municipios as m on m.ID = c.id_Municipio
		inner join Provincias as p on p.ID = c.id_Provincia
		inner Join Region as r on r.ID = c.id_Region
		where c.id_Clientes = @id
end
go


drop procedure Consultar_factura

exec Consulta_Cliente 3


---Nombre: Ada Lisbeth Jimenez
---Matricula: 20220790