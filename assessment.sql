SELECT * FROM public.customers
ORDER BY customerid ASC 



SELECT o.OrderID, c.CustomerName, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;


SELECT p.ProductName, p.Price, o.OrderDate, c.CustomerName
FROM Products p
JOIN Orders o ON p.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID;


SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;


SELECT c.CustomerName, SUM(o.TotalAmount) AS TotalSales
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;


SELECT p.ProductName, p.Price
FROM Products p
ORDER BY p.Price DESC
LIMIT 1;


SELECT * FROM Orders WHERE TotalAmount > 500;


SELECT c.CustomerName, p.ProductName, p.Price
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON o.OrderID = p.OrderID
WHERE c.CustomerName = 'Customer_10';


SELECT c.CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


SELECT SUM(p.Price) AS TotalRevenue FROM Products p;


SELECT OrderDate, COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;



