SELECT * FROM STATION_DATA;

-- a temperatura vem aumentando em todo o mês de janeiro nos últimos 20 anos? 
SELECT year, month, 
temperature as total_temperature
FROM STATION_DATA
WHERE year >= 1990 and month = 1 
GROUP BY year, month
HAVING  ROUND(MAX(total_temperature), 2);
-- Sim a temperatura vema aumentando 

-- Quantas vezes tivemos e não tivemoz granizio durante um tornado?
SELECT hail, tornado,
SUM(hail) as total_hail,
SUM(tornado) as total_tornado
FROM STATION_DATA
GROUP BY hail, tornado;
-- Não tivemos granizio sem tornado 

-- Quantas vezes não tivemos um granizio e não tivemos granizio durante um tornado?
SELECT hail, tornado,
SUM(hail) as total_hail,
SUM(tornado) as total_tornado
FROM STATION_DATA
GROUP BY hail, tornado;
-- Sempre que tivemos tornado tivemos granizio