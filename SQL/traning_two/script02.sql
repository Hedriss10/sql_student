-- comando where between 
-- SELECT 
--     *
-- FROM STATION_DATA
-- WHERE year BETWEEN 2005 and 2010;

-- usando o or para se livrar de meses
-- SELECT 
--     * 
-- FROM STATION_DATA
-- WHERE month NOT IN (3, 6, 9, 12)
--  usando o not in para o temro execto valores passando no in como argumento

-- retorando todos os meses que sejam divisiveis por 3 
-- SELECT * 
-- FROM STATION_DATA
-- WHERE month % 3 = 0 


-- contando a quantidade de caracteres do report code se ele for maior ou igual a 6 
-- SELECT * 
-- FROM STATION_DATA
-- WHERE length(report_code) > 6


-- encontrando todos os rport_code que comece com a letra A
-- SELECT *
-- FROM STATION_DATA
-- WHERE report_code LIKE 'A%'



-- tratamento de valores nulos 
-- select *
-- from STATION_DATA
-- where snow_depth is null;

-- tratamento de valores nulos, analisando a regra de negocio vamos colocar 0.5 na coluna preciptation
-- SELECT * FROM STATION_DATA
-- WHERE  precipitation is null or precipitation <= 0.5;


-- tratamento de dados com a função coalesce(), ela permite que converte valores nulos em em possiveis valores padrões 
SELECT *
FROM STATION_DATA
WHERE COALESCE(precipitation , 0) <= 0.5;


-- coalesce com select para expressão de dados, isso é muito bom para manipular resultado de entrada 
SELECT report_code , COALESCE(precipitation, 0) as rainfall
FROM STATION_DATA;

-- agrupando condições 
SELECT *   
FROM STATION_DATA
WHERE (rain = 1 AND temperature  <= 32)
OR snow_depth > 0;