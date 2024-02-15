-- selecionando todas as colunas da tabela customer 

-- calculando 1.07 de % sobre o price do customer 
SELECT
    PRODUCT_ID,
    DESCRIPTION,
    PRICE AS UNTAXED_PRICE,
    ROUND(PRICE * 1.07, 2) AS TAXED_PRICE
FROM PRODUCT;


-- concatenação de texto
SELECT
    NAME,
    STREET_ADDRESS || ' ' || CITY || ', ' || STATE || ' ' || ZIP AS SHIP_ADDRESS 
FROM CUSTOMER;


