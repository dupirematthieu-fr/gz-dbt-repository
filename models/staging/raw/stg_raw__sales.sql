SELECT
    date_date,
    orders_id,
    pdt_id AS products_id,
    revenue,
    quantity
FROM {{ source('raw', 'sales') }}