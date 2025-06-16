# CUST-7123 – RC Budshop Customer Export with Point Balance

## Descripción
Exportación de todos los clientes de RC Budshop (merchant_id 11471) con su balance actual de puntos y columnas adicionales replicando el formato de reportes previos.

## Columnas requeridas
- merchant_id
- member_id
- first_name
- last_name
- address
- city
- state
- zip_code
- med_rec
- opt_out_date
- total_spend
- subscriber_number
- email
- allowed_loyalty
- allowed_sms
- allowed_email
- allow_push_notifications
- pin_code_status
- join_date
- last_visit_date
- total_number_of_visits
- primary_location
- pos_user
- redeemed
- point_balance
- last_signature_created
- active_subscriptions

## Entregables
- SQL para extracción
- Archivo CSV exportado

---

## Conocimiento técnico y tablas utilizadas

### Caso de uso
Se requiere exportar todos los clientes de RC Budshop (merchant_id 11471) junto con su balance de puntos y datos principales. El patrón de query utilizado se basa en sumar los puntos ganados y restar los puntos redimidos para cada miembro, combinando información de varias tablas de transacciones y la tabla principal de miembros.

### Explicación del query ejemplo
Se utiliza un CTE (`points_balance`) que:
- Suma los puntos ganados por cada miembro desde la tabla `transaction_details`.
- Resta los puntos redimidos desde la tabla `transaction_reward_redemptions`.
- Agrupa el resultado por `member_id` para obtener el balance actual de puntos.

Luego, se hace un LEFT JOIN entre la tabla principal de miembros y el CTE para mostrar el balance junto con los datos personales de cada miembro.

### Tablas clave usadas en el análisis y exportación
- **springbig_production_dms.members**: Datos principales del miembro (nombre, email, teléfono, fecha de alta, permisos, etc.).
- **springbig_production_dms.transaction_details**: Transacciones que otorgan puntos a los miembros (`points_earned`).
- **springbig_production_dms.transaction_reward_redemptions**: Transacciones donde los miembros redimen/canjean puntos (`deduct_points`).

Estas tablas permiten calcular balances, permisos y datos personales requeridos para el reporte. El patrón es reutilizable para otros merchants cambiando el `merchant_id`.

---

> Ticket: CUST-7123
> Merchant ID: 11471
