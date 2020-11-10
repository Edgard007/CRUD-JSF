create database empresajsf;
use empresajsf;

create table departamento(
codigoDepartamento int primary key auto_increment,
nombre varchar(50) not null,
cantidadEmpleado int not null
);

create table empleado(
codigoEmpleado int primary key auto_increment,
nombre varchar(50) not null,
genero varchar(40) not null,
intereses varchar(50) not null,
edad int not null,
direccion varchar(50) not null,
cargo varchar(50) not null,
codigoDepartamento int not null,
foreign key (codigoDepartamento) references departamento(codigoDepartamento)
 );
 
 insert into departamento values
 (1,"Finanzas",4),
 (2,"Call Center",5),
 (3,"Informatica",7),
 (4,"Desarrollo",9);
 
 insert into empleado values
 (1,"Tania","Femenino","correr",19,"Nuevo Lourdes","Gerente",2),
 (2,"Rosa","Femenino","dormir",23,"Nuevo Lourdes","Subgerente",3),
 (3,"Elia","Femenino","saltar",34,"Nuevo Lourdes","Programador",4),
 (4,"Juan","Maculino","correr",34,"Nuevo Lourdes","dba",4);
 
 
 select codigoEmpleado, emp.nombre, genero, intereses, edad,direccion, cargo,dep.codigoDepartamento, dep.nombre 
 as departamento
 from empleado as emp
inner join departamento as dep on emp.codigoDepartamento = dep.codigoDepartamento
order by codigoEmpleado
 