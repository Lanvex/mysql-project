-- Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Details zu allen Bestellungen inkl. Spiele & Preise
SELECT 
    go.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    g.title AS game_title,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS item_total,
    go.order_date,
    go.status
FROM GameOrder go
JOIN Customer c ON go.customer_id = c.customer_id
JOIN OrderItem oi ON go.order_id = oi.order_id
JOIN Game g ON oi.game_id = g.game_id
ORDER BY go.order_date DESC;
