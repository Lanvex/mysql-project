--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Durchschnittspreis je Genre
SELECT 
    ge.name AS genre,
    AVG(g.price) AS avg_price
FROM Game g
JOIN Genre ge ON g.genre_id = ge.genre_id
GROUP BY ge.genre_id;
