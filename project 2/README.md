# E-Commerce Orders Data Analysis

## Project Overview

This project analyzes an e-commerce orders dataset containing **1,200 customer orders**. The analysis explores order status distribution, revenue performance, product performance, referral sources, payment methods, seasonal sales trends, coupon impact, and high-value outliers.

The workbook was structured into five main sections:

- **Raw Data** – original order-level dataset
- **Basic Statistics** – summary statistics for numerical variables
- **Trends Analysis** – monthly order and revenue patterns
- **Outliers** – high-value order detection using the IQR method
- **Summary** – key findings and business insights

---

## Dataset Description

The dataset contains order records with the following variables:

| Column | Description |
|---|---|
| `OrderID` | Unique order identification number |
| `Date` | Date the order was placed |
| `CustomerID` | Unique customer identification number |
| `Product` | Product purchased by the customer |
| `Quantity` | Number of product units ordered |
| `UnitPrice` | Price per unit of the product |
| `ShippingAddress` | Customer shipping address |
| `PaymentMethod` | Payment option used by the customer |
| `OrderStatus` | Status of the order, such as delivered, cancelled, returned, shipped, or pending |
| `TrackingNumber` | Shipment tracking number |
| `ItemsInCart` | Number of items in the customer's cart |
| `CouponCode` | Coupon code used, if any |
| `ReferralSource` | Channel that referred the customer |
| `TotalPrice` | Total order value, calculated from quantity and unit price |

---

## Tools Used

- **Microsoft Excel**
- Descriptive statistics
- Pivot-style summaries
- Monthly trend analysis
- IQR outlier detection
- Business insight interpretation

---

## Analysis Performed

### 1. Basic Statistics

Summary statistics were calculated for key numerical variables, including:

- Unit price
- Quantity
- Total price
- Items in cart

Key statistical measures included:

- Count
- Mean
- Median

### 2. Revenue Analysis

Total revenue across the 1,200 orders was approximately **$1.26 million**.

The average order value was approximately **$1,054**, showing that customers generally placed moderately high-value orders. However, the high variation in order values suggests that some customers placed much larger orders than others.

### 3. Product Analysis

The analysis showed that:

- **Printer** recorded the highest order volume with **181 orders**.
- **Tablet** followed closely with **179 orders**.
- **Laptop** had the highest average order value at approximately **$1,111**.
- **Phone** had the lowest average order value at approximately **$973**.

### 4. Order Status Analysis

Orders were almost evenly distributed across five order statuses. However, cancelled and returned orders were a major concern.

- Cancelled orders accounted for approximately **20.8%**.
- Returned orders accounted for approximately **20.6%**.
- Together, cancelled and returned orders represented about **41.4%** of all orders.

This indicates a possible issue with product satisfaction, delivery process, customer expectations, or order fulfilment.

### 5. Referral Source Analysis

The main referral sources were:

- Instagram
- Email
- Google
- Facebook
- Referral program

Instagram generated the highest number of orders with **259 orders**, representing approximately **21.6%** of total orders. Email and Google also performed strongly, while the referral program produced the least number of orders.

### 6. Payment Method Analysis

The dataset showed diverse customer payment preferences. Online payments had the highest usage with **258 orders**, representing approximately **21.5%** of total orders.

Other payment methods were also used at similar levels, showing that customers prefer having multiple payment options.

### 7. Seasonal Trend Analysis

Monthly trend analysis was carried out to study order volume, revenue, average order value, and month-over-month revenue change.

Revenue peaks were observed in:

- **May 2023**
- **June 2024**
- **June 2025**

Revenue dips were observed around **April** and **September**. Overall, the year-over-year pattern showed relatively stable demand.

### 8. Outlier Detection

Outliers were detected using the **Interquartile Range (IQR) method** on the `TotalPrice` variable.

The outlier rule used was:

```text
IQR = Q3 - Q1
Lower Fence = Q1 - 1.5 × IQR
Upper Fence = Q3 + 1.5 × IQR
```

The calculated values were:

| Measure | Value |
|---|---:|
| Q1 | 410.52 |
| Q3 | 1,578.48 |
| IQR | 1,167.96 |
| Lower Fence | -1,341.41 |
| Upper Fence | 3,330.41 |

A total of **8 high-value outliers** were identified. These orders had total prices between **$3,334** and **$3,456**. Most of them were premium product orders with a quantity of 5.

### 9. Coupon Impact Analysis

Coupon users had a slightly higher average order value than non-coupon users:

- Coupon users: approximately **$1,058**
- Non-coupon users: approximately **$1,043**

This suggests that coupon usage did not reduce basket size. Instead, coupons may have encouraged customers to place slightly higher-value orders.

---

## Key Findings

- Total revenue was approximately **$1.26 million** from **1,200 orders**.
- Average order value was approximately **$1,054**.
- Printer and Tablet were the most frequently ordered products.
- Laptop generated the highest average order value.
- Cancelled and returned orders together accounted for about **41.4%** of all orders.
- Instagram was the strongest referral source.
- Online payment was the most used payment method.
- Revenue peaks occurred in May 2023, June 2024, and June 2025.
- Eight high-value outliers were detected using the IQR method.
- Coupon users had slightly higher average order values than non-coupon users.

---

## Business Recommendations

1. **Reduce cancellations and returns**  
   The business should investigate why cancelled and returned orders are high. Possible areas to review include delivery delays, product quality, customer expectations, and refund policies.

2. **Strengthen Instagram marketing**  
   Since Instagram produced the highest number of orders, more advertising and customer engagement campaigns should be focused on this channel.

3. **Improve referral program performance**  
   The referral program had the lowest order contribution. The business can improve this by offering better referral rewards or promoting the program more clearly.

4. **Promote high-value products**  
   Products such as laptops should receive more attention because they generate higher average order values.

5. **Use coupons strategically**  
   Since coupon users showed slightly higher average order values, coupons can be used to encourage larger purchases without significantly reducing revenue.

6. **Monitor high-value outliers**  
   High-value orders should be reviewed to understand whether they represent bulk purchases, loyal customers, or unusual transactions.

---

## Repository Structure

```text
├── Decode_Project 2.xlsx      # Excel workbook containing the full analysis
├── README.md                  # Project documentation
```

---

