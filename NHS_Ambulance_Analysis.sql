-- NHS Ambulance Response Times, England (Apr 2025 - Oct 2026)
-- Data: NHS England Ambulance Quality Indicators (AmbSYS)
-- Key findings:
-- England Category 2 average was 32.7 mins in Oct 2026 vs 25 min interim target (18 min standard)
-- 0 of 11 trusts met the 18 min standard; only North East and North West met the 25 min target
-- East of England slowest region (45.2 mins); North West fastest (24.8 mins)
-- Worst month Jan 2026 (35.1 mins); best Apr 2026 (24.4 mins)
-- Year on year: South Western got 7.8 mins slower; West Midlands improved by 6.5 mins



SELECT COUNT(*) FROM ambulance_response;

SELECT trust_name, c2_mean_secs
FROM ambulance_response
WHERE year_no = 2026 AND month_no = 10;

SELECT trust_name,
ROUND(c2_mean_secs / 60, 1) AS c2_mean_mins
FROM ambulance_response
WHERE year_no = 2026 AND month_no = 10
ORDER BY c2_mean_mins DESC;

SELECT ROUND(SUM(c2_mean_secs * c2_incidents) / SUM(c2_incidents) / 60, 1) AS england_c2_mins
FROM ambulance_response
WHERE year_no = 2026 AND month_no = 10;

SELECT region,
ROUND(SUM(c2_mean_secs * c2_incidents) / SUM(c2_incidents) / 60, 1) AS c2_mean_mins
FROM ambulance_response
WHERE year_no = 2026 AND month_no = 10
GROUP BY region
ORDER BY c2_mean_mins DESC;

SELECT year_no, month_no,
ROUND(SUM(c2_mean_secs * c2_incidents) / SUM(c2_incidents) / 60, 1) AS england_c2_mins
FROM ambulance_response
GROUP BY year_no, month_no
ORDER BY year_no, month_no;

SELECT trust_name,
ROUND(c2_mean_secs / 60, 1) AS c2_mean_mins,
CASE WHEN c2_mean_secs <= 1080 THEN 'Green - met 18 min standard'
WHEN c2_mean_secs <= 1500 THEN 'Amber - met 25 min interim target'
ELSE 'Red - missed both targets' END AS performance_rag
FROM ambulance_response
WHERE year_no = 2026 AND month_no = 10
ORDER BY c2_mean_secs DESC;

WITH oct25 AS (
SELECT org_code, c2_mean_secs FROM ambulance_response
WHERE year_no = 2025 AND month_no = 10),
oct26 AS (
SELECT org_code, trust_name, c2_mean_secs FROM ambulance_response
WHERE year_no = 2026 AND month_no = 10)
SELECT b.trust_name,
ROUND(a.c2_mean_secs / 60, 1) AS oct_2025_mins,
ROUND(b.c2_mean_secs / 60, 1) AS oct_2026_mins,
ROUND((b.c2_mean_secs - a.c2_mean_secs) / 60, 1) AS change_mins
FROM oct25 a
JOIN oct26 b ON a.org_code = b.org_code
ORDER BY change_mins DESC;