{{config(materialized='view')}}

SELECT
order_item_id,
order_id AS od_id,
product_id AS prod_id,
quantity,
unit_price
FROM {{ source('MYSCHEMA', 'order_items') }}
WHERE order_item_id IS NOT NULL