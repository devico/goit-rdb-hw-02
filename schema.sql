CREATE DATABASE IF NOT EXISTS goit_rdb_hw_02;
USE goit_rdb_hw_02;

CREATE TABLE customers (
    customer_name VARCHAR(100) NOT NULL,
    customer_address VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_name)
);

CREATE TABLE orders (
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (order_id),
    CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_name)
        REFERENCES customers(customer_name)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE order_items (
    order_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_name),
    CONSTRAINT fk_order_items_orders
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);