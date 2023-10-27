use pokedex;

SELECT c.nome AS 'Categoria', AVG(p.valor_ataque) AS 'Média do valor de ataque'
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
GROUP BY categoria
ORDER BY 2 DESC;

SELECT c.nome AS 'Categoria', MAX(p.peso) AS 'Peso máximo da categoria', MIN(p.peso) AS 'Peso mínimo da categoria'
FROM pokemon p
JOIN categoria c ON c.id = p.id_categoria
GROUP BY c.nome
ORDER BY 2 DESC;

SELECT e.nome AS 'Espécie', MAX(p.peso) AS 'Peso máximo da espécie'
FROM pokemon p
JOIN especie e ON e.id = p.id_especie
GROUP BY e.nome
ORDER BY 2 DESC;

SELECT e.nome AS 'Espécie', MAX(p.peso) AS 'Peso máximo da espécie'
FROM pokemon p
JOIN especie e ON e.id = p.id_especie
GROUP BY e.nome
HAVING MAX(p.peso) > 150
ORDER BY 2 DESC;

SELECT c.nome AS 'Categoria', MAX(p.valor_defesa) AS 'Valor MAX de defesa', MIN(p.valor_defesa) AS 'Valor MIN de defesa'
FROM pokemon p
JOIN categoria c ON c.id = p.id_categoria
GROUP BY c.nome
ORDER BY 2 DESC;

SELECT c.nome AS 'Categoria', COUNT(p.nome) AS 'Quantidade de pokemons'
FROM pokemon p
JOIN categoria c ON c.id = p.id_categoria
GROUP BY c.nome
ORDER BY 2 DESC;

SELECT e.nome AS 'Especie', COUNT(p.nome) AS 'Quantidade de pokemons'
FROM pokemon p
JOIN especie e ON e.id = p.id_especie
GROUP BY e.nome
ORDER BY 2 DESC;

SELECT e.nome AS 'Especie', COUNT(p.nome) AS 'Quantidade de pokemons'
FROM pokemon p
JOIN especie e ON e.id = p.id_especie
GROUP BY e.nome
HAVING COUNT(p.nome) >= 3
ORDER BY 2 DESC;