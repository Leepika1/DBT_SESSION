{{ config(materialized='view') }}

SELECT 
    oitem.od_id, 
    SUM(oitem.quantity * oitem.unit_price) AS total_revenue
FROM {{ ref('stg_order_items') }} oitem
GROUP BY oitem.od_id
