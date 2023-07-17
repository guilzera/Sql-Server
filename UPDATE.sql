SELECT * FROM [Categoria]

UPDATE 
    [Categoria] SET 
    [Nome]='Azure'
WHERE
    [Id] = 4

--ROLLBACK -> desfaz o que havia feito em cima, para poder ter certeza que alterou a linha correta
-- e não a tabela inteira.

--COMMIT -> tem a certeza que foi atualizado