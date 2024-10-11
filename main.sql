WITH cte AS (
SELECT *
FROM bike_share_yr_0
UNION
SELECT *
FROM bike_share_yr_1
)

SELECT
    dteday,
    season,
    cte.yr,
    weekday,
    hr,
    rider_type,
    riders,
    price,
    COGS,
    riders*price AS revenue,
    riders*price - COGS*riders AS profit
FROM cte
LEFT JOIN cost_table ON cte.yr = cost_table.yr

-- Q4
SELECT
    ROUND(SUM(CASE WHEN rider_type = 'registered' THEN riders*price - COGS*riders ELSE 0 END)::NUMERIC/SUM(riders*price - COGS*riders)::NUMERIC,2)*100 AS Percentage
FROM bike_share_yr_1 AS cte
LEFT JOIN cost_table ON cte.yr = cost_table.yr