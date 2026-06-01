-- Suggested SQL table structure for the cleaned e-commerce dataset

CREATE TABLE ecommerce_orders (
    OrderID VARCHAR(20),
    CustomerID VARCHAR(20),
    TrackingNumber VARCHAR(30),
    Date DATE,
    Year INT,
    Month INT,
    Month_Name VARCHAR(20),
    Product VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(100),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    Coupon_Used VARCHAR(10)
);
