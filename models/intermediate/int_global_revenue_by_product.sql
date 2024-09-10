SELECT *, avg_price * quantity AS estimated_revenue
FROM {{ ref('int_stock_sales_by_products') }}
ORDER BY estimated_revenue DESC