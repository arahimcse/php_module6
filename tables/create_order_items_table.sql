-- Active: 1699777386631@@127.0.0.1@3306@assignment6

-- Order_Items: Contains information about the individual items included in each order, such as order item ID, order ID, product ID, quantity, and unit price.


CREATE TABLE `order_items`(
`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`quantity` int(20) UNSIGNED NOT NULL,
`unit_price` INT(10) UNSIGNED not NULL,
`order_id` BIGINT(20) UNSIGNED NOT NULL,
`product_id` BIGINT(20) UNSIGNED NOT NULL,
FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
)