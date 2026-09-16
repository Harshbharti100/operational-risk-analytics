-- PHASE 21 — FINAL EXECUTIVE QUERY

SELECT
    COUNT(*) AS Total_Scenarios,
    COUNT(DISTINCT `Event_Type`) AS Event_Types,
    COUNT(DISTINCT `Process_Area`) AS Process_Areas,
    ROUND(
        SUM(`Loss_Amount_(kUSD)`),2) AS Total_Loss_kUSD,
    ROUND(
        AVG(`Loss_Amount_(kUSD)`),2) AS Average_Loss_kUSD,
    ROUND(
        MAX(`Loss_Amount_(kUSD)`),2) AS Maximum_Loss_kUSD,
    ROUND(
        AVG(`Severity_(Xi)`),2) AS Average_Severity,
    ROUND(
        AVG(`Frequency_(Nk)`),2) AS Average_Frequency,
    ROUND(
        AVG(`OpVar_(%)`),2) AS Average_OpVar,
    ROUND(
        AVG(`VIX`),2) AS Average_VIX,
    SUM(
        CASE
            WHEN `Loss_Outlier_Flag` = 'Potential Outlier'
            THEN 1
            ELSE 0
        END
    ) AS Potential_Outlier_Count,
    SUM(
        CASE
            WHEN `Data_Quality_Flag` = 'Review Required'
            THEN 1
            ELSE 0
        END
    ) AS Records_Requiring_Review
FROM operational_risk_events_clean;