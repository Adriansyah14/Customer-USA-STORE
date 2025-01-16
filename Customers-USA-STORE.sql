use ds;
select * FROM cust_data;

DELETE FROM cust_data
WHERE Gender IS NULL;

SELECT Gender, COUNT(*) AS Amount
FROM cust_data
GROUP BY Gender;

SELECT round(avg(Age), 0) AS Average_Age
FROM cust_data;

SELECT Age, COUNT(*) AS Total_Customer
FROM cust_data
GROUP BY Age
ORDER BY Total_Customer DESC
limit 10;

SELECT Payment_method, COUNT(*) AS Amount
FROM cust_data
GROUP BY Payment_method
ORDER BY Amount DESC;

SELECT State_names, COUNT(*) AS Transactions_Count
FROM cust_data 
GROUP BY State_names
ORDER BY Transactions_Count DESC;

select * FROM cust_data;

select State_names, round(avg(Amount_spent), 2) as Average_Spent
from cust_data
group by State_names
order by Average_Spent DESC
LIMIT 10;

select Segment, round(sum(Amount_spent), 2) Total_Revenue
from cust_data
group by Segment
order by Total_Revenue DESC;

select Marital_status, ROUND(AVG(Amount_spent), 2) AS Average_Spending
FROM cust_data
group by Marital_status 
order by Average_Spending DESC;

select * from cust_data;

select Referal, ROUND(AVG(Amount_spent), 2) as Average_Spending
from cust_data
group by Referal;

select segment, count(*) as Count_segment
from cust_data
group by Segment
order by Count_segment DESC;