SELECT * FROM stg_Churn

SELECT Gender, COUNT(Gender) AS TotalCount,
COUNT(Gender) * 100.0 / (SELECT Count(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Gender

SELECT Contract, COUNT(Contract) AS TotalCount,
COUNT(Contract) * 1.0 / (SELECT Count(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Contract

SELECT Customer_Status, COUNT(Customer_Status) AS TotalCount, Sum(Total_Revenue) AS TotalRev,
Sum(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM Stg_Churn) * 100 AS RevPercentage
FROM Stg_Churn
GROUP BY Customer_Status

SELECT State, COUNT(State) AS TotalCount,
Count(State) * 100.0 / (SELECT COUNT(*) FROM Stg_Churn) AS Percentage
FROM Stg_Churn
GROUP BY State
ORDER BY Percentage DESC

SELECT Distinct Internet_Type
FROM stg_Churn
