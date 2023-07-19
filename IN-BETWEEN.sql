USE [Cursos]
SELECT TOP 100 * FROM [Curso]

WHERE
    [Id] BETWEEN 2 AND 3
    [Id] IN (1, 3)