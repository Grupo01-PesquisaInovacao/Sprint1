-- GRUPO: Éder Souza Silva
-- Giovanni Vitor
-- Iago Goto Abreu
-- Igor Chu
-- João Victor de Faria
-- Layssa Camargo
-- Moisés Araújo


CREATE DATABASE projetoVinho;
USE projetoVinho;

CREATE TABLE tbFuncionario (
idFuncionario INT PRIMARY KEY auto_increment,
nomeFuncionario VARCHAR(50),
cpfFuncionario CHAR(15),
emailFuncionario VARCHAR(30),
senhaFuncionario VARCHAR (64),
dtNascFuncionario DATE,
cargo VARCHAR (30)
);


CREATE TABLE tbEmpresa (
idEmpresa INT PRIMARY KEY auto_increment,
nomeFantasia VARCHAR(40),
cnpjEmpresa VARCHAR(20),
emailEmpresa VARCHAR(30),
telefoneEmpresa VARCHAR(11)
);

CREATE TABLE tbEnderecoEmpresa(
idEnderecoEmpresa INT PRIMARY KEY auto_increment,
logradouro VARCHAR(50),
numeroLogradouro VARCHAR (4),
complemento VARCHAR(30),
cep CHAR(11),
bairro VARCHAR(30),
cidade VARCHAR(30),
uf CHAR(2)
);

CREATE TABLE tbSensor(
idSensor INT PRIMARY KEY auto_increment,
nomeSensor VARCHAR (30)
);

CREATE TABLE tbRegSensor (
idRegSensor INT PRIMARY KEY auto_increment,
temperaturaSensor INT,
umidadeSensor DECIMAL (3,2)
);


CREATE TABLE tbBarril(
idBarril INT PRIMARY KEY auto_increment,
tipoVinho VARCHAR (15),
qntBarril INT
);

CREATE TABLE tbSetor(
idSetor INT PRIMARY KEY auto_increment,
nomeSetor VARCHAR(20)
);



