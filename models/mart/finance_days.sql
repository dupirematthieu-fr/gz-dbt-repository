SELECT date_date,
    COUNT(orders_id) AS daily_nb_transactions,
    ROUND(SUM(revenue)) AS daily_revenue,
    ROUND(SUM(revenue)/COUNT(orders_id),2) AS daily_avg_basket,
    ROUND(SUM(operational_margin),2) AS daily_operational_margin,
    ROUND(SUM(purchase_cost),2) AS daily_purchase_cost,
    ROUND(SUM(shipping_fee),2) AS daily_shipping_fee,
    ROUND(SUM(log_cost),2) AS daily_log_cost,
    ROUND(SUM(quantity),2) AS daily_quantity
FROM {{ref("int_orders_operational")}}
GROUP BY date_date