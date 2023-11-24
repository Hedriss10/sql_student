-- apuração de campanha 

WITH tb_venda AS (
    SELECT * FROM tb_orders AS t1
    LEFT JOIN tb_order_items AS t2 ON t1.order_id = t2.order_id 
    WHERE order_approved_at >= '2018-07-01'
    AND order_approved_at <= '2018-07-10'
)

SELECT 
    t1.flag_controle,
    AVG(t2.price) AS avg_venda,
    COUNT(DISTINCT t1.seller_id) AS tamanho_amostra, 
    COUNT(DISTINCT t2.seller_id) AS convertidos, 
    CAST(COUNT(DISTINCT t2.seller_id) AS FLOAT) / CAST(COUNT(DISTINCT t1.seller_id) AS FLOAT) AS tx_conversao
FROM tb_venda AS t1
LEFT JOIN tb_audiencia_venda AS t2 ON t2.seller_id = t1.seller_id 
GROUP BY t1.flag_controle;
