CREATE DATABASE SpMedicalGroup_Tarde;
USE SPMedicalGroup_Tarde;

CREATE TABLE TipoUsuario (
 IdTipoUsuario INT PRIMARY KEY IDENTITY,
 Titulo VARCHAR (200)
);

CREATE TABLE Paciente (
 IdPaciente INT PRIMARY KEY IDENTITY,
 Nome VARCHAR (200)
);

CREATE TABLE Especialidade (
 IdEspecialidades INT PRIMARY KEY IDENTITY,
 NomeEspecialidade VARCHAR (200)
);

CREATE TABLE Administrador (
 IdAdministrador INT PRIMARY KEY IDENTITY,
 Titulo VARCHAR (200),
 Email VARCHAR (255)
);

CREATE TABLE Prontuario(
 IdProntuario INT PRIMARY KEY IDENTITY,
 NomePaciente VARCHAR (200),
 Email  VARCHAR (255),
 DataNascimento  VARCHAR (255),
 Telefone VARCHAR(200),
 RG  VARCHAR (200),
 CPF VARCHAR (200),
 IdPaciente  INT FOREIGN KEY REFERENCES Paciente (IdPaciente),
 IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)

);

CREATE TABLE  Endereco(
IdEndereco INT PRIMARY KEY IDENTITY,
Endereco VARCHAR(255),
CEP VARCHAR(255),
Estado VARCHAR (200),
Cidade VARCHAR (200)
);

 


CREATE TABLE Usuario (
 IdUsuario INT PRIMARY KEY IDENTITY,
 Email VARCHAR (255),
 Senha VARCHAR (200),
 IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Clinica (
 IdClinica INT PRIMARY KEY IDENTITY,
 NomeFantasia VARCHAR (255),
 CNPJ VARCHAR (200),
 RazaoSocial VARCHAR(200),
 IdAdministrador INT FOREIGN KEY REFERENCES Administrador (IdAdministrador)
 IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
);


CREATE TABLE Medico (
 IdMedico INT PRIMARY KEY IDENTITY,
 CRM VARCHAR (255),
 NomeMedico VARCHAR (200),
 Email VARCHAR(200),
 IdEspecialidades INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidades),
 IdClinica  INT FOREIGN KEY REFERENCES Clinica (IdClinica)
);

CREATE TABLE  Consultas (
 IdConsultas INT PRIMARY KEY IDENTITY,
 DataConsulta DateTime,
 Situacao VARCHAR(255),
 IdProntuario INT FOREIGN KEY REFERENCES Prontuario (IdProntuario),
 IdClinica  INT FOREIGN KEY REFERENCES Clinica (IdClinica)
 IdMedico  INT FOREIGN KEY REFERENCES Medico ( IdMedico )

);

