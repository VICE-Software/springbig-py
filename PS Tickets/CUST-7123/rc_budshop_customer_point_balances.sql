-- RC Budshop – Customer Export with Point Balance
-- Ticket: CUST-7123
-- Merchant ID: 11471
-- Fecha de generación: 2025-06-16

-- Notas:
-- 1. Asegúrate de revisar los tipos de datos y los nombres exactos de columnas en la base de datos de RC Budshop.
-- 2. Si alguna columna no existe, consulta el DDL o ajusta el query según corresponda.
-- 3. Este query exporta todos los clientes y su balance de puntos a la fecha de ejecución.

--Ejemplo:
/*
CUST-2329
REQUIREMENTS:
Generate a One Time Report for Terrapin - 2714 containing all their members along with point balances for each member
Merchant ID: 2714

Timeframe: Lifetime
All Terrapin members

DELIVERABLES:
One Time Member export report showing point balances
Standard Member list headers, with Point balance
*/

WITH points_balance AS (
    SELECT
        member_id,
        SUM(
            CASE
                WHEN points_earned IS NOT NULL THEN CAST(points_earned AS INTEGER)
                WHEN deduct_points IN ('true', 't', 'yes', 'y', '1') THEN -1
                ELSE 0
            END
        ) AS current_point_balance
    FROM
        (
            SELECT
                member_id,
                points_earned,
                NULL AS deduct_points
            FROM
                springbig_production_dms.transaction_details
            WHERE
                merchant_id = 11471
            UNION ALL
            SELECT
                member_id,
                NULL AS points_earned,
                deduct_points
            FROM
                springbig_production_dms.transaction_reward_redemptions
            WHERE
                merchant_id = 11471
        ) AS points_transactions
    GROUP BY
        member_id
)
SELECT
    m.merchant_id,
    m.id AS "Member ID",
    m.first_name AS "First Name",
    m.last_name AS "Last Name", 
    m.phone_number AS "Phone Number",
    m.email AS "Email",
    CASE WHEN m.allowed_sms = 'true' THEN 'Yes' ELSE 'No' END AS "SMS Allowed",
    CASE WHEN m.allowed_email = 'true' THEN 'Yes' ELSE 'No' END AS "Email Allowed",
    COALESCE(pb.current_point_balance, 0) AS "Point Balance",
    TO_CHAR(m.created_at, 'YYYY-MM-DD HH24:MI:SS') AS "Join Date"
FROM
    springbig_production_dms.members m
    LEFT JOIN points_balance pb ON m.id = pb.member_id
WHERE
    m.merchant_id = 11471
ORDER BY
    "Member ID" DESC;