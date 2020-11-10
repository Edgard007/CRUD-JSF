create database sema14;
use sema14;

create table facultad(
codigoFacultad int primary key auto_increment,
nombre varchar(50) not null,
telefono varchar(50) not null
);

create table carrera(
codigoCarrera int primary key auto_increment,
nombre varchar(50) not null,
cantidadU int not null,
codigoFacultad int not null,
foreign key (codigoFacultad) references facultad(codigoFacultad)
);

create table estudiante(
codigoEstudiante int primary key auto_increment,
nombre varchar(50) not null,
edad int not null,
genero varchar(30) not null,
cumCiclo double not null,
direccion varchar(75) not null,
telefono varchar(25) not null,
codigoCarrera int not null,
foreign key (codigoCarrera) references carrera(codigoCarrera)
);


insert into facultad values
(1,"Facultad Medicina","23220101"),
(2,"Facultad Ingenieria","23220202"),
(3,"Facultad 3","23220303");   

insert into carrera values
(1,"Ingeneria Sistemas Informaticos",20,2),
(2,"Odontologia",15,1),
(3,"Carrera 3",18,3),
(4,"Ingeneria Desarrollo de Software",21,2),
(5,"Carrera 5",20,3);


insert into estudiante values
(1,"Francisco",21,"Masculino",8.1,"Jayaque","72191477",1),
(2,"Juana",23,"Femenino",8.9,"Santa Tecla","78962544",2),
(3,"Maria",19,"Femenino",7.2,"Lourdes","68974215",3),
(4,"Juan",18,"Maculino",7.9,"Santa Ana","69730101",5);


