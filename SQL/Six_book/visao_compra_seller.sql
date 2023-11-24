-- Tempo entre vendas dos sellers 
-- Apenas pedidos entregues 

WITH tb_seller_order AS (
    SELECT 
        t1.order_id,
        DATE(t1.order_approved_at) AS data_venda,  -- Corrected the column name
        t2.seller_id    
    FROM 
        tb_orders AS t1 
    LEFT JOIN 
        tb_order_items AS t2 ON t1.order_id = t2.order_id 
    WHERE 
        order_status = 'delivered'
),

tb_seller_order_sort AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY seller_id, data_venda ORDER BY data_venda) AS data_seller_order  -- Added ORDER BY clause
    FROM 
        tb_seller_order 
),

tb_seller_lag_data AS (
    SELECT
        order_id, 
        seller_id,
        data_venda,
        LAG(data_venda) OVER (PARTITION BY seller_id ORDER BY data_venda) AS lag_data_venda  -- Corrected the PARTITION BY clause
    FROM 
        tb_seller_order_sort 
    WHERE 
        data_seller_order = 1 
),

tb_tempos_vendas_seller AS (
    SELECT 
        *,
        julianday(data_venda) - julianday(lag_data_venda) AS diff_dias 
    FROM 
        tb_seller_lag_data
    WHERE 
        lag_data_venda IS NOT NULL
)

SELECT
    seller_id,
    ROUND(AVG(diff_dias), 2 ) AS tempo_medio_venda
FROM 
    tb_tempos_vendas_seller 
GROUP BY 
    seller_id;
