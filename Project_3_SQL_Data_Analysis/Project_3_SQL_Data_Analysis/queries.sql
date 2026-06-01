-- Project 3: SQL Data Analysis
-- Dataset: Cleaned E-commerce Orders
-- Table name used: ecommerce_orders

-- 1. View the first 10 records
SELECT *
FROM ecommerce_orders
LIMIT 10;

-- 2. Count the total number of orders
SELECT COUNT(*) AS total_orders
FROM ecommerce_orders;

-- 3. Calculate total revenue
SELECT SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders;

-- 4. Calculate average order value
SELECT AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders;

-- 5. Show orders with revenue above 1000
SELECT OrderID, CustomerID, Product, Quantity, UnitPrice, TotalPrice, OrderStatus
FROM ecommerce_orders
WHERE TotalPrice > 1000
ORDER BY TotalPrice DESC;

-- 6. Find total revenue by product
SELECT Product,
       COUNT(*) AS total_orders,
       SUM(Quantity) AS total_quantity_sold,
       SUM(TotalPrice) AS total_revenue,
       AVG(TotalPrice) AS average_revenue_per_order
FROM ecommerce_orders
GROUP BY Product
ORDER BY total_revenue DESC;

-- 7. Find number of orders by payment method
SELECT PaymentMethod,
       COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY PaymentMethod
ORDER BY total_orders DESC;

-- 8. Find order status distribution
SELECT OrderStatus,
       COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY OrderStatus
ORDER BY total_orders DESC;

-- 9. Find monthly revenue trend
SELECT Year,
       Month,
       Month_Name,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS monthly_revenue
FROM ecommerce_orders
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;

-- 10. Find yearly revenue
SELECT Year,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS yearly_revenue,
       AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY Year
ORDER BY Year;

-- 11. Compare coupon users and non-coupon users
SELECT Coupon_Used,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS total_revenue,
       AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY Coupon_Used
ORDER BY total_revenue DESC;

-- 12. Find revenue by referral source
SELECT ReferralSource,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS total_revenue,
       AVG(TotalPrice) AS average_order_value
FROM ecommerce_orders
GROUP BY ReferralSource
ORDER BY total_revenue DESC;

-- 13. Find best-selling products by quantity
SELECT Product,
       SUM(Quantity) AS total_quantity_sold
FROM ecommerce_orders
GROUP BY Product
ORDER BY total_quantity_sold DESC;

-- 14. Find products with average unit price above 300
SELECT Product,
       AVG(UnitPrice) AS average_unit_price
FROM ecommerce_orders
GROUP BY Product
HAVING AVG(UnitPrice) > 300
ORDER BY average_unit_price DESC;

-- 15. Find top 10 highest-value orders
SELECT OrderID,
       CustomerID,
       Product,
       Quantity,
       UnitPrice,
       TotalPrice,
       PaymentMethod,
       OrderStatus
FROM ecommerce_orders
ORDER BY TotalPrice DESC
LIMIT 10;

-- 16. Find cancelled orders
SELECT OrderID,
       CustomerID,
       Product,
       TotalPrice,
       PaymentMethod,
       OrderStatus
FROM ecommerce_orders
WHERE OrderStatus = 'Cancelled'
ORDER BY TotalPrice DESC;

-- 17. Find shipped orders only
SELECT OrderID,
       CustomerID,
       Product,
       TotalPrice,
       OrderStatus
FROM ecommerce_orders
WHERE OrderStatus = 'Shipped'
ORDER BY TotalPrice DESC;

-- 18. Find revenue by product and order status
SELECT Product,
       OrderStatus,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS total_revenue
FROM ecommerce_orders
GROUP BY Product, OrderStatus
ORDER BY Product, total_revenue DESC;

-- 19. Find average items in cart by referral source
SELECT ReferralSource,
       AVG(ItemsInCart) AS average_items_in_cart
FROM ecommerce_orders
GROUP BY ReferralSource
ORDER BY average_items_in_cart DESC;

-- 20. Find customers with more than one order
SELECT CustomerID,
       COUNT(*) AS number_of_orders,
       SUM(TotalPrice) AS total_spent
FROM ecommerce_orders
GROUP BY CustomerID
HAVING COUNT(*) > 1
ORDER BY total_spent DESC;
