# Food Delivery Performance Analysis

An end-to-end data analytics project exploring food delivery performance, late orders, and operational factors using **Python, SQL Server, and Power BI**.

## Project Overview

The goal of this project is to understand delivery delays and identify areas where a food delivery business could improve operations. The analysis covers 1,000 orders and compares delivery time across distance, traffic, weather, food preparation time, and courier experience.

## Tools Used

- **Python:** Pandas, Matplotlib, Seaborn
- **SQL Server:** Data validation, aggregation, and business analysis
- **Power BI:** KPI cards and operational dashboard

## Business Questions

1. What are the overall delivery performance KPIs?
2. How does delivery time vary by traffic level?
3. Which delivery-distance group has the longest average delivery time?
4. How do weather conditions relate to delivery time?
5. How are preparation time and courier experience associated with delivery performance?

## Key Metrics

| Metric | Result |
|---|---:|
| Orders analyzed | 1,000 |
| Average delivery time | 56.73 minutes |
| Median delivery time | 55.50 minutes |
| Orders taking more than 60 minutes | 415 |
| Late-delivery rate (over 60 minutes) | 41.50% |
| Average delivery distance | 10.06 km |
| Average preparation time | 16.98 minutes |

## Key Findings

- **Long-distance orders:** Orders over 10 km had an average delivery time of **71.24 minutes**. This group contained 511 orders and 376 orders taking more than 60 minutes.
- **Traffic:** Average delivery time was **64.81 minutes** in high traffic, compared with **52.89 minutes** in low traffic.
- **Weather:** Snowy conditions had the highest average delivery time at **67.11 minutes**; clear conditions averaged **53.15 minutes**.
- **Preparation time:** Orders with 21–30 minutes of preparation averaged **64.16 minutes** of delivery time, compared with **47.31 minutes** for orders prepared in 0–10 minutes.
- **Courier experience:** Orders handled by couriers with 0–1 years of experience averaged **60.37 minutes**, compared with **54.90 minutes** for couriers with 5+ years of experience.

These are observed associations in this dataset; they do not by themselves establish that any single factor causes delivery delays.

## Business Recommendations

1. Review delivery planning and service areas for orders over 10 km.
2. Consider traffic-aware route planning and realistic delivery estimates.
3. Prepare operational contingency plans for snowy and rainy weather.
4. Review restaurant preparation workflows to identify avoidable waiting time.
5. Provide route guidance and additional support for newer couriers.
6. Track the late-delivery rate regularly and compare performance across operating conditions.

## Project Workflow

1. Loaded the delivery dataset in Python.
2. Checked missing values and reviewed delivery-time statistics.
3. Explored delivery performance by traffic, distance, weather, preparation time, and courier experience.
4. Calculated business KPIs.
5. Exported the cleaned dataset for use in SQL Server and Power BI.
6. Wrote SQL queries to compare delivery performance across operational groups.
7. Built a Power BI dashboard with KPI cards and charts.

## Repository Contents

Suggested repository structure:

```text
food-delivery-performance-analysis/
├── README.md
├── Food_Delivery_Operations_Analysis.ipynb
├── food_delivery_cleaned.csv
├── sql_analysis.sql
├── Food_Delivery_Operations_Analysis.pbix
└── dashboard_screenshot.png
```

Add each file when available. If the Power BI file is too large for GitHub, include the dashboard screenshot and keep the `.pbix` file available separately.

## Dataset

The project dataset was sourced from the Food Delivery Time Prediction repository:

https://github.com/zakir-maswani/Food-Delivery-Time-Prediction

Please follow the dataset repository's license and usage terms when redistributing the data.

## How to Reproduce

1. Download or obtain the dataset from the source above.
2. Open `Food_Delivery_Operations_Analysis.ipynb` in Jupyter Notebook or Google Colab.
3. Run the notebook cells to reproduce the cleaning and analysis.
4. Import `food_delivery_cleaned.csv` into SQL Server and run the queries in `sql_analysis.sql`.
5. Open `Food_Delivery_Operations_Analysis.pbix` in Power BI Desktop to explore the dashboard.

## Future Improvements

- Compare late-delivery rates across multiple factors together.
- Add slicers for traffic, weather, vehicle type, and time of day.
- Analyze peak periods and vehicle performance.
- Connect Power BI directly to SQL Server for a refreshable reporting workflow.

---

**Project focus:** Data cleaning, exploratory data analysis, SQL business analysis, KPI development, and dashboard reporting.
