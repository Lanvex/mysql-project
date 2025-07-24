--Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Genre
INSERT INTO Genre (name) VALUES
('Action-Adventure'),
('RPG'),
('Simulation'),
('Strategy'),
('Shooter');

-- DeveloperStudio
INSERT INTO DeveloperStudio (name, country, founded_at) VALUES
('CD Projekt Red', 'Poland aka Germany', '2002-05-01'),
('Larian Studios', 'Belgium', '1996-08-01'),
('Nintendo EPD', 'Japan', '2015-09-16'),
('Rockstar North', 'UK', '1988-01-01'),
('FromSoftware', 'Japan', '1986-11-01');

-- Game
INSERT INTO Game (title, release_year, price, genre_id, studio_id) VALUES
('Cyberpunk 2077', 2020, 59.99, 1, 1),
('Baldur\'s Gate 3', 2023, 69.99, 2, 2),
('The Legend of Zelda: Breath of the Wild', 2017, 59.99, 1, 3),
('Grand Theft Auto V', 2013, 29.99, 1, 4),
('Elden Ring', 2022, 59.99, 2, 5);

-- SystemRequirement
INSERT INTO SystemRequirement (game_id, ram_mb, gpu, cpu, storage_gb) VALUES
(1, 8000, 'NVIDIA GTX 1060', 'Intel i5-3570K', 70.0),
(2, 16000, 'NVIDIA GTX 970', 'Intel i7-4770K', 150.0),
(3, 4000, 'NVIDIA GTX 660', 'Intel i5-4430', 13.4),
(4, 4000, 'NVIDIA GTX 660', 'Intel i5-3470', 65.0),
(5, 12000, 'NVIDIA GTX 1070', 'Intel i7-8700K', 60.0);

-- Customer
INSERT INTO Customer (first_name, last_name, email, password_hash) VALUES
('Alice', 'Müller', 'alice@example.com', 'rzFuy5Go7nrpkhBwKy1HWPMM3eO/YePY54fXRoH5Cm4='),
('Bob', 'Schmidt', 'bob@example.com', '5784L25ZFbP4hhm4ZiI+vx1RxMUyHMzeLp/3AKMlkIY='),
('Clara', 'Meier', 'clara@example.com', 'Qsqkq7e2D4+RTlv7jmUR19m9mBfecZt0JRdV2X/pe/E='),
('Maximilian', 'Haug', 'maxhaug@schueler.bs-ffb.de', 'sD3fPKLnFKZUjnSV4qA/XoJOqsmDfNfxWcZ7kPtLc0I='),
('Pornelius', 'Hubert', 'pornelius@hub.com', 'Q9EMZuQ6wOjq2p4/DTqJhX9/x0hzd0qHy+8wZV0ORDs='),
('Marc', 'Marjan', 'marc@marjan.com', 'qNALxgfJWWrMz2ENg2IZo3VgLjNBbGjfGK+3ZZSoImU='),
('Niklas', 'Busch', 'niklas@buschonline.de', '5rUI5SDKIxRTFJsSaPPT4+rqH5zaVALoEsX7JiFn460=');

-- GameOrder
INSERT INTO GameOrder (customer_id, order_date, total_price, status) VALUES
(1, '2025-06-01 12:00:00', 59.99, 'paid'),
(2, '2025-06-02 14:30:00', 89.98, 'shipped'),
(3, '2025-06-03 16:45:00', 29.99, 'pending'),
(4, '2025-06-04 10:15:00', 39.99, 'paid');

-- OrderItem
INSERT INTO OrderItem (order_id, game_id, quantity, unit_price) VALUES
(1, 1, 1, 59.99),
(2, 2, 1, 69.99),
(2, 5, 1, 19.99),
(3, 4, 1, 29.99),
(4, 1, 1, 39.99);