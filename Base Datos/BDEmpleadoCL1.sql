-- -------------------------------------------------------------
-- BASE DE DATOS: Examen Laboratorio I
-- AUTOR        : JOSE EDUARDO CHUQUIYAURI ESPIRITU
-- FECHA        : 25 SEPTIEMBRE 2023
-- -------------------------------------------------------------

create database bdempleado;
use bdempleado;

create table empleado(
IdEmpleado char(7) not null,
Apellidos varchar(12) not null,
Nombres varchar(12) not null,
Edad smallint not null,
Sexo char(1) not null,
Salario double not null,
check (Edad>=18), check (Sexo in ('F','M')),check (1500>=Salario<=2500),
primary key (IdEmpleado)
);

insert into empleado values ('EMP0001','TORRES','JOSE','22','M',1500),
                             ('EMP0002','GARCIA','MARIA','21','F',1750),
                             ('EMP0003','FLORES','JUAN','22','M',1850),
                             ('EMP0004','CASAS','ANA','23','F',2000);
                             
select*from empleado;

