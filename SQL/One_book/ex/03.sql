-- cria uma coluna que tenha as info das informação em m3

-- Selecionando as 3 colunas para realizar a operação matematica 
-- Divide por 1000 e separa acima de 5 criando uma acentuação product_m3 


select
    product_id,
    product_length_cm * product_height_cm * product_width_cm / 1000000 as product_volume_m3,
    product_category_name,
    product_name_lenght,
    product_description_lenght,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm

from tb_products