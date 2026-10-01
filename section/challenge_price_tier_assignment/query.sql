SELECT
    id,
    product,
    quantity,
    price,
    region,
   CASE
    WHEN price > 700 THEN 'Premium'
    WHEN price <700 AND price > 300 THEN 'Standard'
    ELSE 'Budget'
    END AS price_tier
FROM
    sales;