--1
SELECT ID, NOME, ANO FROM FILMES;

--2
SELECT NOME, ANO FROM FILMES
ORDER BY ANO

--3
SELECT * FROM Filmes 
WHERE Nome LIKE 'De Volta para o Futuro'

--4
SELECT * FROM FILMES 
WHERE ANO = 1997

--5
SELECT * FROM FILMES 
WHERE ANO > 2000

--6
SELECT * FROM FILMES 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT ANO, COUNT(ANO) Quantidade FROM FILMES
GROUP BY ANO
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

--11
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
INNER JOIN Filmes F ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor

