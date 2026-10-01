SELECT
    *,
    CASE
        WHEN region = 'East' OR region = 'West' THEN 'Yes'
        ELSE 'No'
    END AS discount_eligible
FROM sales;