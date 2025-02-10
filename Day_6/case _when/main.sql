
use amazon_temp;

--										CASE WHEN

SELECT  
    method,  
    SUM(amount) AS total_sale,  
    CASE  
        WHEN SUM(amount) <= 100 THEN 'low profit'  
        WHEN SUM(amount) > 100 AND SUM(amount) < 200 THEN 'medium profit'  
        WHEN SUM(amount) >= 200 THEN 'high profit'  
        ELSE 'highest profit obtain - faltu ka'  
    END AS profit_category  
FROM payment  
GROUP BY method;

