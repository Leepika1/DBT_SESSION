SELECT * 
FROM {{ ref('fct_order_revenue') }} 
WHERE total_revenue <= 0
