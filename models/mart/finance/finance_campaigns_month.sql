SELECT EXTRACT(MONTH FROM date_date) AS datemonth,
    ROUND(SUM(daily_ads_margin),2) AS monthly_ads_margin,
    ROUND(SUM(daily_nb_transactions),2) AS monthly_nb_transaction,
    ROUND(AVG(daily_avg_basket),2) AS monthly_avg_basket,
    ROUND(SUM(daily_operational_margin),2) AS monthly_operational_margin,
    ROUND(SUM(ads_cost_daily),2) AS monthly_ads_cost,
    ROUND(SUM(impression_daily),2) AS monthly_impression,
    ROUND(SUM(click_daily),2) AS monthly_click,
    ROUND(SUM(daily_quantity),2) AS monthly_quantity,
    ROUND(SUM(daily_revenue),2) AS monthly_revenue,
    ROUND(SUM(daily_purchase_cost),2) AS monthly_purchase_cost,
    ROUND(SUM(daily_margin),2) AS monthly_margin,
    ROUND(SUM(daily_shipping_fee),2) AS monthly_shipping_fee,
    ROUND(SUM(daily_log_cost),2) AS monthly_log_cost,
    ROUND(SUM(daily_ship_cost),2) AS monthly_ship_cost
FROM {{ref("finance_campaigns_day")}}
GROUP BY datemonth
ORDER BY datemonth DESC