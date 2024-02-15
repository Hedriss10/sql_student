-- Ex2 
-- Qual o valor total de receita gerada por sellers de cada estado 
-- Considere a base completa, com apenas pedidos entregues 



SELECT 
    t3.seller_state,  
    round( sum(t2.price) / CAST( count(DISTINCT t2.price)as int ), 2 ) as receita_federal_round , 
    round( sum(t2.price) / CAST( count(DISTINCT t2.seller_id) as int ), 2 ) as avg_receita_federal


FROM tb_orders as t1 

LEFT JOIN tb_order_items as t2
on t1.order_id = t2.order_id 


LEFT JOIN tb_sellers as t3
on t2.seller_id = t3.seller_id

WHERE t1.order_status = 'delivered'

GROUP BY t3.seller_state