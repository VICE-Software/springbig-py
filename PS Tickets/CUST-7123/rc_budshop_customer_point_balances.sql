-- RC Budshop – Customer Export with Point Balance
-- Ticket: CUST-7123
-- Merchant ID: 11471
-- Fecha de generación: 2025-06-16

SELECT
    m.merchant_id,
    m.id AS member_id,
    m.first_name,
    m.last_name,
    m.address,
    m.city,
    m.state,
    m.zip_code,
    m.med_rec,
    m.opt_out_date,
    m.total_spend,
    m.subscriber_number,
    m.email,
    m.allowed_loyalty,
    m.allowed_sms,
    m.allowed_email,
    m.allow_push_notifications,
    m.pin_code_status,
    m.join_date,
    m.last_visit_date,
    m.total_number_of_visits,
    m.primary_location,
    m.pos_user,
    m.redeemed,
    m.point_balance,
    m.last_signature_created,
    m.active_subscriptions
FROM members m
WHERE m.merchant_id = 11471;

-- Notas:
-- 1. Asegúrate de revisar los tipos de datos y los nombres exactos de columnas en la base de datos de RC Budshop.
-- 2. Si alguna columna no existe, consulta el DDL o ajusta el query según corresponda.
-- 3. Este query exporta todos los clientes y su balance de puntos a la fecha de ejecución.
