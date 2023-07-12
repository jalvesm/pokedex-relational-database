-- Selecione as categorias de pokemon cuja a média do valor de ataque seja superior a 100.
SELECT c.nome AS nome_categoria, AVG(p.valor_ataque) AS media_valor_ataque
FROM pokemon p 
JOIN categoria c ON c.id = p.id_categoria
GROUP BY c.nome
HAVING media_valor_ataque > 100;

-- Selecione o nome dos pokemons cuja velocidade seja superior à velocidade média.
SELECT nome, velocidade_media
FROM pokemon p
WHERE velocidade_media > (SELECT AVG(velocidade_media) FROM pokemon);


