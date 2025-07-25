-- Database Project - Online Game Store - Maximilian Haug, Niklas Busch, Marc Marjan

-- Drop tables in correct order due to foreign key dependencies
DROP TABLE IF EXISTS OrderItem, SystemRequirement, GameOrder, Game, DeveloperStudio, Genre, Customer;
 
-- Customer
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,	-- Base 64 SHA256
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 
-- Genre
CREATE TABLE Genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);
 
-- DeveloperStudio
CREATE TABLE DeveloperStudio (
    studio_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    country VARCHAR(100),
    founded_at DATE
);
 
-- Game
CREATE TABLE Game (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT,
    price DECIMAL(10,2) NOT NULL,
    genre_id INT NOT NULL,
    studio_id INT NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id),
    FOREIGN KEY (studio_id) REFERENCES DeveloperStudio(studio_id)
);
 
-- SystemRequirement (1:1 with Game)
CREATE TABLE SystemRequirement (
    game_id INT PRIMARY KEY,
    ram_mb INT,
    gpu VARCHAR(150),
    cpu VARCHAR(150),
    storage_gb DECIMAL(5,1),
    FOREIGN KEY (game_id) REFERENCES Game(game_id)
);
 
-- GameOrder
CREATE TABLE GameOrder (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10,2),
    status ENUM('pending', 'paid', 'shipped', 'cancelled') DEFAULT 'pending',
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
 
-- OrderItem (n:m between GameOrder and Game)
CREATE TABLE OrderItem (
    order_id INT NOT NULL,
    game_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    unit_price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (order_id, game_id),
    FOREIGN KEY (order_id) REFERENCES GameOrder(order_id) ON DELETE CASCADE,
    FOREIGN KEY (game_id) REFERENCES Game(game_id)
);