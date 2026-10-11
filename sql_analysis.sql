create database FoodDeliveryAnalysis;

use FoodDeliveryAnalysis;

SELECT COUNT(*) AS Total_Orders
FROM dbo.FoodDelivery;

SELECT TOP 10 *
FROM dbo.FoodDelivery;

--Overall delivery Performance
SELECT
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time,
    SUM(CASE
        WHEN Delivery_Time_min > 60 THEN 1
        ELSE 0
    END) AS Late_Orders,
    ROUND(
        100.0 * SUM(CASE
            WHEN Delivery_Time_min > 60 THEN 1
            ELSE 0
        END) / COUNT(*), 2
    ) AS Late_Delivery_Percentage
FROM dbo.FoodDelivery;

--Average Delivery time by traffic
SELECT
    Traffic_Level,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time,
    SUM(CASE
        WHEN Delivery_Time_min > 60 THEN 1
        ELSE 0
    END) AS Late_Orders
FROM dbo.FoodDelivery
GROUP BY Traffic_Level
ORDER BY Avg_Delivery_Time DESC;

--Delivery Performance by distance
SELECT
    Distance_Group,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time,
    SUM(CASE
        WHEN Delivery_Time_min > 60 THEN 1
        ELSE 0
    END) AS Late_Orders
FROM dbo.FoodDelivery
GROUP BY Distance_Group
ORDER BY Avg_Delivery_Time DESC;

--Delivery Performance by weather
SELECT
    Weather,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time
FROM dbo.FoodDelivery
GROUP BY Weather
ORDER BY Avg_Delivery_Time DESC;

--Delivery performace by Courier Experience
SELECT
    Experience_Group,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time,
    SUM(CASE
        WHEN Delivery_Time_min > 60 THEN 1
        ELSE 0
    END) AS Late_Orders
FROM dbo.FoodDelivery
GROUP BY Experience_Group
ORDER BY Avg_Delivery_Time DESC;

--Delivery Performance by Preperation time
SELECT
    Preparation_Group,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time,
    SUM(CASE
        WHEN Delivery_Time_min > 60 THEN 1
        ELSE 0
    END) AS Late_Orders
FROM dbo.FoodDelivery
GROUP BY Preparation_Group
ORDER BY Avg_Delivery_Time DESC;
