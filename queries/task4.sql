-- Active: 1699777386631@@127.0.0.1@3306@assignment6

-- Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT 
    c.name as Name,
    SUM(oi.quantity * oi.unit_price) as Total_Purchase
FROM 
    customers c 
JOIN 
    orders o ON c.id=o.customer_id 
JOIN 
    order_items oi ON o.id=oi.order_id 
GROUP BY 
    c.id 
ORDER BY 
    Total_Purchase DESC 
LIMIT 5;