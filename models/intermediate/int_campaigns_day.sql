SELECT date_date,
    SUM(ads_cost) AS ads_cost_daily,
    SUM(impression) AS impression_daily,
    SUM(click) AS click_daily
FROM {{ref("int_campaigns")}}
GROUP BY date_date 
ORDER BY date_date DESC