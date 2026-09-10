SELECT 
    month_name,
    AVG(monthly_total) AS avg_revenue
FROM (
    SELECT 
        year,
        month_name,
        SUM(total_amount_inr) AS monthly_total
    FROM fmcg.gold.vw_fact_orders_enriched
    GROUP BY year, month_name
) monthly_breakdown
GROUP BY month_name;
