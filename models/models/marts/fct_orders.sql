{{ config(materialized='table') }}

SELECT 
    od_id, 
    cust_id, 
    order_date, 
    EXTRACT(YEAR FROM order_date) AS order_year, 
    total_amount, 
    customer_full_name
FROM {{ ref('int_orders') }}
