CREATE DATABASE railway_management;
USE railway_management;

-- Table for tickets
CREATE TABLE tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    train_id INT NOT NULL,
    passenger_name VARCHAR(100) NOT NULL,
    travel_date DATE NOT NULL,
    quota VARCHAR(50) NOT NULL
);

-- Table for trains
CREATE TABLE trains (
    id INT AUTO_INCREMENT PRIMARY KEY,
    train_name VARCHAR(100) NOT NULL,
    status VARCHAR(100) NOT NULL -- For train status
);

-- Table for passengers
CREATE TABLE passengers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    contact_number VARCHAR(15)
);

-- Insert sample data for tickets
INSERT INTO tickets (id, train_id, passenger_name, travel_date, quota)
VALUES
(1, '101', 'John Doe', '2024-12-01', 'Tatkal'),
(2, '102', 'Jane Smith', '2024-12-02', 'General'),
(3, '103', 'Alice Johnson', '2024-12-05', 'Ladies'),
(4, '104', 'Robert Brown', '2024-12-08', 'Senior-citizen'),
(5, '105', 'Emily Davis', '2024-12-10', 'Lower-berth');

-- Insert sample data for passengers
INSERT INTO passengers (id, name, train_id, travel_date, quota)
VALUES 
(1, 'John Doe', '101', '2024-12-01', 'Tatkal'),
(2, 'Jane Smith', '102', '2024-12-02', 'General'),
(3, 'Alice Johnson', '103', '2024-12-05', 'Ladies'),
(4, 'Robert Brown', '104', '2024-12-08', 'Senior-citizen'),
(5, 'Emily Davis', '105', '2024-12-10', 'Lower-berth');
