SELECT

    c.customer_id,
    c.customer_first_name,
    c.customer_last_name,

    COUNT(f.order_id)      AS total_orders,

    SUM(f.total_amount)    AS lifetime_value,

    AVG(f.total_amount)    AS avg_order_value

FROM {{ ref('fact_orders') }} f

JOIN {{ ref('dim_customers') }} c
ON f.customer_id = c.customer_id

GROUP BY

    c.customer_id,
    c.customer_first_name,
    c.customer_last_name

ORDER BY lifetime_value DESC