-- Quantos produtos tem mais de 5 litros 


SELECT 
    count(*),
    count(product_id)

from tb_products

where  product_length_cm * product_height_cm * product_width_cm / 1000 > 5  



-- count (*) conta o número total de registros na tabela 'tb_products'

-- count(product_id) conta o número de registro aonde o valor da coluna 'product_id' não é nulo 

-- where filtrando a base de condição

-- depois dividino a coluna product_lenght_cm, product_height_cm, product_product_width_cm / 1000  > 5 