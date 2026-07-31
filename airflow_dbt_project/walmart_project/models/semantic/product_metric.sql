SELECT
    p.product_name,
    p.category,
    SUM(f.quantity)          AS units_sold,
    SUM(f.total_amount)      AS revenue
FROM {{ ref('fact_orders') }} f
JOIN {{ ref('dim_products') }} p
ON f.product_id = p.product_id

GROUP BY
    p.product_name,
    p.category

ORDER BY revenue DESC