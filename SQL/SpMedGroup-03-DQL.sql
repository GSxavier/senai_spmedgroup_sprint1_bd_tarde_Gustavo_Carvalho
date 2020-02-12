USE SpMedicalGroup_Tarde
--DQL
SELECT*FROM TipoUsuario;
SELECT*FROM Paciente;
SELECT*FROM  Especialidade;
SELECT*FROM Administrador;
SELECT*FROM Prontuario;
SELECT*FROM Endereco;
SELECT*FROM Usuario;
SELECT*FROM Clinica;
SELECT*FROM Medico;
SELECT*FROM Consultas;


--Converter DATA DE NASCIMETO EM (MM/DD/YYYY)
SELECT CONVERT(VARCHAR(10), DataNascimento, 110) AS [MM/DD/YYYY]
FROM Prontuario

--Contar o total de usuarios
SELECT COUNT(IdUsuario) FROM Usuario

--Procedure para calcular a idade do usuario
CREATE PROCEDURE IdadeUsuario 
@id INT
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) 
FROM Prontuario
WHERE Prontuario.IdPaciente = @id

EXECUTE IdadeUsuario  3

--PROCEDURE PARA CONSULTAR OS MEDICOS PARA CADA ESPECIALIDADE
CREATE PROC MedicoEspecialidade 
@ID INT
AS
SELECT Medico.NomeMedico, Especialidade.NomeEspecialidade  FROM Medico
INNER JOIN Especialidade ON Medico.IdEspecialidades = Especialidade.IdEspecialidades
WHERE Especialidade.IdEspecialidades = @ID

EXECUTE MedicoEspecialidade 4


---------------------------------------------------------------------------------
SELECT Consultas.DataConsulta, Consultas.Situacao, Medico.NomeMedico, Paciente.Nome FROM Consultas
INNER JOIN Medico ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Paciente ON Paciente.IdPaciente = Paciente.IdPaciente