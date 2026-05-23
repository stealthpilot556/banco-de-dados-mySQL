SELECT cidade, COUNT(*) AS id_cliente
FROM clientes
GROUP BY cidade;

SELECT cidade, AVG(idade) AS media_clientes
FROM clientes
GROUP BY cidade;

SELECT categoria, COUNT(*) AS total_produto
FROM produtos
GROUP BY categoria;

SELECT categoria, AVG(preco) AS media_preco
FROM produtos
GROUP BY categoria;

SELECT categoria, estoque FROM produtos WHERE estoque > 10;

SELECT categoria, SUM(estoque * preco)  AS total_categoria
FROM produtos
GROUP BY categoria;

SELECT categoria, SUM(estoque * preco)  AS total_categoria
FROM produtos
GROUP BY categoria
HAVING SUM(estoque * preco) > 2;

SELECT YEAR (data_cadastro) AS ano, COUNT(*) AS dt_cadastro
FROM clientes
GROUP BY YEAR (data_cadastro);

SELECT categoria, 
AVG(estoque) 
FROM produtos 
GROUP BY categoria
HAVING AVG(estoque) > 20;

SELECT categoria,
MIN(estoque),
MAX(estoque)  
FROM produtos
GROUP BY categoria;




