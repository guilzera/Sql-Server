USE [Curso]

DROP TABLE [Aluno]

CREATE TABLE [Aluno] (
    [Id] INT NOT NULL UNIQUE,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(100) NOT NULL UNIQUE,
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),
)
GO