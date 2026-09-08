SELECT
sender_id,
SUM(amount) AS balance
FROM
transactions
  WHERE
  note LIKE "%lunch%"
  AND was_successful = true 
GROUP BY sender_id
HAVING
sender_id IS NOT NULL AND balance >20
ORDER BY
balance;



