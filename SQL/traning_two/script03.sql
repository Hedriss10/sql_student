-- agrupando registros 
SELECT COUNT(*) as record_count
FROM STATION_DATA;


-- agrupadno e contando todos os regustros com where 
SELECT COUNT(*) AS record_count FROM STATION_DATA
WHERE tornado = 1
GROUP BY year;


-- especificando por ano 
SELECT year, month, COUNT(*) as record_count FROM STATION_DATA
WHERE tornado = 1 
GROUP BY year, month;

-- ordenando o ano e o mes com order by e desc 
SELECT year, month, COUNT(*) as record_count FROM STATION_DATA
WHERE tornado = 1 
GROUP BY year, month
ORDER BY year DESC, month;


-- calculando a média da temperatura de cada mes aparti do ano de 2000
SELECT month, ROUND(AVG(temperature), 2) as avg_temp
FROM STATION_DATA
WHERE year >= 2000
GROUP BY month;


-- vamos calcular a soma da profundidade da neve esse ano de 2000
SELECT month, ROUND(SUM(snow_depth), 2) as total_depth FROM STATION_DATA
WHERE year >= 2000
GROUP BY month;


-- extraindo todos os metedos de função 
SELECT year,
ROUND(SUM(snow_depth), 2) as total_depth,
ROUND(MIN(snow_depth), 2) as min_depth,
ROUND(MAX(snow_depth), 2) as max_depth
FROM STATION_DATA
WHERE year >= 2000
GROUP BY year;


-- por ano, deveriamos fazer uma filtragem para encontrar o tornado quando o seu valor fosse verdadeiro
SELECT year,
ROUND(SUM(precipitation), 2) as count_preciptation
FROM STATION_DATA
WHERE tornado = 1 
GROUP BY year;



-- utilizando a função having para mostrar registros acima de 30
SELECT year,
ROUND(SUM(precipitation), 2 ) as total_precipitation
FROM STATION_DATA
GROUP BY year 
HAVING total_precipitation > 30;

-- valores distintos 
SELECT DISTINCT station_number FROM STATION_DATA;