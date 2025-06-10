--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Top 5 meistverkaufte Spiele
SELECT 
    g.title,
    SUM(oi.quantity) AS total_sold,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM OrderItem oi
JOIN Game g ON oi.game_id = g.game_id
GROUP BY g.game_id
ORDER BY total_sold DESC
LIMIT 5;
