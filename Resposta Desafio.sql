
select * from Atores

select * from ElencoFilme

select * from Filmes

select * from FilmesGenero

select * from Generos

-- Mostrando os nomes de filmes com seus respectivos generos.
select f.Nome, f.Ano, g.Genero from Filmes f join FilmesGenero fg on f.Id=fg.IdFilme
join Generos g on fg.IdGenero=g.Id

-- Qts atores tem em cada filme
select f.Nome, COUNT(ef.IdAtor) AS 'Quantidade de atores no filme'
from Filmes f join ElencoFilme ef on f.Id=ef.IdFilme
join Atores a on ef.IdAtor=a.Id
group by ef.IdFilme, f.Nome
order by f.Nome


-- 1. Buscar o nome e o ano dos filmes
SELECT Nome, Ano
FROM Filmes

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano

-- 3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome LIKE 'De volta para o futuro'

-- 4. Buscar os filmes lançados em 1997
SELECT *
FROM Filmes
WHERE Ano=1997

-- 5. Buscar os filmes lançados APÓS o ano 2000
SELECT *
FROM Filmes
WHERE Ano>2000

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT *
FROM Filmes
WHERE Duracao>100 and Duracao<150
ORDER BY Duracao






