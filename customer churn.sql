USE telco_churn;
SHOW TABLES;
USE telco_churn;

SELECT 
    SUM(Churn) AS Total_Churned,
    COUNT(*) AS Total_Customers,
    ROUND(SUM(Churn)/COUNT(*)*100, 2) AS Churn_Rate_Percent
FROM customers;


#Churn by Contract Type
SELECT Contract, 
    COUNT(*) AS Total_Customers,
    SUM(Churn) AS Churned,
    ROUND(SUM(Churn)/COUNT(*)*100, 2) AS Churn_Rate
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate DESC;