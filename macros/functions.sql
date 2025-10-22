{% macro margin_percent(revenue,purchase_cost)%}
    ROUND(SAFE_DIVIDE(({{revenue}} - {{purchase_cost}}),{{revenue}}),2)
{% endmacro %}