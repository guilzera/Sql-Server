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

/*Deixa o insert mais lento, poréma ajuda na consulta de uma tabela*/
CREATE INDEX [IX_Aluno_Email] ON [Aluno]([Email])
DROP INDEX [IX_Aluno_Email] ON [Aluno]

DROP TABLE [Curso]

CREATE TABLE [Curso] (
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [Categoria]([Id])
)
GO

CREATE TABLE [Categoria] (
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
)


 /*Associativa*/
DROP TABLE [ProgressoCurso]

CREATE TABLE [ProgressoCurso] (
    [AlunoId] INT NOT NULL,
    [CursoId] INT NOT NULL,
    [Progesso] INT NOT NULL,
    [UltimaAtualizacao] DATETIME NOT NULL DEFAULT(GETDATE()),
    
    CONSTRAINT PK_ProgressoCurso PRIMARY KEY ([AlunoId], [CursoId])
)
GO
