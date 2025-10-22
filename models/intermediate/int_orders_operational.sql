SELECT m.orders_id,
    m.date_date,
    ROUND(m.margin+s.shipping_fee-s.log_cost-s.ship_cost,2) AS operational_margin,
    m.quantity,
    m.purchase_cost,
    m.margin,
    m.revenue,
    s.shipping_fee,
    s.log_cost,
    s.ship_cost
FROM {{ref("int_orders_margin")}} AS m
LEFT JOIN {{ref("stg_raw__ship")}} AS s
    USING(orders_id)
ORDER BY orders_id DESC,date_date DESC