-- Ex1 
-- Qual o valor total da receita gerada total de cada estado?
-- Considere a base completa, com apenas pedido entregue 


SELECT 
    t2.customer_state,
    sum(t3.price) as receita_total_estado,
    sum(t3.price) / count(DISTINCT t1.customer_id) avg_receita_cliente

FROM tb_orders as t1 

LEFT JOIN tb_customers as t2
on t1.customer_id = t2.customer_id 


LEFT JOIN tb_order_items as t3
on t1.order_id = t3.order_id


WHERE t1.order_id = 'delivered'


GROUP BY t2.customer_state