SELECT

    `Retailer`,

    `Market`,

    `Product Category`,

    `Product Brand`,

    COUNT(DISTINCT `Product Id`)                AS total_products,

    AVG(`Product Rating`)                       AS average_product_rating,

    SUM(`Product Reviews Count`)                AS total_reviews,

    AVG(`Product Reviews Count`)                AS avg_reviews_per_product,

    MAX(`Product Rating`)                       AS highest_rating,

    MIN(`Product Rating`)                       AS lowest_rating,

    AVG(`Product Price`)                        AS average_product_price

FROM {{ source('walmart_gold', 'reviews') }}

GROUP BY

    `Retailer`,
    `Market`,
    `Product Category`,
    `Product Brand`

ORDER BY total_reviews DESC