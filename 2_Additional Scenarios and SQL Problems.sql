-- 1. Retrieve all orders placed by a specific customer (e.g., CustomerID = 3)
SELECT o.OrderID, o.OrderDate, o.TotalAmount
FROM Orders o
WHERE o.CustomerID = 3;


-- 2. Find the top 5 best-selling products
SELECT p.ProductID, p.Name, SUM(od.Quantity) AS TotalSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalSold DESC
LIMIT 5;


-- 3. Calculate the total sales for each product category
SELECT c.CategoryID, c.CategoryName, SUM(od.Quantity * p.Price) AS TotalSales
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName
ORDER BY TotalSales DESC;

-- 4. Identify customers who have made purchases above $500
SELECT c.CustomerID, c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
HAVING TotalSpent > 500
ORDER BY TotalSpent DESC;
