SELECT customer_id, 
   SUM(CASE WHEN transaction_type = 'purchase' THEN amount ELSE 0 END) AS total_purchase,
   SUM(CASE WHEN transaction_type = 'refund' THEN amount ELSE 0 END) AS total_refund
FROM transactions
GROUP BY customer_id;

