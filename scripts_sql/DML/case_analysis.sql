use pokedex;

SELECT nome, valor_ataque, 
	CASE 
		WHEN valor_ataque < 54 THEN 'Baixo'
		WHEN valor_ataque >= 54 AND valor_ataque < 71 THEN 'Médio'
		WHEN valor_ataque >= 71 AND valor_ataque < 81 THEN 'Alto'
		WHEN valor_ataque >= 81 THEN 'Muito alto'
	END AS 'Status valor de ataque'
FROM pokemon
ORDER BY 1 ASC;