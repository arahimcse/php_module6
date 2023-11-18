-- Active: 1699777386631@@127.0.0.1@3306@assignment6

-- Orders: Contains information about the orders placed by customers, such as order ID, customer ID, order date, and total amount.

CREATE TABLE `orders`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_date` DATE NOT NULL,
    `total_amount` INT(10) NOT NULL,
    `customer_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    Foreign Key (`customer_id`) REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE  
)