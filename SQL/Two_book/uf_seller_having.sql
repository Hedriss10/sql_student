--   count das linhas do selle_state 
SELECT seller_state,
    count(*) as qtd_sellers 

from tb_sellers

--  Filtro pré agg (agregação)
WHERE seller_state IN ('SP', 'RJ', 'PR', 'AC')

-- agregação 
GROUP BY seller_state

-- Filto pós agregação 
HAVING COUNT(*) > 10 -- remove estados com o menos de 10 sellers 

