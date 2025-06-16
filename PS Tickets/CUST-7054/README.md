# Native Roots – Member Status by Month (Sep 2024–May 2025)

This folder contains the SQL and documentation for the one-time Native Roots Member Status report (ClickUp CUST-7054).

- **Merchant ID**: 31196
- **Period**: 2024-09 to 2025-05 (monthly snapshots)
- **Output**: Excel file, one tab per month, with the following fields:
  - total_members
  - allowed_sms, sms_opted_out, sms_pending
  - allowed_loyalty, loyalty_opted_out, loyalty_pending
  - allowed_push, push_opted_out, push_pending
  - allowed_email, email_opted_out, email_pending

The SQL file in this directory will generate all required aggregates for this report.
