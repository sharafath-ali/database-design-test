--retrieve users with purchases in last 30 days
SELECT DISTINCT u.Name, u.Email
FROM Users u
JOIN Transactions t ON u.UserID = t.UserID
WHERE t.TransactionDate >= CURDATE() - INTERVAL 30 DAY;

--identify top 3 products by purchase frequency
SELECT p.Name, SUM(td.Quantity) AS TotalQuantity
FROM Products p
JOIN TransactionDetails td ON p.ProductID = td.ProductID
GROUP BY p.ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

--calculate revenue per product category
SELECT p.Category, SUM(td.Quantity * p.Price) AS TotalRevenue
FROM Products p
JOIN TransactionDetails td ON p.ProductID = td.ProductID
GROUP BY p.Category;

-- generate transaction summaries with item counts
SELECT t.TransactionID, t.TransactionDate, u.Name AS UserName, COUNT(td.ProductID) AS ItemCount
FROM Transactions t
JOIN TransactionDetails td ON t.TransactionID = td.TransactionID
JOIN Users u ON t.UserID = u.UserID
GROUP BY t.TransactionID;

--find users exceeding $500 in total purchases
SELECT u.Name, u.Email, SUM(td.Quantity * p.Price) AS TotalSpent
FROM Users u
JOIN Transactions t ON u.UserID = t.UserID
JOIN TransactionDetails td ON t.TransactionID = td.TransactionID
JOIN Products p ON td.ProductID = p.ProductID
GROUP BY u.UserID
HAVING TotalSpent > 500;
