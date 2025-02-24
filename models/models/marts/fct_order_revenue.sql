{{config(materialised = 'table')}}


SELECT 
    r.od_id, 
    r.total_revenue, 
    o.order_status
FROM {{ ref('int_order_revenue') }} r
JOIN {{ ref('int_orders') }} o 
    ON r.od_id = o.od_id
