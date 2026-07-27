-- DecodeLabs Project 3 SQL
CREATE DATABASE IF NOT EXISTS DecodeLabs_Project3;
USE DecodeLabs_Project3;

-- Replace 'orders' with your imported table name if different.
SELECT * FROM orders;
SELECT COUNT(*) AS TotalOrders FROM orders;
SELECT SUM(TotalPrice) AS TotalSales FROM orders;
SELECT AVG(TotalPrice) AS AverageOrderValue FROM orders;
SELECT * FROM orders WHERE OrderStatus='Delivered';
SELECT PaymentMethod, COUNT(*) AS Orders FROM orders GROUP BY PaymentMethod ORDER BY Orders DESC;
SELECT Product, SUM(TotalPrice) AS TotalSales FROM orders GROUP BY Product ORDER BY TotalSales DESC;
SELECT Product, AVG(Quantity) AS AvgQuantity FROM orders GROUP BY Product;
SELECT * FROM orders ORDER BY TotalPrice DESC;
SELECT * FROM orders WHERE CouponCode IS NOT NULL AND CouponCode<>'';
SELECT OrderStatus, COUNT(*) AS Total FROM orders GROUP BY OrderStatus;
SELECT ReferralSource, COUNT(*) AS Total FROM orders GROUP BY ReferralSource ORDER BY Total DESC;
SELECT SUM(Quantity) AS TotalQuantity FROM orders;
SELECT * FROM orders ORDER BY TotalPrice DESC LIMIT 5;
SELECT Product, COUNT(*) AS TotalOrders FROM orders GROUP BY Product HAVING COUNT(*)>5;
