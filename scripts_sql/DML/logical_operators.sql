use pokedex;

SELECT p.nome AS POKEMON, c.nome AS CATEGORIA, p.velocidade_media AS 'VELOCIDADE MÉDIA', p.valor_ataque AS 'VALOR DE ATAQUE'
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
WHERE p.velocidade_media < 50 OR p.valor_ataque < 50
ORDER BY 1 ASC;

SELECT p.nome AS POKEMON, c.nome AS CATEGORIA, p.velocidade_media AS 'VELOCIDADE MÉDIA', p.valor_ataque AS 'VALOR DE ATAQUE'
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
WHERE p.velocidade_media < 50 AND p.valor_ataque < 50
ORDER BY 1 ASC;

SELECT p.nome AS POKEMON, c.nome AS CATEGORIA, p.velocidade_media AS 'VELOCIDADE MÉDIA', p.valor_ataque AS 'VALOR DE ATAQUE'
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
WHERE p.velocidade_media > 50 AND p.valor_ataque > 50
ORDER BY 1 ASC;

SELECT p.nome AS POKEMON, c.nome AS CATEGORIA, p.velocidade_media AS 'VELOCIDADE MÉDIA'
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
WHERE p.velocidade_media > 50 AND NOT (c.nome = 'Normal')
ORDER BY 3 DESC;

SELECT p.nome AS POKEMON, c.nome AS CATEGORIA, p.velocidade_media AS 'VELOCIDADE MÉDIA', p.valor_ataque AS 'VALOR DE ATAQUE'
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
WHERE p.velocidade_media > 50 AND NOT (c.nome = 'Normal')
ORDER BY 1 ASC;

SELECT p.nome AS POKEMON, c.nome AS CATEGORIA
FROM pokemon p
JOIN categoria c ON c.id = p.id_categoria
WHERE c.nome IN ('Legendary', 'Mythical')
ORDER BY p.nome ASC;

SELECT nome, velocidade_media, valor_ataque, valor_defesa
FROM pokemon
WHERE nome LIKE 'Char%';