SELECT 
   TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    COUNT(*) as total_transactions,
    SUM(CASE WHEN transaction_type = 'purchase' THEN 1 ELSE 0 END) AS purchase_count,
    SUM(CASE WHEN transaction_type = 'refund' THEN 1 ELSE 0 END) AS refund_count,
    SUM(CASE WHEN transaction_type = 'fee' THEN 1 ELSE 0 END) AS fee_count
FROM transactions
GROUP BY month
ORDER BY month;
