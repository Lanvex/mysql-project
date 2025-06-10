--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Alle Kunden mit Anzahl ihrer Bestellungen
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.email,
    COUNT(go.order_id) AS total_orders
FROM Customer c
LEFT JOIN GameOrder go ON c.customer_id = go.customer_id
GROUP BY c.customer_id;
