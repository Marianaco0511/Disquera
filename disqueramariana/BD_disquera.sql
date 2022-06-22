create database bd_disquera;
use bd_disquera;

create table Album(
    id_album INT PRIMARY KEY AUTO_INCREMENT,
    fecha_creacion date,
    nombre_cantantes varchar (50),
    nombre_cantante varchar (30),
    fecha_publicacion date,
    genero varchar (30),
    fecha_ultima_mo date
);

create table Artista(
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    discografica varchar (30),
    genero varchar (30),
    nombre_artista varchar (30),
    añosactiv@ date,
    fecha_nacimiento date
);

create table Cancion(
    id_cancion  INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cancion varchar (30),
    nombre_cantantes varchar (50),
    nombre_cantante varchar (30),
    fecha_publicacion date,
    genero varchar (30),
    estado varchar (30),
    discografica varchar (50)
);

create table Genero(
    id_genero INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cantante varchar (30),
    discografica varchar (50)    
)