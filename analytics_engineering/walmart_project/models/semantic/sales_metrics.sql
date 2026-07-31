SELECT
    s.store_name,
    s.store_province,
    p.product_name,
    p.category,

    COUNT(DISTINCT f.order_id) AS total_orders,
    SUM(f.total_amount) AS revenue,
    SUM(f.line_amount) AS sales_amount

FROM {{ ref('fact_orders') }} f
JOIN {{ ref('dim_products') }} p
  ON f.product_id = p.product_id
JOIN {{ ref('dim_stores') }} s
  ON f.store_id = s.store_id

GROUP BY
    s.store_name,
    s.store_province,
    p.product_name,
    p.category