-- Active: 1699777386631@@127.0.0.1@3306@assignment6

-- Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.

SELECT 
    c.name as Name, 
    c.email as Email, 
    c.location as Location, 
    COUNT(o.customer_id) as TotalOrder 
FROM 
    customers c 
JOIN 
    orders o ON c.id = o.customer_id 
GROUP BY 
    o.customer_id 
ORDER BY 
    TotalOrder DESC;