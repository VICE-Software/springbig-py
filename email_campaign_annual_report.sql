-- Zahara 23298 – Email Campaign Annual Report for 2025
-- This query consolidates campaign-wide email statistics for merchant_id 23298 (Zahara) for the year 2025.
-- Output fields: campaign_id, campaign_name, email_send, email_campaign_subject, total_emails_sent, total_delivered, total_opened, total_clicked, total_complained, total_soft_bounces, total_hard_bounces, total_unsubscribed

SELECT
  ac.campaign_id,
  CASE WHEN SUM(ec.delivered_count) > 0 THEN 'Yes' ELSE 'No' END AS email_send,
  SUM(ec.delivered_count + ec.failed_count + ec.bounced_count) AS total_emails_sent,
  SUM(ec.delivered_count) AS total_delivered,
  SUM(ec.opened_count) AS total_opened,
  SUM(ec.clicked_count) AS total_clicked,
  SUM(ec.complained_count) AS total_complained,
  SUM(ec.failed_count) AS total_soft_bounces,
  SUM(ec.bounced_count) AS total_hard_bounces,
  SUM(ec.unsubscribed_count) AS total_unsubscribed
FROM springbig_production_aggregations.email_counts ec
INNER JOIN springbig_production_aggregations.aggregate_data_communication_actions ac
  ON ec.process_id = ac.campaign_id AND ec.merchant_id = ac.merchant_id
LEFT JOIN springbig_production_aggregations.campaign_logs cl
  ON ac.campaign_id = cl.campaign_id AND ac.merchant_id = cl.merchant_id
WHERE
  ec.merchant_id = 23298
  AND (timestamp 'epoch' + ec.sent_at * interval '1 second') BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY
  ac.campaign_id
ORDER BY
  ac.campaign_id;
