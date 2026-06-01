import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter
from pathlib import Path

input_path = "Dataset_Cleaned (1).xlsx"
output_dir = Path("visuals")
output_dir.mkdir(exist_ok=True)

raw = pd.read_excel(input_path, sheet_name="Cleaned Data", header=None)
headers = raw.iloc[1].tolist()
df = raw.iloc[2:].copy()
df.columns = headers

df["Date"] = pd.to_datetime(df["Date"])
for col in ["Year", "Month", "Quantity", "UnitPrice", "TotalPrice", "ItemsInCart"]:
    df[col] = pd.to_numeric(df[col], errors="coerce")

def money_fmt(x, pos=None):
    return f"${x/1000:.0f}K" if abs(x) >= 1000 else f"${x:.0f}"

revenue_by_product = df.groupby("Product")["TotalPrice"].sum().sort_values(ascending=True)
payment_counts = df["PaymentMethod"].value_counts().sort_values(ascending=True)
referral_counts = df["ReferralSource"].value_counts().sort_values(ascending=True)
order_status_counts = df["OrderStatus"].value_counts().sort_values(ascending=True)
monthly_revenue = df.groupby(pd.Grouper(key="Date", freq="M"))["TotalPrice"].sum().reset_index()
coupon_counts = df["Coupon_Used"].value_counts()

# Revenue by product
fig, ax = plt.subplots(figsize=(9, 5))
revenue_by_product.plot(kind="barh", ax=ax)
ax.set_title("Revenue by Product")
ax.set_xlabel("Revenue")
ax.xaxis.set_major_formatter(FuncFormatter(money_fmt))
plt.tight_layout()
plt.savefig(output_dir / "revenue_by_product.png", dpi=180)
plt.close(fig)

# Monthly revenue trend
fig, ax = plt.subplots(figsize=(10, 5))
ax.plot(monthly_revenue["Date"], monthly_revenue["TotalPrice"], marker="o")
ax.set_title("Monthly Revenue Trend")
ax.set_xlabel("Month")
ax.set_ylabel("Revenue")
ax.yaxis.set_major_formatter(FuncFormatter(money_fmt))
plt.tight_layout()
plt.savefig(output_dir / "monthly_revenue_trend.png", dpi=180)
plt.close(fig)

# Payment method
fig, ax = plt.subplots(figsize=(7, 5))
payment_counts.plot(kind="barh", ax=ax)
ax.set_title("Orders by Payment Method")
ax.set_xlabel("Orders")
plt.tight_layout()
plt.savefig(output_dir / "orders_by_payment_method.png", dpi=180)
plt.close(fig)

# Referral source
fig, ax = plt.subplots(figsize=(7, 5))
referral_counts.plot(kind="barh", ax=ax)
ax.set_title("Top Referral Sources")
ax.set_xlabel("Orders")
plt.tight_layout()
plt.savefig(output_dir / "top_referral_sources.png", dpi=180)
plt.close(fig)

# Order status
fig, ax = plt.subplots(figsize=(7, 5))
order_status_counts.plot(kind="barh", ax=ax)
ax.set_title("Order Status Breakdown")
ax.set_xlabel("Orders")
plt.tight_layout()
plt.savefig(output_dir / "order_status_breakdown.png", dpi=180)
plt.close(fig)

# Coupon pie chart
fig, ax = plt.subplots(figsize=(6, 6))
ax.pie(coupon_counts.values, labels=coupon_counts.index, autopct="%1.1f%%", startangle=90)
ax.set_title("Coupon Usage Share")
plt.tight_layout()
plt.savefig(output_dir / "coupon_usage_pie.png", dpi=180)
plt.close(fig)
