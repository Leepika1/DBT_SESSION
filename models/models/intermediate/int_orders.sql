{{ config(materialized='view') }}

SELECT 
    o.od_id, 
    o.cust_id, 
    o.order_date, 
    o.order_status, 
    o.total_amount, 
    c.email,
    c.created_at,
    c.first_name || ' ' || c.last_name AS customer_full_name
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_customers') }} c 
    ON o.cust_id = c.cust_id
WHERE o.order_status != 'canceled'