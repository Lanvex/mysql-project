--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Umsatz pro Kunde
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM Customer c
JOIN GameOrder go ON c.customer_id = go.customer_id
JOIN OrderItem oi ON go.order_id = oi.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;
