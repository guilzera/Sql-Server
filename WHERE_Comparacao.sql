SELECT TOP 100  
    [Id], [Nome], [CategoriaId]
FROM 
    [Curso]
WHERE
    [Id] = 1 OR
    [CategoriaId] = 1 
    