-- List all customers and their orders, including customers with no orders
SELECT 
    c.FullName, 
    o.OrderID 
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;
