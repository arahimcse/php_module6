-- Active: 1699777386631@@127.0.0.1@3306@assignment6

-- Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

SELECT 
    p.name as Name, 
    oi.quantity as Quantity, 
    oi.unit_price*oi.quantity as Total_Amount 
FROM 
    orders o 
JOIN 
    order_items oi ON o.id=oi.order_id
JOIN 
    products p ON p.id=oi.product_id 
ORDER BY 
    o.id ASC;