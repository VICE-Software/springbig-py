-- Native Roots Member Status by Month (Sep 2024–May 2025)
-- ClickUp Ticket: CUST-7054
-- Merchant ID: 31196
-- Output: Monthly aggregates for Excel tabs as per requirements

WITH monthly_members AS (
    SELECT
        DATE_TRUNC('month', member_join_date) AS month,
        COUNT(*) AS total_members
    FROM members
    WHERE merchant_id = 31196
      AND member_join_date >= '2024-09-01'
      AND member_join_date < '2025-06-01'
    GROUP BY 1
),

sms_status AS (
    SELECT
        DATE_TRUNC('month', member_join_date) AS month,
        SUM(CASE WHEN allowed_sms = 'true' THEN 1 ELSE 0 END) AS allowed_sms,
        SUM(CASE WHEN allowed_sms = 'false' THEN 1 ELSE 0 END) AS sms_opted_out,
        SUM(CASE WHEN allowed_sms IS NULL OR allowed_sms = 'pending' THEN 1 ELSE 0 END) AS sms_pending
    FROM members
    WHERE merchant_id = 31196
      AND member_join_date >= '2024-09-01'
      AND member_join_date < '2025-06-01'
    GROUP BY 1
),

loyalty_status AS (
    SELECT
        DATE_TRUNC('month', member_join_date) AS month,
        SUM(CASE WHEN allowed_loyalty = 'true' THEN 1 ELSE 0 END) AS allowed_loyalty,
        SUM(CASE WHEN allowed_loyalty = 'false' THEN 1 ELSE 0 END) AS loyalty_opted_out,
        SUM(CASE WHEN allowed_loyalty IS NULL OR allowed_loyalty = 'pending' THEN 1 ELSE 0 END) AS loyalty_pending
    FROM members
    WHERE merchant_id = 31196
      AND member_join_date >= '2024-09-01'
      AND member_join_date < '2025-06-01'
    GROUP BY 1
),

push_status AS (
    SELECT
        DATE_TRUNC('month', member_join_date) AS month,
        SUM(CASE WHEN allowed_push = 'true' THEN 1 ELSE 0 END) AS allowed_push,
        SUM(CASE WHEN allowed_push = 'false' THEN 1 ELSE 0 END) AS push_opted_out,
        SUM(CASE WHEN allowed_push IS NULL OR allowed_push = 'pending' THEN 1 ELSE 0 END) AS push_pending
    FROM members
    WHERE merchant_id = 31196
      AND member_join_date >= '2024-09-01'
      AND member_join_date < '2025-06-01'
    GROUP BY 1
),

email_status AS (
    SELECT
        DATE_TRUNC('month', member_join_date) AS month,
        SUM(CASE WHEN allowed_email = 'true' THEN 1 ELSE 0 END) AS allowed_email,
        SUM(CASE WHEN allowed_email = 'false' THEN 1 ELSE 0 END) AS email_opted_out,
        SUM(CASE WHEN allowed_email IS NULL OR allowed_email = 'pending' THEN 1 ELSE 0 END) AS email_pending
    FROM members
    WHERE merchant_id = 31196
      AND member_join_date >= '2024-09-01'
      AND member_join_date < '2025-06-01'
    GROUP BY 1
)

SELECT
    m.month,
    m.total_members,
    s.allowed_sms, s.sms_opted_out, s.sms_pending,
    l.allowed_loyalty, l.loyalty_opted_out, l.loyalty_pending,
    p.allowed_push, p.push_opted_out, p.push_pending,
    e.allowed_email, e.email_opted_out, e.email_pending
FROM monthly_members m
LEFT JOIN sms_status s ON m.month = s.month
LEFT JOIN loyalty_status l ON m.month = l.month
LEFT JOIN push_status p ON m.month = p.month
LEFT JOIN email_status e ON m.month = e.month
ORDER BY m.month;
