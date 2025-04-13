DROP DATABASE IF EXISTS bookstore;
CREATE DATABASE bookstore;
use bookstore;
CREATE TABLE author (
    author_id VARCHAR(10) PRIMARY KEY,
    author_name VARCHAR(100),
    highest_education VARCHAR(100),
    county_origin VARCHAR(100)
);

SELECT DATABASE();


CREATE TABLE book_language (
    language_id VARCHAR(10) PRIMARY KEY,
    language_name VARCHAR(50)

);

CREATE TABLE publisher (
    publisher_id VARCHAR(10) PRIMARY KEY,
    publisher_name VARCHAR(100)
);
USE bookstore;

CREATE TABLE books (
    book_id VARCHAR(10) PRIMARY KEY,
    book_title VARCHAR(255),
    publisher_id VARCHAR(10),
    language_id VARCHAR(10),
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);


CREATE TABLE books_author (
    book_id VARCHAR(10),
    author_id VARCHAR(10),
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);
CREATE TABLE country (
    country_id VARCHAR(10) PRIMARY KEY,
    country_name VARCHAR(100)
);
CREATE TABLE address_status (
    status_id VARCHAR(10) PRIMARY KEY,
    status_name VARCHAR(50)
);

CREATE TABLE address (
    address_id VARCHAR(10) PRIMARY KEY,
    address_line1 VARCHAR(255),
    country_id VARCHAR(10),
    status_id VARCHAR(10),
    FOREIGN KEY (country_id) REFERENCES country(country_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_phone INT,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    gender VARCHAR(10)
);

CREATE TABLE customer_address (
    customer_id VARCHAR(10),
    address_id VARCHAR(10),
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE shipping_method (
    shippingMethod_id VARCHAR(10) PRIMARY KEY,
    method_name VARCHAR(50) NOT NULL
);

CREATE TABLE order_status (
    order_status_id VARCHAR(10) PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL
);

CREATE TABLE customer_order (
    order_id VARCHAR(10) PRIMARY KEY,
    shippingMethod_id VARCHAR(10) NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    order_status_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (shippingMethod_id) REFERENCES shipping_method(shippingMethod_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);

CREATE TABLE order_line (
    order_id VARCHAR(10),
    book_id VARCHAR(10),
    PRIMARY KEY (order_id, book_id),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


CREATE TABLE order_history (
    history_id VARCHAR(10) PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    timestamp DATETIME,
    order_status_id VARCHAR(10),
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);
SELECT CURRENT_USER();

