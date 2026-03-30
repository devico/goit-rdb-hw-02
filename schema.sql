CREATE DATABASE IF NOT EXISTS goit_rdb_hw_02;
USE goit_rdb_hw_02;

CREATE TABLE orders (
    order_id INT NOT NULL,
    payment_status VARCHAR(10) NOT NULL,
    PRIMARY KEY (order_id)
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
