USE SpMedicalGroup_Tarde;

INSERT INTO TipoUsuario (Titulo)
VALUES ('ADMINISTRADOR'),('PACIENTE'),('MEDICO')

INSERT INTO Paciente (Nome)
VALUES ('Ligia'),('Alexandre'),('Fernando'),('Henrique'),('João');

INSERT INTO Especialidade(NomeEspecialidade)
VALUES ('Psiquiatra'),('Psicologia'),('Pediatra'),('Cardiologista'),('Toc'),('Dermatologista'),('Urologista'),('Otorrinolaringologia'),('Acunputura'),('Cirurgia Geral');

INSERT INTO Administrador(Titulo,Email)
VALUES ('ADMINISTRADOR','Administrador@gmail.com')

INSERT INTO Prontuario (NomePaciente,Email,DataNascimento,Telefone,RG,CPF,IdPaciente,IdEndereco)
VALUES ('Ligia','Ligia@gmail.com','11/03/2019','11 9996578987','82363647-8','255467485609',1,1),
('Alexandre','alexandre@gmail.com',	'23/07/2001','11 98765-6543','32654345-7','73556944057',2,2),
('Fernando','fernando@gmail.com','10/10/1978','11 97208-4453','54636525-3',	'16839338002',3,3),
('Henrique','henrique@gmail.com','13/10/1985','11 3456-6543','54366362-5','14332654765',4,4),
('João','joao@hotmail.com','27/08/1975','11 7656-6377','32544444-1','91305348010',5,5);

INSERT INTO Usuario (Email,Senha,IdTipoUsuario)
VALUES ('Ligia@gmail.com','ligiadomal',2),('alexandre@gmail.com','alexandrefrota',2),('fernando@gmail.com','fefe12',2),('Helena@gmail.com','helenamedi',3),('Administrador@gmail.com','adm123',1)

INSERT INTO Clinica(NomeFantasia,CNPJ,RazaoSocial,IdAdministrador,IdEndereco)
VALUES('ClinicaPorssale','86.400.902/0001-30','SP Medical Group',1,7)

INSERT INTO Medico(CRM,NomeMedico,Email,IdEspecialidades,IdClinica)
VALUES ('54356-SP','Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br',4,1),
('52152-SP','Roberto Porssale','roberto.possarle@spmedicalgroup.com.br',6,1),
('61353-SP','Helena  Strada','helena.souza@spmedicalgroup.com.br',1,1)

INSERT INTO Consultas(DataConsulta,Situacao,IdProntuario,IdClinica,IdMedico)
VALUES ('20/01/2020 15:00',	'Realizada',2,1,1),('06/01/2020 10:00','Cancelada',4,1,2),('07/02/2020 11:00','Realizada',6,1,3)


--NORMALIZACAO
INSERT INTO Endereco (Endereco,CEP,Estado,Cidade)
VALUES ('R. Barao de Limeira 539','98788-230','Estado de São Paulo',' São Paulo'),
('Rua Estado de Israel 240', '04022-000', 'Estado de São Paulo',' São Paulo'),
('Rua Estado de Israel 240', '04022-000','Estado de São Paulo',' São Paulo'),
('Av. Ibirapuera - Indianópolis 292' ,'04029-200','Estado de São Paulo',' São Paulo'),
('R. Vitória, 120  ', '06402-030', 'Estado de São Paulo',' Barueri'),
('R. Ver. Geraldo de Camargo, 66 ', '09405-380','Estado de São Paulo','Campos Do Jordao');

SELECT * FROM Endereco;
SELECT*FROM  Consultas;
SELECT*FROM Prontuario;
SELECT*FROM Clinica;
SELECT*FROM Medico;