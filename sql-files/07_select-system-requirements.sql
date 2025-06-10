--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Spiele mit ihren Systemanforderungen
SELECT 
    g.title,
    sr.ram_mb,
    sr.gpu,
    sr.cpu,
    sr.storage_gb
FROM Game g
JOIN SystemRequirement sr ON g.game_id = sr.game_id
ORDER BY g.title;
