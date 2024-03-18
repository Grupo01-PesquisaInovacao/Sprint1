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
cnpjEmpresa CHAR(18) unique not null,
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
temperaturaSensor FLOAT ,
umidadeSensor FLOAT
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

INSERT INTO Funcionario VALUES 
(null, 'jorge', '435.567.533-23', 'jorge@gmail.com', 'jorge123', '1987-05-19'),
(null, 'amanda', '523.657.435-87', 'amanda@gmail.com', 'amanda123', '1982-06-12'),
(null, 'fabiano', '968.357.231-23', 'fabiano@gmail.com', 'fabiano123', '1974-09-25');

INSERT INTO Empresa VALUES
(null, 'Vinhos Paulistas', 'VP-vinhos', '46.379.400/0001-50', 'vp@gmail.com');

INSERT INTO telefoneEmpresa VALUES
(null, '(47) 2455-7482');

INSERT INTO EnderecoEmpresa VALUES
(null, 'Rua Amoreira','49','armazém 2','06184-320','Cidade das Flores','Osasco','SP');

INSERT INTO Sensor VALUES
(null, 'DHT11');

INSERT INTO RegSensor VALUES
(null,17.70, 65.70);

INSERT INTO Barril VALUES
(null,'tinto', '100');

INSERT INTO Setor VALUES
(null,'setor 1');




