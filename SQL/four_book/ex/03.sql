-- Ex 3 

-- Qual é o peso médio dos produtos vendidos por sellers de cada estado?
-- Considere apenas o ano de 2017 e pedidos entregues nesta analise 

SELECT 
    t4.seller_state, 
    ROUND(AVG(t3.product_weight_g), 2) as avg_peso_produto
FROM 
    tb_orders as t1 
LEFT JOIN 
    tb_order_items as t2 ON t1.order_id = t2.order_id 
LEFT JOIN 
    tb_products as t3 ON t2.product_id = t3.product_id
LEFT JOIN 
    tb_sellers as t4 ON t2.seller_id = t4.seller_id
WHERE 
    t1.order_status = 'delivered' AND strftime("%Y", order_approved_at) = '2017'
GROUP BY 
    t4.seller_state;
