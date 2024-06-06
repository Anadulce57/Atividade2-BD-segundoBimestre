use avaliacao_22a;

 -- Selecionar Livros Disponíveis: Encontre todos os livros que estão disponíveis para empréstimo.
 SELECT titulo, disponivel
 FROM Livros
 WHERE dispponivel = true;
 
 -- Selecionar por Editora: Liste todos os livros publicados pela editora "HarperCollins".
 SELECT titulo, editora
 FROM Livros 
 WHERE editora = 'HarperCollins';
 
 -- Selecionar com COUNT e HAVING: Conte quantos livros cada autor tem na tabela e mostre apenas os autores com mais de 3 livros.
SELECT autor, COUNT(*) AS total_de_livros -- COUnt está contando todas as linhas registros de...
FROM Livros
GROUP BY autor -- ...auto, agrupamento por autor
HAVING COUNT(*) > 3;

 -- Selecionar com LIKE: Encontre todos os livros cujo título contém a palavra "Senhor".
 SELECT titulo
 FROM Livros
 WHERE titulo like '%Senhor%'; 
 
 -- Selecionar com IN: Liste todos os livros que estão na categoria "Fantasia", "Ficção Científica" ou "Fábula".
 SELECT * FROM Livros
 WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');
 
 -- Selecionar com DISTINCT: Encontre todos os diferentes idiomas em que os livros foram escritos.
 SELECT distinct idioma FROM Livros;
 
 -- Selecionar com BETWEEN: Liste todos os livros cujo número de páginas está entre 200 e 400
 SELECT titulo, quantidade_paginas
 FROM Livro
 WHERE quantidade_paginas between 200 and 400;

-- Selecionar Títulos e Anos de Publicação: Liste os títulos e anos de publicação de todos os livros, ordenados pelo ano de publicação
SELECT titulo, ano_publicacao
FROM Livros
ORDER BY ano_publicacao DESC;
