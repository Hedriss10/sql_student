SELECT 
    report_code,
    year,
    month,
    day,
    wind_speed,
    CASE
        WHEN ROUND(wind_speed, 1) >= 40 THEN 'HIGH'
        WHEN ROUND(wind_speed, 1) >= 30 AND ROUND(wind_speed, 1) < 40 THEN 'MODERATE' 
        ELSE 'LOW'
    END AS wind_severity
FROM 
    STATION_DATA;

-- agrupando instruções com case 
SELECT 
    year,

    CASE
        WHEN wind_speed >= 40 THEN 'HIGH'
        WHEN wind_speed >= 30 THEN 'MODERATE' 
    ELSE 'LOW'

    END AS wind_severity,
    COUNT(*) as record_count

FROM STATION_DATA
GROUP BY 1, 2


-- segredos do case zero/null
SELECT year, month,
SUM(CASE WHEN tornado = 1 THEN precipitation ELSE 0 END) as tornado_precipitation,
SUM(CASE WHEN tornado = 0 THEN precipitation ELSE 0 END) as no_tornado_precipitation
FROM STATION_DATA 
GROUP BY year, month


-- utilizando com o max 
SELECT year, month,
MAX(CASE WHEN tornado = 1 THEN precipitation ELSE 0 END) AS tornado_precipitation,
MAX(CASE WHEN tornado = 0 THEN precipitation ELSE 0 END) AS no_tornado_precipitation
FROM STATION_DATA
GROUP BY year, month 



-- vamos analisar a consulta calcularã as temperatuas médias por mês quando a chuva/granizio estavam ou não presentes apos o ano de 2000
SELECT  
    month,
ROUND(AVG(CASE WHEN hail OR rain THEN temperature ELSE null END), 2) as avg_precipitation_temp,
ROUND(AVG(CASE WHEN NOT (hail OR rain) THEN temperature ELSE null END), 2) as not_avg_precipitation_temp
FROM STATION_DATA
WHERE year > 2000
GROUP BY month;




SELECT * FROM STATION_DATA
LIMIT 10