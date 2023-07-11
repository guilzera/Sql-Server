USE [Curso]

DROP TABLE [Aluno]

CREATE TABLE [Aluno] (
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(100) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),

    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]), /* Nomeia e cria a chave primaria*/
    CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email]), /*Unique -> unico*/
)
GO