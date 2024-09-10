SELECT
product_id,
SUM(quantity) AS quantity,
SUM(stock) AS stock,
AVG(price) AS avg_price
FROM {{ ref('int_stock_sales') }}
GROUP BY product_id