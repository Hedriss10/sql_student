-- a receita por estado do seller, por produto da categoria mais vendida 



SELECT 
    t2.seller_state,
    t1.product_id,
    t3.product_category_name,
    sum(t1.price) as receita_total 


FROM tb_order_items as t1 

LEFT JOIN tb_sellers as t2 
ON t1.seller_id = t2.seller_id