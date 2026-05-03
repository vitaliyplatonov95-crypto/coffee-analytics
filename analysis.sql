-- Выручка по дням
SELECT
    order_date,
    SUM(order_revenue) AS daily_revenue
FROM order_metrics
GROUP BY order_date;


-- Количество заказов
SELECT
    order_date,
    COUNT(*) AS orders_count
FROM order_metrics
GROUP BY order_date;


-- Средний чек
SELECT AVG(order_revenue)
FROM order_metrics;


-- Выручка по продуктам
SELECT
    p.product_name,
    SUM(oi.quantity * p.price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;


