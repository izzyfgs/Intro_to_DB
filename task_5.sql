-- ============================================================
-- TASK 1: CREATE DATABASE
-- ============================================================
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- ============================================================
-- TASK 2: CREATE ALL TABLES
-- ============================================================

-- Create Authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- Create Books table
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Create Customers table
CREATE
