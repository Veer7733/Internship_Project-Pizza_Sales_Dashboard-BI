# Internship_Project-Pizza_Sales_Dashboard-BI

# 🍕 Pizza Sales Performance Analysis & Dashboard  
**Power BI | SQL | Excel | Business Intelligence**

This project analyzes one year of pizza sales data using *SQL and Power BI* to identify business performance trends and improve operational efficiency. The goal is to provide management at **Plato’s Pizza**, a pizza business in New Jersey, with insights to enhance decision-making related to menu optimization, staffing, and sales strategy.

---

## Project Objectives

- Analyze and visualize pizza sales transaction data.
- Identify best- and worst-performing menu items.
- Determine peak sales periods by day and time.
- Evaluate average order behavior and restaurant efficiency.
- Provide actionable recommendations to improve revenue and operations.

---

## Key Performance Indicators (KPIs)

The dashboard highlights the following metrics:

| KPI | Description |
|-----|-------------|
| **Total Revenue** | Total income generated from pizza sales |
| **Total Orders** | Number of unique customer orders |
| **Total Pizzas Sold** | Quantity of pizzas purchased |
| **Average Order Value (AOV)** | Revenue per order |
| **Average Pizzas Per Order** | Quantity per transaction |

KPIs were calculated using SQL queries prior to dashboard creation.

---

## Dataset Overview

The dataset includes **transaction-level details** linked to pizza type, size, pricing, and order timelines.

| Field | Description |
|-------|-------------|
| `order_id` | Unique order identifier |
| `pizza_id` | Pizza reference key |
| `quantity` | Number of pizzas in the order |
| `order_date`, `order_time` | Date and time of purchase |
| `unit_price`, `total_price` | Pricing details |
| `pizza_size` | S / M / L / XL / XXL |
| `pizza_name` | Menu item |
| `pizza_category` | Classified group (e.g., Classic, Veggie) |

SQL was used to extract KPIs, distribution metrics, and sales classification (e.g., best sellers). 

---

## Tools & Technologies

| Category | Tools |
|----------|------|
| Data Processing | SQL Server |
| Dashboarding | Power BI |
| Data Preparation | Excel |
| Business Focus | Sales & Customer Analytics |

---

## Analytical Approach

1. **Data Exploration & Cleaning**  
   - Verified nulls, cleaned pricing and timestamp formats using Excel.
   - Standardized date/time fields for trend analysis.

2. **SQL Analysis**  
   - Calculated revenue-based KPIs.
   - Identified best and worst performers.
   - Derived daily and monthly sales trends.
   - Segmented sales by pizza size and category. 

3. **Dashboard Development (Power BI)**  
   - Created interactive visualizations with filters for date, size, and category.
   - Built KPI cards and trend visuals.
   - Designed drill-down capability for performance review.

4. **Insight Interpretation & Strategy Reporting**

---

## Business Insights (Strategic Summary)

| Insight | Action Recommendation |
|---------|------------------------|
| Peak demand during lunch (1–2 PM) and dinner (7–9 PM) | Schedule staff accordingly |
| Highest sales on Friday and Saturday | Increase social promotions |
| Large-sized pizzas contributed most to revenue | Promote L-size bundles |
| “The Thai Chicken” and “Barbecue Chicken” are top sellers | Create combo deals |
| Some pizzas showed low sales (e.g., Spinach Supreme) | Consider rebranding or removal |
| Consistent order size suggests stable customer behavior | Introduce upselling add-ons |

---

## Dashboard Features

✔ Dynamic filtering by pizza category, size, and date range  
✔ Hourly, daily, and monthly sales trend graphs  
✔ KPI cards highlighting financial and behavioral metrics  
✔ Best/worst pizza performance analysis  
✔ Visual segmentation of orders by size and category  



