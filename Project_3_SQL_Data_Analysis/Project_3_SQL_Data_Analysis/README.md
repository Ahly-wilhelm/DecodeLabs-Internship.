# Project 3: SQL Data Analysis

## Project Goal
The goal of this project is to use SQL queries to extract useful business insights from a cleaned e-commerce order dataset.

## Dataset Description
The dataset contains customer order records from January 2023 to June 2025. It includes product details, pricing information, order status, payment method, coupon usage, and referral source.

## Table Name
For this project, the dataset table is named:

```sql
ecommerce_orders
```

## Columns Used
- `OrderID`
- `CustomerID`
- `TrackingNumber`
- `Date`
- `Year`
- `Month`
- `Month_Name`
- `Product`
- `Quantity`
- `UnitPrice`
- `TotalPrice`
- `ShippingAddress`
- `PaymentMethod`
- `OrderStatus`
- `ItemsInCart`
- `CouponCode`
- `ReferralSource`
- `Coupon_Used`

## Key SQL Skills Demonstrated
- SELECT queries
- Filtering with WHERE
- Sorting with ORDER BY
- Grouping with GROUP BY
- Aggregations using COUNT, SUM, and AVG
- Business insight generation from data

## Business Questions Answered
1. How many total orders are in the dataset?
2. What is the total revenue generated?
3. What is the average order value?
4. Which products generated the highest revenue?
5. Which payment method was used most frequently?
6. What is the order status distribution?
7. Which months generated the highest revenue?
8. How much revenue came from coupon users compared to non-coupon users?
9. Which referral sources generated the highest number of orders?
10. What are the top high-value orders?

## Sample SQL Queries
The complete SQL queries are available in [`queries.sql`](queries.sql).

## Example Insight Summary
Based on the analysis, this project can help identify the best-performing products, most common payment methods, revenue trends over time, customer coupon behavior, and marketing channels that bring in the most orders.

## Tools Used
- SQL
- SQLite / MySQL / PostgreSQL
- Microsoft Excel
- GitHub

## How to Use This Project
1. Import the cleaned Excel/CSV dataset into a SQL database.
2. Name the table `ecommerce_orders`.
3. Run the queries in `queries.sql`.
4. Review the output tables and summarize the business insights.

## Conclusion
This project demonstrates basic SQL data analysis skills by using filtering, sorting, grouping, and aggregation to answer practical business questions from an e-commerce dataset.
