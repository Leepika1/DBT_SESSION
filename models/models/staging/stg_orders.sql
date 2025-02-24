{{config(materialized='view')}}


SELECT
order_id AS od_id,
customer_id AS cust_id,
order_date,
lower (order_status) AS order_status,
total_amount
FROM {{ source('MYSCHEMA', 'orders') }}
WHERE od_id IS NOT NULL