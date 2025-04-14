CREATE DATABASE Bookstore;
USE Bookstore;
-- Table: book
CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publisher_id INT,
    language_id INT,
    price DECIMAL(10,2),
    published_date DATE,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);
-- Table: book_author (many-to-many)
CREATE TABLE book_author (
    book_author_id
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);
-- Table: author
CREATE TABLE author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    bio TEXT
);

-- Table: book_language
CREATE TABLE book_language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Table: publisher
CREATE TABLE publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(20)



-- Table: cust_order
CREATE TABLE cust_order (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    status_id INT,
    shipping_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (status_id) REFERENCES order_status(status_id),
    FOREIGN KEY (shipping_id) REFERENCES shipping_method(shipping_id)
);
-- Table: order_line
CREATE TABLE order_line (
    order_line_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10,2),
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- Table: shipping_method
CREATE TABLE shipping_method (
    shipping_id INT AUTO_INCREMENT PRIMARY KEY,
    method_name VARCHAR(50)
);
-- Table: order_history
CREATE TABLE order_history (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    status_id INT,
    updated_at DATETIME,
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);
-- Table: order_status
CREATE TABLE order_status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(50)

);

-- Table: customer
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

-- Table: address
CREATE TABLE address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(100),
    zip_code VARCHAR(20),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- Table: address_status
CREATE TABLE address_status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(50)
);

-- Table: customer_address
CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

-- Table: country
CREATE TABLE country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
