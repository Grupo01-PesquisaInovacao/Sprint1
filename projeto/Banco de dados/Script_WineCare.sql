-- Criando e usando o banco de dados do projeto

CREATE DATABASE projetoVinho;
USE projetoVinho;

-- CREATE:

-- Criação da entidade Funcionario

CREATE TABLE Funcionario (
idFuncionario INT PRIMARY KEY auto_increment,
nomeFuncionario  VARCHAR(50) not null,
cpfFuncionario CHAR(15) unique,
emailFuncionario VARCHAR(30) not null,
senhaFuncionario VARCHAR (64) not null,
dtNascFuncionario DATE not null
);

-- Criação da entidade Empresa

CREATE TABLE Empresa (
idEmpresa INT PRIMARY KEY auto_increment,
nomeEmpresa VARCHAR(40) not null,
nomeFantasia VARCHAR(40) not null,
cnpjEmpresa CHAR(18) unique not null,
emailEmpresa VARCHAR(30) unique not null
);

-- Criação da entidade telefoneEmpresa

create table telefoneEmpresa (
idTelefone int primary key auto_increment,
telefone char(15));

-- Criação da entidade EnderecoEmpresa

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

-- Criação da entidade Sensor

CREATE TABLE Sensor(
idSensor INT PRIMARY KEY auto_increment,
nomeSensor VARCHAR (30)
);

-- Criação da entidade RegSensor

CREATE TABLE RegSensor (
idRegSensor INT PRIMARY KEY auto_increment,
temperaturaSensor FLOAT ,
umidadeSensor FLOAT
);

-- Criação da entidade Barril

CREATE TABLE Barril(
idBarril INT PRIMARY KEY auto_increment,
tipoVinho VARCHAR (15),
qntBarril INT
);

-- Criação da entidade Setor

CREATE TABLE Setor(
idSetor INT PRIMARY KEY auto_increment,
nomeSetor VARCHAR(20)
);

-- INSERT:

-- primeiro insert na entidade Funcionario

INSERT INTO Funcionario VALUES 
(null, 'jorge', '435.567.533-23', 'jorge@gmail.com', 'jorge123', '1987-05-19'),
(null, 'amanda', '523.657.435-87', 'amanda@gmail.com', 'amanda123', '1982-06-12'),
(null, 'fabiano', '968.357.231-23', 'fabiano@gmail.com', 'fabiano123', '1974-09-25');

-- primeiro insert na entidade Empresa

INSERT INTO Empresa VALUES
(null, 'Vinhos Paulistas', 'VP-vinhos', '46.379.400/0001-50', 'vp@gmail.com');

-- primeiro insert na entidade telefoneEmpresa

INSERT INTO telefoneEmpresa VALUES
(null, '(47) 2455-7482');

-- primeiro insert na entidade EnderecoEmpresa

INSERT INTO EnderecoEmpresa VALUES
(null, 'Rua Amoreira','49','armazém 2','06184-320','Cidade das Flores','Osasco','SP');

-- primeiro insert na entidade Sensor

INSERT INTO Sensor VALUES
(null, 'DHT11');

-- primeiro insert na entidade RegSensor

INSERT INTO RegSensor VALUES
(null,17.70, 65.70);

-- primeiro insert na entidade Barril

INSERT INTO Barril VALUES
(null,'tinto', '100');

-- primeiro insert na entidade Setor

INSERT INTO Setor VALUES
(null,'setor 1');

-- SELECT:

SELECT * FROM Funcionario;

SELECT * FROM Empresa;

SELECT * FROM telefoneEmpresa;

SELECT * FROM EnderecoEmpresa;

SELECT * FROM Sensor;

SELECT * FROM RegSensor;

SELECT * FROM Barril;

SELECT * FROM Setor;
