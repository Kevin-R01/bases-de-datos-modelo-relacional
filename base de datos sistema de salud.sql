create database sistemaDeSalud;
use sistemaDeSalud;
create table sede(
idSede bigint auto_increment primary key,
direccion varchar(50),
localidad varchar(40),
NIT int,
telefono varchar(50),
estado varchar(25)
);
create table agenda(
idAgenda bigint auto_increment primary key,
fecha_inicio varchar(20),
fecha_final varchar(20)
);
create table cliente(
idCliente bigint auto_increment primary key,
numDocCliente varchar(20),
tipoDocCliente varchar(20),
nombreCliente varchar(50),
apellidoCliente varchar(50),
direccionCliente varchar(50),
telefonoCliente varchar(20),
estadoCliente varchar(20),
contraseñaCliente varchar(50),
idSedeFK bigint
);
create table cita(
idCita bigint auto_increment primary key,
fechaCita varchar(50),
horaCita varchar(50),
estadoCita varchar(20),
idClienteFK bigint,
idSedeFK bigint,
idAgendaFK bigint
);


ALTER table cita add constraint idClienteFK foreign key (idClienteFK) references cliente(idCliente);
alter table cita add constraint idSedeFK foreign key (idSedeFK) references sede(idSede);
alter table cita add constraint idAgendaFK foreign key (idAgendaFK) references agenda(idAgenda);
-- alter table cliente add constraint idSedeFK foreign key (idSedeFK) references sede(idSede);

INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('12', '8:00', '11:19');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('77', '6:12', '12:00');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('72', '13:00', '15:00');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('56', '8:45', '9:10');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('63', '7:00', '11:40');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('49', '9:45', '10:45');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('36', '12:30', '14:00');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('99', '9:30', '10:00');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('15', '6:23', '9:40');
INSERT INTO `sistemadesalud`.`agenda` (`idAgenda`, `fecha_inicio`, `fecha_final`) VALUES ('89', '7:50', '8:55');

INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('162', '22-02-2022', '9:30', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('789', '02-09-2020', '12:00', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('635', '20-12-2022', '13:00', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('465', '15-05-2023', '8:45', 'inactiva');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('456', '14-05-2022', '18:45', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('479', '26-02-1984', '22:00', 'inactiva');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('268', '16-03-2022', '10:12', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('649', '30-09-2023', '12:20', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('967', '15-08-2022', '15:55', 'activa');
INSERT INTO `sistemadesalud`.`cita` (`idCita`, `fechaCita`, `horaCita`, `estadoCita`) VALUES ('782', '17-09-2023', '14:00', 'activa');



insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(123,"kr30#102","engativa",801-0293020,"6016454","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(154,"Carrera 56A No.51-81","fontibon",801-632154,"5719173","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(276,"Calle 10 No.9-78  Centro","usme",801-6236251,"6733643","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(695,"Carrera 22 No.17-31","ciudad bolivar",801-877944,"8723041","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(354,"Carrera 54 No.68-80 ","20 de julio",801-223524,"4210220","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(645,"Carrera 8  No.20-59","bosa",801-634874,"4358411","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(654,"Calle 15 No.9-56 centro","soacha",801-8797412,"6640266","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(824,"Carrera 8  No.20-59","tunluelito",801-5465464,"6646554","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(984,"Calle 20 No.3-22","chapinero",801-545454,"698454","activa");
insert into sede(idSede,direccion,localidad,NIT,telefono,estado)
values(324,"Carrera 9  No.7-34","usaquen",801-4798535,"7981465","activa");




insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(12,"53013664","C.C","ivan","rojas","lote_65","3118390664","activo","arrozchino1999",1354);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(14,"1027524225","C.C","kevin","castañeda","carrera128","3212077006","activo","inframundo01",1857);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK )
values(16,"97482648","C.C","elizabeth","guerrero","lote_189","3112919754","activo","rojasqchayra2000",1762);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(18,"1024740928","C.C","david","paz","calle16#22-71","32794849327","activo","castaeda001",1234);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(20,"46328949","C.C","juan","rodriguez","lote_12","3215958705","inactivo","4BZ7P20R",1789);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(22,"102752469","T.I","santiago","florez","kr_127#32-14","3054943970","activo","7C68248A97",1999);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(24,"100125446","C.C","harold","beltran","calle110#7-33","3135112025","activo","7C68248A97",2000);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(28,"1010215485","C.C","stiven","sogamoso","lote12","3205415121","inactivo","67IQE3T23UXUDL",1765);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(34,"63164524","C.C","david","cediel","calle127#10-33","31402513164","activo","8MSO432YHL36CL",1888);
insert into cliente(idCliente,numDocCliente,tipoDocCliente,nombreCliente,apellidoCliente,direccionCliente,telefonoCliente,estadoCliente,contraseñaCliente,idSedeFK  )
values(32,"412642454","C.C","brayan","delgado","calle","320456565","activo","D03INHDXLRN6W7",1645);

-------------------------------------------------------------------------
alter table agenda change fecha_inicio hora_inicio varchar(40) not null;
alter table cita change fechaCita horarioCita varchar(50) not null;
alter table sede  change localidad zonas varchar(40) not null;
alter table cliente change direccionCliente residenciaCliente varchar(50) not null;
-----------------------------------------------------------------
SELECT * FROM cliente ORDER BY idCliente DESC limit 5;
SELECT * FROM agenda ORDER BY idAgenda DESC limit 5;
SELECT * FROM cita ORDER BY idCita DESC limit 5;
SELECT * FROM sede ORDER BY idSede DESC limit 5;
---------------------------------------------------------------------------
SELECT COUNT(*) FROM cliente WHERE idCliente % 2 = 0;
SELECT COUNT(*) FROM agenda WHERE idAgenda % 2 = 0;
SELECT COUNT(*) FROM cita WHERE idSede % 2 = 0;
SELECT COUNT(*) FROM sede WHERE idSede % 2 = 0;
