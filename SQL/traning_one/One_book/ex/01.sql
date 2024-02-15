--  Quantos produtos temos na categoria artes 



-- contagem de linhas

SELECT 
    count(*) as qtd_linhas, 
    count(product_id) as qtde_produtos, 
    count(DISTINCT product_id ) as qtde_produtos_distintos,
    count(DISTINCT product_category_name) as qtde_categorias_distintas

from tb_products
WHERE  product_category_name =  'artes'




-- SELECT 
--     count(*) as qtd_linhas,
--     count(product_id ) as qtde_produtos,
--     count(DISTINCT product_id) as qtde_produtos_distintos,
--     count(DISTINCT product_category_name) as qtde_categorias_distintas


-- from tb_products 
-- WHERE prodcut_category_name = 'artes'
