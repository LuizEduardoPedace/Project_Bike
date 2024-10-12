# Introduction

In this project I made a dashboard for Toman Bike Share elucidating key performance metrics for informed decision-making.

Check the [Dashboard](https://app.powerbi.com/view?r=eyJrIjoiNWVlZGI0NzYtNzkzNS00NmI5LWJjNDctNWYyMWEwMWM1YzQ2IiwidCI6IjdlOTNlMjg2LWIyOWEtNDQ1NC1hNDFhLWU4NDE5ZWM5ZGViNSJ9) 📊

## Requirements
- Hourly Revenue Analysis;
- Profit and Revenue Trends;
- Seasonal Revenue;
- Rider Demographics.

# Tools I Used

- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.
- **Power BI:** The cornerstone of my data visualization efforts, enabling me to transform raw data into actionable insights through interactive reports and dashboards.
- **Power Query:** The engine behind my data transformation, allowing me to clean, shape, and merge various data sources before analysis.
- **DAX (Data Analysis Expressions):** My toolset for creating advanced calculations and measures within Power BI, adding depth to the analysis.

# The Analysis

Let's now answer some questions related to profitability performance using the dashboard tool and manipulated data.

## 1. Which year was the most profitable?

By the dashboard we can find out that the year **2022** had a profit of **$7,03 Mi**, more than double that of the year 2021. We can see that the number of riders is double that of the previous year, revealing that the company has seen a considerable increase in its number of consumers.

When comparing the types of riders, registered riders predominate over the casual type.

![Dashboard2021](/assets/dashboard%202021.PNG)
*Screenshot of Dashboard of the 2021 year*

![Dashboard2022](/assets/dashboard%202022.PNG)
*Screenshot of Dashboard of the 2022 year*

## 2. Which season was the most profitable?

We can see from the images above that season **3** was the most profitable of each year, with a profit of **$1,67 Mi** in 2021 and **$3,20 Mi** in 2022. Season **1** was the smallest, with a total profit of **$0,60 Mi** in 2021 and **$1,60 Mi** in 2022.

## 3. What type of rider predominates in the season that yields the most profit?

We can see by the dashboard that **registered** riders predominates in season 3 with **24.92%** of the total riders of 2022 and in season 1 with **13.77%**.

Registered riders predominate over casual riders in all seasons of the year, revealing that they are responsible for the majority of profitability.

![Q3](/assets/Q3.PNG)
*Screenshot of Dashboard of the 2022 year in the most profitable season*

![Q3_2](/assets/Q3_2.PNG)
*Screenshot of Dashboard of the 2022 year in the lowest profitability season*

### 4. What percentage of the total profit does the predominant rider account for?

For this analysis, I only needed to consider the table for data from the year 2022. In addition, it was necessary to filter for only registered riders, calculate their total profitability and divide it by the profitability of the year.

 We find that registered riders are responsible for **82%** of the total profit in 2022. If any marketing strategy is implemented, it should definitely have registered riders as its main attraction.
```sql
SELECT
    ROUND(SUM(CASE WHEN rider_type = 'registered' THEN riders*price - COGS*riders ELSE 0 END)::NUMERIC/SUM(riders*price - COGS*riders)::NUMERIC,2)*100 AS Percentage
FROM bike_share_yr_1 AS cte
LEFT JOIN cost_table ON cte.yr = cost_table.yr
```

### 5. What type of rider predominates in the most profitable hour?

By Dashboard is easy to answer this question. The most profitable hour in 2022 was **5 pm**. with a total profit of **$717,65** and **registered** riders predominates in this hour with **8.61%** of the total riders of 2022.

The hours around (4 pm, 5 pm, 7 pm) are also very profitable.

![Q5](/assets/Q5.PNG)
*Screenshot of Dashboard of the 2022 year in the most profitable hour*

# Conclusion

The company has seen significant growth in customer numbers in 2022, generating more than double the profits from last year. Season 3 is the most profitable of the year, with the time slot around 5 pm having the highest number of customers. Most of the riders are registered riders, generating the majority of revenue.

It is recommended that the marketing strategy follows a similar logic to that used and due to the predominance of registered riders, an increase in price so as not to lose customers is in good taste.