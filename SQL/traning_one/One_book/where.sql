--- selecionando somente os beber que tem mais de 1 uma foto e também selecionando a perfumaria mais de 5

SELECT
    t1.product_id,
    t1.product_category_name,
    t1.product_photos_qty
FROM tb_products as t1 

WHERE (
    t1.product_category_name = 'bebes'
    and t1.product_photos_qty > 1 
)
OR (
    t1.product_category_name = 'perfumaria'
    and t1.product_photos_qty > 5
)