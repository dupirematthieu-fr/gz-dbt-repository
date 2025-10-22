SELECT s.date_date,
    s.orders_id,
    s.products_id,
    s.revenue AS revenue,
    s.quantity AS quantity,
    p.purchase_price*s.quantity AS purchase_cost,
    s.revenue-(p.purchase_price*s.quantity) AS margin
FROM {{ref("stg_raw__sales")}} AS s
LEFT JOIN {{ref("stg_raw__product")}} AS p 
    USING(products_id)