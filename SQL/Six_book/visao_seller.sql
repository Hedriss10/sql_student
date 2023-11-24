-- Objetivo 
-- Qual o produto mais caro que o seller já vendeu 
-- considere pedidos entregues



with tb_seller_product as (
    SELECT 
        seller_id,
        product_id,
        count(*) as qtde_produto,
        round(sum(price), 2) as receita_produto 

    FROM tb_orders as t1

    LEFT JOIN tb_order_items as t2
    on t1.order_id = t2.order_id
    
    WHERE  order_status = 'delivered'


    GROUP BY 
        seller_id,
        product_id 
    
    ORDER BY seller_id


),

tb_seller_max as(
    SELECT 
        seller_id, 
        max(qtde_produto) as max_qtde

    FROM tb_seller_product 
    GROUP BY seller_id
)



SELECT * FROM tb_seller_product