SELECT
    s.store_name,
    s.store_city,
    s.store_province,
    COUNT(f.order_id)      AS total_orders,
    SUM(f.total_amount)    AS revenue,
    AVG(f.total_amount)    AS avg_order_value
FROM {{ ref('fact_orders') }} f
JOIN {{ ref('dim_stores') }} s
ON f.store_id = s.store_id
GROUP BY
    s.store_name,
    s.store_city,
    s.store_province
ORDER BY revenue DESC;