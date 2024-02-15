-- a receita por estado do seller, por produto da categoria mais vendida 



SELECT
    t2.seller_state,
    t1.product_id,
    t3.product_category_name,
    SUM(t1.price) as receita_total
FROM 
    tb_order_items as t1 
LEFT JOIN 
    tb_sellers as t2 ON t1.seller_id = t2.seller_id
LEFT JOIN 
    tb_products as t3 ON t1.product_id = t3.product_id
WHERE 
    t3.product_category_name IN (
        SELECT 
            t2.product_category_name
        FROM 
            tb_order_items as t1
        LEFT JOIN 
            tb_products as t2 ON t1.product_id = t2.product_id
        GROUP BY 
            t2.product_category_name
        ORDER BY 
            COUNT(*) DESC 
        LIMIT 3
    )
GROUP BY 
    t2.seller_state,
    t1.product_id,
    t3.product_category_name;
