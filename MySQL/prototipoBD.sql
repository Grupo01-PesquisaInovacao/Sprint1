-- GRUPO: Éder Souza Silva
-- Giovanni Vitor
-- Iago Goto Abreu
-- Igor Chu
-- João Victor de Faria
-- Layssa Camargo
-- Moisés Araújo


CREATE DATABASE projetoVinho;
USE projetoVinho;

CREATE TABLE Funcionario (
idFuncionario INT PRIMARY KEY auto_increment,
nomeFuncionario  VARCHAR(50) not null,
cpfFuncionario CHAR(15) unique,
emailFuncionario VARCHAR(30) not null,
senhaFuncionario VARCHAR (64) not null,
dtNascFuncionario DATE not null
);




CREATE TABLE Empresa (
idEmpresa INT PRIMARY KEY auto_increment,
nomeEmpresa VARCHAR(40) not null,
nomeFantasia VARCHAR(40) not null,
cnpjEmpresa CHAR(14) unique not null,
emailEmpresa VARCHAR(30) unique not null
);

create table telefoneEmpresa (
idTelefone int primary key auto_increment,
telefone char(15));




CREATE TABLE EnderecoEmpresa(
idEnderecoEmpresa INT PRIMARY KEY auto_increment,
logradouro VARCHAR(50) unique not null,
numeroLogradouro VARCHAR (4) not null,
complemento VARCHAR(30),
cep CHAR(11) unique,
bairro VARCHAR(30) not null ,
cidade VARCHAR(30)unique not null,
uf CHAR(2)
);



CREATE TABLE Sensor(
idSensor INT PRIMARY KEY auto_increment,
nomeSensor VARCHAR (30)
);




CREATE TABLE RegSensor (
idRegSensor INT PRIMARY KEY auto_increment,
temperaturaSensor INT,
umidadeSensor DECIMAL (3,2)
);



CREATE TABLE Barril(
idBarril INT PRIMARY KEY auto_increment,
tipoVinho VARCHAR (15),
qntBarril INT
);



CREATE TABLE Setor(
idSetor INT PRIMARY KEY auto_increment,
nomeSetor VARCHAR(20)
);



