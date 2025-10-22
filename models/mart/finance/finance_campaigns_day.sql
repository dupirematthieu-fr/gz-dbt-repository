SELECT fd.date_date,
    ROUND(fd.daily_operational_margin-cd.ads_cost_daily,2) AS daily_ads_margin,
    fd.daily_nb_transactions,
    fd.daily_avg_basket,
    fd.daily_operational_margin,
    cd.ads_cost_daily,
    cd.impression_daily,
    cd.click_daily,
    fd.daily_quantity,
    fd.daily_revenue,
    fd.daily_purchase_cost,
    fd.daily_margin,
    fd.daily_shipping_fee,
    fd.daily_log_cost,
    fd.daily_ship_cost
FROM {{ref("mrt_finance_days")}} AS fd
LEFT JOIN {{ref("int_campaigns_day")}} AS cd
    USING (date_date)
ORDER BY date_date DESC