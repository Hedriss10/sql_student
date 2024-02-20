-- Faça uma relatorio que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria
SELECT 
	product_category_name,
	COUNT(*) AS qtd_produto,
	MAX(olist_products_dataset.product_weight_g) AS maior_peso,
	MIN(olist_products_dataset.product_weight_g) AS menor_peso,
	AVG(olist_products_dataset.product_weight_g) AS avg_peso
FROM public.olist_products_dataset
WHERE product_category_name IS NOT NULL
AND product_category_name != 'alimentos'
AND product_category_name <> 'agro_insdustria_e_comercio' 
GROUP BY product_category_name

-- Faça uma relatorio que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria
SELECT 
	olist_products_dataset.product_category_name as product,
	COUNT(*) AS qtd_produto,
	MAX(olist_products_dataset.product_weight_g) AS maior_peso,
	MIN(olist_products_dataset.product_weight_g) AS menor_peso,
	ROUND(AVG(olist_products_dataset.product_weight_g)::NUMERIC, 2) AS avg_peso
FROM public.olist_products_dataset
INNER JOIN product_category_name_translation 
ON product_category_name_translation.product_category_name = olist_products_dataset.product_category_name
WHERE olist_products_dataset.product_category_name IS NOT NULL
AND olist_products_dataset.product_category_name != 'alimentos'
AND olist_products_dataset.product_category_name <> 'industria_e_comercio' 
GROUP BY olist_products_dataset.product_category_name
limit 10;

-- Faça um relatório que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. 
-- Considere apenas os objetos que tenham a descrição maior que 100.
SELECT 
	olist_products_dataset.product_category_name as product,
	COUNT(*) AS qtd_produto,
	MAX(olist_products_dataset.product_weight_g) AS maior_peso,
	MIN(olist_products_dataset.product_weight_g) AS menor_peso,
	ROUND(AVG(olist_products_dataset.product_weight_g)::NUMERIC, 2) AS avg_peso
FROM public.olist_products_dataset
WHERE olist_products_dataset.product_category_name IS NOT NULL
AND olist_products_dataset.product_description_lenght > 100
GROUP BY olist_products_dataset.product_category_name

-- Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. 
-- Considere apenas os objetos que tenham a descrição maior que 100.
-- Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres.
SELECT 
	olist_products_dataset.product_category_name as product,
	COUNT(*) AS qtd_produto,
	MAX(olist_products_dataset.product_weight_g) AS maior_peso,
	MIN(olist_products_dataset.product_weight_g) as menor_peso,
	ROUND(AVG(olist_products_dataset.product_weight_g)::NUMERIC, 2) as avg_peso
FROM olist_products_dataset
GROUP BY olist_products_dataset.product_category_name
HAVING avg(product_description_lenght) > 500
ORDER BY MIN(product_description_lenght) > 100 DESC,
		 MAX(product_description_lenght) ASC 
			
-- paramos no 02 dos exercicios





