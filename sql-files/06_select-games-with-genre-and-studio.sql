--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Alle Spiele mit Genre, Studio & Preis
SELECT 
    g.title,
    g.release_year,
    g.price,
    ge.name AS genre,
    ds.name AS studio
FROM Game g
JOIN Genre ge ON g.genre_id = ge.genre_id
JOIN DeveloperStudio ds ON g.studio_id = ds.studio_id
ORDER BY g.title;
