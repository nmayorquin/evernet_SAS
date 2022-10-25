
#INTEGRANTES DEL TRABAJO


#JEISSON ARLEY ROSAS TORRES
#YONY ARBEY RUA JIMENEZ


# TEMAS RELACIONADOS

# 01 - CREANDO BASES DE DATOS
# 02 - USAR BASE DE DATOS CREADA
# 03 - CREAR TABLAS EN LA BASE DE DATOS EVERNET_SAS
# 04 - INSERTAR DATOS EN UNA TABLA
# 05 - ELIMINAR BASE DE DATOS CREADA
# 06 - ELIMINAR UNA TABLA DE UNA BASE DE DATOS CREADA
# 07 - ELIMINAR CAMPO O COLUMNA DE UNA TABLA

# ------  DESARROLLO DEL TRABAJO ------

# 01 - CREAR BASES DE DATOS
CREATE DATABASE evernet_sas;

# 02 - USAR BASE DE DATOS CREADA
USE evernet_sas;

# 03 - CREAR TABLAS EN LA BASE DE DATOS EVERNET_SAS
# SE REALIZÓ NUEVA TABLA DE EMPLEADOS PARA EL REGISTRO DE INGRESO A LA PLATAFORMA, DIFERENTE A LA DE EMPLEADO
CREATE TABLE empleados(
	Id_empleado varchar(30) not null primary key unique, 
    nombreEmpleado varchar(30) not null,
    passEmpleado varchar(30) not null,
    emailEmpleado varchar(30) not null
);

INSERT INTO empleados (Id_empleado, nombreEmpleado, passEmpleado, emailEmpleado) values ('75-775-0542','Jeison Rosales', '0B68kVQ8', 'jeison@hotmail.com' );
INSERT INTO empleados (Id_empleado, nombreEmpleado, passEmpleado, emailEmpleado) values ('51-494-8095','Edgar Alexander', 'ydMpjciiVbr1', 'alex@hotmail.com');
INSERT INTO empleados (Id_empleado, nombreEmpleado, passEmpleado, emailEmpleado) values ('35-364-7804','Sofia Castañeda', 'CaVtIiEsb', 'sofi@hotmail.com');

SELECT * FROM empleados;

# CREANDO TABLA datos cliente
CREATE TABLE Datos_Cliente 
(
cedulaCliente varchar(30) not null primary key unique,
NombresApellidosCliente varchar (30) not null,
GeneroCliente varchar (10) not null,
CiudadCliente varchar (25) not null,
DireccionCliente varchar (40) not null,
telefonoCliente varchar (15) not null,
emailCliente varchar (40)
);

INSERT INTO Datos_Cliente (cedulaCliente, NombresApellidosCliente, GeneroCliente, CiudadCliente, DireccionCliente, telefonoCliente, emailCliente) 
values ('28-758-6444','Armando Lopez', 'masculino', 'Cartagena', 'cra 5 con cll 6', '3015555555', 'armando@gmail.com' );

INSERT INTO Datos_Cliente (cedulaCliente, NombresApellidosCliente, GeneroCliente, CiudadCliente, DireccionCliente, telefonoCliente, emailCliente) 
values ('28-758-6445','Luis', 'masculino', 'Bogotá', 'usaquen', '300666666', 'luis@gmail.com' );

INSERT INTO Datos_Cliente (cedulaCliente, NombresApellidosCliente, GeneroCliente, CiudadCliente, DireccionCliente, telefonoCliente, emailCliente) 
values ('123456789','Camila Alvarez', 'mujer', 'Bogotá', 'fontibon', '302999999', 'camila@yahoo.com' );

INSERT INTO Datos_Cliente (cedulaCliente, NombresApellidosCliente, GeneroCliente, CiudadCliente, DireccionCliente, telefonoCliente, emailCliente) 
values ('12345','Julian', 'hombre', 'Bogotá', 'fontibon', '302123456', 'juli@yahoo.com' );

SELECT * FROM Datos_Cliente;

# CREANDO TABLA Servicios_Ofrecidos
CREATE TABLE Servicios_Ofrecidos 
(
Id_Servicios_Ofrecidos int not null AUTO_INCREMENT,
primary key (Id_Servicios_Ofrecidos),
Tipo_Servicio varchar (40),
Fecha_Solicitud time,
Estado_Solicitud varchar (50),
Valor_Servicio varchar (50)
);


# CREANDO TABLA Equipos_Suministrados
CREATE TABLE Equipos_Suministrados
(
Id_Equipos_Suministrados int not null AUTO_INCREMENT,
primary key (Id_Equipos_Suminstrados),
Equipos_Suministrados int,
Nombre_Equipo varchar (25),
Tipo_Equipo varchar (20),
Estado_Equipo varchar (15),
Cantidad_Equipos_Solicitados int,
Existencia_Bodega varchar (2)
);


# CREANDO TABLA Cartera_Vencida
CREATE TABLE Cartera_Vencida
(
Id_Cartera_Vencida int not null AUTO_INCREMENT,
primary key (Id_Cartera_Vencida),
Cartera_Vencida varchar (2) ,
Numero_Cuentas_Vencidas int (2),
Valor_Cartera_Vencida decimal (10)
);




# 04 - INSERTAR DATOS EN UNA TABLA


# INSERTAR DATOS EN LA TABLA Datos_Cliente

INSERT INTO Datos_Cliente (Nombres, Apellidos, Sexo, Celular, Ciudad, Direccion, Correo_Electronico)
VALUES                    ('Carlos Mario', 'Acevedo Rodriguez', 'Masculino', '3102000355', 'Medellin', 'Barrio Prado', 'cmar@gmail.com');

INSERT INTO Datos_Cliente (Nombres, Apellidos, Sexo, Celular, Ciudad, Direccion, Correo_Electronico)
VALUES                    ('Mario Cesar', 'Restrepo', 'Masculino', '3105555555', 'Bello', 'Barrio Niquia', 'mario@gmail.com');

INSERT INTO Datos_Cliente (Nombres, Apellidos, Sexo, Celular, Ciudad, Direccion, Correo_Electronico)
VALUES                    ('Dora Cecilia', 'Chanci Mesa', 'femenino', '354568987', 'Marinilla', 'Barrio Centro', 'Dorachan@gmail.com');



# INSERTAR DATOS EN LA TABLA Servicios_Ofrecidos

INSERT INTO Servicios_Ofrecidos (Tipo_Servicio, Fecha_Solicitud, Estado_Solicitud, Valor_Servicio)
VALUES                          ('Conexion', '20/05/2022', 'Activo', '1.500.000');

INSERT INTO Servicios_Ofrecidos (Tipo_Servicio, Fecha_Solicitud, Estado_Solicitud, Valor_Servicio)
VALUES                          ('Reconexion', '30/06/2022', 'En Proceso', '200.000');

INSERT INTO Servicios_Ofrecidos (Tipo_Servicio, Fecha_Solicitud, Estado_Solicitud, Valor_Servicio)
VALUES     ('Cancelacion', '14/08/2022', 'Atendido', '585.540');




# INSERTAR DATOS EN LA TABLA Equipos_Suministrados

INSERT INTO Equipos_Suministrados (Equipos_Suministrados, Nombre_Equipo, Tipo_Equipo, Estado_Equipo, Cantidad_Equipos_Solicitados, Existencia_Bodega)
VALUES                          ('2', 'Telefono', 'Telefonico', 'Bueno', '1', '2');

INSERT INTO Equipos_Suministrados (Equipos_Suministrados, Nombre_Equipo, Tipo_Equipo, Estado_Equipo, Cantidad_Equipos_Solicitados, Existencia_Bodega)
VALUES                          ('3', 'Router', 'Telefonico', 'Regular', '1', '1');



# INSERTAR DATOS EN LA TABLA Cartera_Vencida

INSERT INTO Cartera_Vencida (Cartera_Vencida, Numero_Cuentas_Vencidas, Valor_Cartera_Vencida)
VALUES                             ('SI', '4', '420.000');

INSERT INTO Cartera_Vencida (Cartera_Vencida, Numero_Cuentas_Vencidas, Valor_Cartera_Vencida)
VALUES                             ('SI', '10', '1.050.000');

INSERT INTO Cartera_Vencida (Cartera_Vencida, Numero_Cuentas_Vencidas, Valor_Cartera_Vencida)
VALUES                             ('NO', '0', '0');





# 05 - ELIMINAR BASE DE DATOS CREADA

DROP DATABASE evernet_sas;




# 06 - ELIMINAR UNA TABLA DE UNA BASE DE DATOS CREADA


# ELIMINAR UNA TABLA DE UNA BASE DE DATOS CREADA ESTANDO DENTRO DE ELLA

USE EVERNET_SAS;

DROP TABLE Datos_Cliente; 
DROP TABLE Servicios_Ofrecidos;
DROP TABLE Equipos_Suministrados;
DROP TABLE Cartera_Vencida;



# ELIMINAR UNA TABLA DE UNA BASE DE DATOS CREADA SIN ESTAR DENTRO DE ELLA

DROP TABLE evernet_sas.Datos_Cliente; 
DROP TABLE evernet_sas.Servicios_Ofrecidos;
DROP TABLE evernet_sas.Equipos_Suministrados;
DROP TABLE evernet_sas.Cartera_Vencida;





# 07 - ELIMINAR CAMPO O COLUMNA DE UNA TABLA


ALTER TABLE Datos_Cliente DROP COLUMN Ciudad;
ALTER TABLE Datos_Cliente DROP COLUMN Correo_Electronico;

ALTER TABLE Servicios_Ofrecidos DROP COLUMN Estado_Solicitud;
ALTER TABLE Servicios_Ofrecidos DROP COLUMN Valor_Servicio;

ALTER TABLE Equipos_Suministrados DROP COLUMN Estado_Equipo;
ALTER TABLE Equipos_Suministrados DROP COLUMN Cantidad_Equipos_Solicitados;

ALTER TABLE Cartera_Vencida DROP COLUMN Numero_Cuentas_Vencidas;
ALTER TABLE Cartera_Vencida DROP COLUMN Valor_Cartera_Vencida;



#-------FIN DEL TRABAJO------------
