create table if not exists merchant_segment_members
(
    merchant_segment_id integer,
    member_id           integer encode az64 distkey
)
    sortkey (merchant_segment_id);

alter table merchant_segment_members
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant delete, insert, references, select, trigger, truncate, update on merchant_segment_members to rails_gd75ob;

grant select on merchant_segment_members to t_tnegri_hefdl9;

grant select on merchant_segment_members to gdion_94lj0n;

grant select on merchant_segment_members to inteq_fh84dj4s;

grant select on merchant_segment_members to reporting_y4mc58das_ho8o3n;

grant select on merchant_segment_members to ghuppert_m8e4d7;

grant select on merchant_segment_members to aggregate_sms_data_fdif4h;

grant select on merchant_segment_members to t_jdavis;

grant select on merchant_segment_members to analytics_process_incoming_events_oa32mf;

grant select on merchant_segment_members to glue_admin_a99j6d;

grant select on merchant_segment_members to glue_admin_d3a7h2;

grant select on merchant_segment_members to aggregate_campaign_redemptions_c81425;

grant select on merchant_segment_members to redshift_data_copy_l799nl;

grant select on merchant_segment_members to bbwoika;

grant delete, insert, select, update on merchant_segment_members to lambda_production_redshift;

grant select on merchant_segment_members to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchant_segment_members to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchant_segment_members to "awsidc:ypark@springbig.com";

grant select on merchant_segment_members to "awsidc:mvizcaino@springbig.com";

grant select on merchant_segment_members to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on merchant_segment_members to group redshift_api_svc_dbgroup;

create table if not exists merchant_segment_member_logs
(
    merchant_segment_id integer encode az64,
    updated_at          timestamp encode az64
);

alter table merchant_segment_member_logs
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant delete, insert, references, select, trigger, truncate, update on merchant_segment_member_logs to rails_gd75ob;

grant select on merchant_segment_member_logs to t_tnegri_hefdl9;

grant select on merchant_segment_member_logs to gdion_94lj0n;

grant select on merchant_segment_member_logs to inteq_fh84dj4s;

grant select on merchant_segment_member_logs to reporting_y4mc58das_ho8o3n;

grant select on merchant_segment_member_logs to ghuppert_m8e4d7;

grant select on merchant_segment_member_logs to aggregate_sms_data_fdif4h;

grant select on merchant_segment_member_logs to t_jdavis;

grant select on merchant_segment_member_logs to analytics_process_incoming_events_oa32mf;

grant select on merchant_segment_member_logs to glue_admin_a99j6d;

grant select on merchant_segment_member_logs to glue_admin_d3a7h2;

grant select on merchant_segment_member_logs to aggregate_campaign_redemptions_c81425;

grant select on merchant_segment_member_logs to redshift_data_copy_l799nl;

grant select on merchant_segment_member_logs to bbwoika;

grant delete, insert, select, update on merchant_segment_member_logs to lambda_production_redshift;

grant select on merchant_segment_member_logs to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchant_segment_member_logs to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchant_segment_member_logs to "awsidc:ypark@springbig.com";

grant select on merchant_segment_member_logs to "awsidc:mvizcaino@springbig.com";

grant select on merchant_segment_member_logs to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on merchant_segment_member_logs to group redshift_api_svc_dbgroup;

create table if not exists email_counts
(
    merchant_id                 integer encode az64,
    sent_at                     bigint encode az64,
    process_id                  integer encode az64,
    delivered_count             integer encode az64,
    opened_count                integer encode az64,
    clicked_count               integer encode az64,
    unsubscribed_count          integer encode az64,
    suppress_unsubscribed_count integer encode az64,
    complained_count            integer encode az64,
    suppress_complained_count   integer encode az64,
    failed_count                integer encode az64,
    bounced_count               integer encode az64
);

alter table email_counts
    owner to reporting_y4mc58das_ho8o3n;

grant select on email_counts to email_collector_1cf3j6;

grant select on email_counts to update_other_carrier_8ecfg9;

grant select on email_counts to pos_integrations_alerts_cijf3e;

grant select on email_counts to redshift_lag_check_bjjncc;

grant select on email_counts to aggregate_campaign_brand_sales_imbodm;

grant select on email_counts to aggregate_campaign_spend_buckets_i6deeb;

grant select on email_counts to aggregate_sms_data_mn21ig;

grant select on email_counts to aggregate_campaign_category_sales_ni8ghd;

grant select on email_counts to aggregate_member_opt_outs_5i1m3o;

grant select on email_counts to aggregate_transaction_details_for_ads_7bkbd4;

grant select on email_counts to update_visit_details_brands_8db5bk;

grant select on email_counts to update_merchant_member_counts_bj3dm9;

grant select on email_counts to messaging_reporting;

grant delete, insert, references, select, trigger, truncate, update on email_counts to rails_gd75ob;

grant select on email_counts to t_tnegri_hefdl9;

grant select on email_counts to inteq_user_jl95l5;

grant select on email_counts to gdion_94lj0n;

grant select on email_counts to inteq_fh84dj4s;

grant select on email_counts to ghuppert_m8e4d7;

grant select on email_counts to aggregate_push_data_9lmlb8;

grant select on email_counts to aggregate_push_data_dfb2c9;

grant select on email_counts to aggregate_transaction_details_5nhkkg;

grant select on email_counts to autoconnects_cache_builder_7h8n39;

grant select on email_counts to aggregate_sms_data_fdif4h;

grant select on email_counts to t_jdavis;

grant select on email_counts to analytics_process_incoming_events_oa32mf;

grant select on email_counts to glue_admin_a99j6d;

grant select on email_counts to glue_admin_d3a7h2;

grant select on email_counts to aggregate_campaign_redemptions_c81425;

grant select on email_counts to redshift_data_copy_l799nl;

grant select on email_counts to bbwoika;

grant delete, insert, select, update on email_counts to lambda_production_redshift;

grant select on email_counts to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on email_counts to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on email_counts to "awsidc:ypark@springbig.com";

grant select on email_counts to "awsidc:mvizcaino@springbig.com";

grant select on email_counts to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on email_counts to group redshift_api_svc_dbgroup;

create table if not exists ten_dlc_brands_performance
(
    date              date encode az64,
    id                bigint encode az64 distkey,
    name              varchar(765),
    reference_id      varchar(255),
    messages_per_day  integer encode az64,
    provider          integer encode az64,
    provider_name     varchar(100),
    carrier_name      varchar(100),
    sent              integer encode az64,
    delivered         integer encode az64,
    delivered_units   integer encode az64,
    undelivered_units integer encode az64,
    unconfirmed_units integer encode az64,
    clicked           integer encode az64,
    type              varchar(100)
)
    diststyle key;

alter table ten_dlc_brands_performance
    owner to reporting_y4mc58das_ho8o3n;

grant select on ten_dlc_brands_performance to email_collector_1cf3j6;

grant select on ten_dlc_brands_performance to update_other_carrier_8ecfg9;

grant select on ten_dlc_brands_performance to pos_integrations_alerts_cijf3e;

grant select on ten_dlc_brands_performance to redshift_lag_check_bjjncc;

grant select on ten_dlc_brands_performance to aggregate_campaign_brand_sales_imbodm;

grant select on ten_dlc_brands_performance to aggregate_campaign_spend_buckets_i6deeb;

grant select on ten_dlc_brands_performance to aggregate_sms_data_mn21ig;

grant select on ten_dlc_brands_performance to aggregate_campaign_category_sales_ni8ghd;

grant select on ten_dlc_brands_performance to aggregate_member_opt_outs_5i1m3o;

grant select on ten_dlc_brands_performance to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ten_dlc_brands_performance to update_visit_details_brands_8db5bk;

grant select on ten_dlc_brands_performance to update_merchant_member_counts_bj3dm9;

grant select on ten_dlc_brands_performance to messaging_reporting;

grant delete, insert, references, select, trigger, update on ten_dlc_brands_performance to rails_gd75ob;

grant select on ten_dlc_brands_performance to t_tnegri_hefdl9;

grant select on ten_dlc_brands_performance to inteq_user_jl95l5;

grant select on ten_dlc_brands_performance to gdion_94lj0n;

grant select on ten_dlc_brands_performance to inteq_fh84dj4s;

grant select on ten_dlc_brands_performance to ghuppert_m8e4d7;

grant select on ten_dlc_brands_performance to aggregate_push_data_9lmlb8;

grant select on ten_dlc_brands_performance to aggregate_push_data_dfb2c9;

grant select on ten_dlc_brands_performance to aggregate_transaction_details_5nhkkg;

grant select on ten_dlc_brands_performance to autoconnects_cache_builder_7h8n39;

grant select on ten_dlc_brands_performance to aggregate_sms_data_fdif4h;

grant select on ten_dlc_brands_performance to t_jdavis;

grant select on ten_dlc_brands_performance to analytics_process_incoming_events_oa32mf;

grant select on ten_dlc_brands_performance to glue_admin_a99j6d;

grant select on ten_dlc_brands_performance to glue_admin_d3a7h2;

grant select on ten_dlc_brands_performance to aggregate_campaign_redemptions_c81425;

grant select on ten_dlc_brands_performance to redshift_data_copy_l799nl;

grant select on ten_dlc_brands_performance to bbwoika;

grant delete, insert, select, update on ten_dlc_brands_performance to lambda_production_redshift;

grant select on ten_dlc_brands_performance to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on ten_dlc_brands_performance to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on ten_dlc_brands_performance to "awsidc:ypark@springbig.com";

grant select on ten_dlc_brands_performance to "awsidc:mvizcaino@springbig.com";

grant select on ten_dlc_brands_performance to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on ten_dlc_brands_performance to group redshift_api_svc_dbgroup;

create table if not exists aggregate_data_communication_actions
(
    merchant_id      bigint                not null encode az64,
    campaign_id      bigint                not null encode az64,
    campaign_sent_at timestamp             not null encode az64,
    hour_start       timestamp             not null encode az64,
    hour_end         timestamp             not null encode az64,
    visit_count      integer     default 0 not null encode az64,
    spend_amount     numeric(18) default 0 not null encode az64,
    click_count      integer     default 0 not null encode az64,
    redemption_count integer     default 0 not null encode az64,
    primary key (campaign_id, hour_start)
);

alter table aggregate_data_communication_actions
    owner to rails_gd75ob;

grant select on aggregate_data_communication_actions to gdion_94lj0n;

grant select on aggregate_data_communication_actions to inteq_fh84dj4s;

grant select on aggregate_data_communication_actions to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_communication_actions to bbwoika;

grant select on aggregate_data_communication_actions to lambda_production_redshift;

grant select on aggregate_data_communication_actions to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on aggregate_data_communication_actions to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on aggregate_data_communication_actions to "awsidc:ypark@springbig.com";

grant select on aggregate_data_communication_actions to "awsidc:mvizcaino@springbig.com";

grant select on aggregate_data_communication_actions to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on aggregate_data_communication_actions to group redshift_api_svc_dbgroup;

create table if not exists campaign_logs
(
    merchant_id      bigint encode az64,
    campaign_id      bigint not null encode az64,
    member_id        bigint not null,
    campaign_sent_at timestamp encode az64,
    sms_sent_at      timestamp encode az64,
    push_sent_at     timestamp encode az64,
    email_sent_at    timestamp encode az64,
    first_sent_at    timestamp encode az64,
    email_credits    integer default 0 encode az64,
    push_credits     integer default 0 encode az64,
    sms_credits      integer default 0 encode az64,
    imessage_sent_at timestamp encode az64,
    imessage_credits integer default 0 encode az64,
    primary key (campaign_id, member_id)
)
    sortkey (member_id);

alter table campaign_logs
    owner to rails_gd75ob;

grant select on campaign_logs to gdion_94lj0n;

grant select on campaign_logs to inteq_fh84dj4s;

grant select on campaign_logs to reporting_y4mc58das_ho8o3n;

grant select on campaign_logs to bbwoika;

grant select on campaign_logs to lambda_production_redshift;

grant select on campaign_logs to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on campaign_logs to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on campaign_logs to "awsidc:ypark@springbig.com";

grant select on campaign_logs to "awsidc:mvizcaino@springbig.com";

grant select on campaign_logs to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on campaign_logs to group redshift_api_svc_dbgroup;

create table if not exists auto_campaign_log_sends
(
    merchant_id                  bigint encode az64,
    auto_campaign_id             bigint encode az64,
    auto_campaign_message_id     bigint encode az64,
    member_id                    bigint,
    auto_campaign_log_id         bigint not null encode az64 distkey
        primary key,
    auto_campaign_log_created_at timestamp encode az64,
    sms_sent_at                  timestamp encode az64,
    push_sent_at                 timestamp encode az64,
    email_sent_at                timestamp encode az64,
    first_sent_at                timestamp encode az64,
    email_credits                integer default 0 encode az64,
    push_credits                 integer default 0 encode az64,
    sms_credits                  integer default 0 encode az64,
    imessage_sent_at             timestamp encode az64,
    imessage_credits             integer default 0 encode az64
)
    sortkey (member_id);

alter table auto_campaign_log_sends
    owner to rails_gd75ob;

grant select on auto_campaign_log_sends to gdion_94lj0n;

grant select on auto_campaign_log_sends to inteq_fh84dj4s;

grant select on auto_campaign_log_sends to reporting_y4mc58das_ho8o3n;

grant select on auto_campaign_log_sends to bbwoika;

grant select on auto_campaign_log_sends to lambda_production_redshift;

grant select on auto_campaign_log_sends to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on auto_campaign_log_sends to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on auto_campaign_log_sends to "awsidc:ypark@springbig.com";

grant select on auto_campaign_log_sends to "awsidc:mvizcaino@springbig.com";

grant select on auto_campaign_log_sends to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on auto_campaign_log_sends to group redshift_api_svc_dbgroup;

create table if not exists audience_members
(
    merchant_id integer   not null encode az64 distkey,
    audience_id integer   not null encode az64,
    member_id   integer   not null encode az64,
    matched_at  timestamp not null encode az64,
    removed_at  timestamp encode az64,
    constraint audience_members_merchant_id_key
        unique (merchant_id, audience_id, member_id)
)
    diststyle key
    sortkey (removed_at);

alter table audience_members
    owner to rails_gd75ob;

grant select on audience_members to gdion_94lj0n;

grant select on audience_members to inteq_fh84dj4s;

grant select on audience_members to reporting_y4mc58das_ho8o3n;

grant select on audience_members to ghuppert_m8e4d7;

grant select on audience_members to bbwoika;

grant delete, insert, references, select, update on audience_members to lambda_production_redshift;

grant select on audience_members to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on audience_members to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on audience_members to "awsidc:ypark@springbig.com";

grant select on audience_members to "awsidc:mvizcaino@springbig.com";

grant select on audience_members to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on audience_members to group redshift_api_svc_dbgroup;

create table if not exists combined_communications
(
    communication_type            smallint     not null encode az64,
    communication_id              varchar(256) not null,
    communication_created_at      timestamp    not null encode az64,
    process_type                  varchar(256) not null,
    process_id                    bigint       not null encode az64,
    merchant_id                   bigint       not null,
    member_id                     bigint       not null encode az64,
    pre_stashboard_text           varchar(65535),
    num_pre_stashboard_characters integer encode az64,
    stashboard_text               varchar(65535),
    num_stashboard_characters     integer encode az64,
    num_stashboard_emojis         integer encode az64,
    ad_id                         bigint encode az64,
    template_image_id             bigint encode az64,
    num_images                    integer encode az64,
    num_videos                    integer encode az64,
    auto_campaign_type            integer encode az64,
    process_offer                 boolean default false,
    num_pre_stashboard_emojis     integer encode az64,
    content_type                  integer encode az64
)
    sortkey (merchant_id);

alter table combined_communications
    owner to rails_gd75ob;

grant select on combined_communications to gdion_94lj0n;

grant select on combined_communications to inteq_fh84dj4s;

grant select on combined_communications to bbwoika;

grant select on combined_communications to lambda_production_redshift;

grant select on combined_communications to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on combined_communications to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on combined_communications to "awsidc:ypark@springbig.com";

grant select on combined_communications to "awsidc:mvizcaino@springbig.com";

grant select on combined_communications to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on combined_communications to group redshift_api_svc_dbgroup;

create table if not exists brand_metrics
(
    date_hour       timestamp             not null encode az64,
    merchant_id     bigint                not null encode az64 distkey,
    process_id      bigint                not null encode az64,
    process_type    varchar(50),
    process_sent_at timestamp             not null,
    slice_type      varchar(50),
    slice_name      varchar(255),
    spend           numeric(18) default 0 not null encode az64,
    visits          integer     default 0 not null encode az64,
    created_at      timestamp             not null encode az64,
    updated_at      timestamp             not null encode az64
)
    diststyle key
    sortkey (process_sent_at, slice_type, slice_name);

alter table brand_metrics
    owner to rails_gd75ob;

grant select on brand_metrics to gdion_94lj0n;

grant select on brand_metrics to inteq_fh84dj4s;

grant select on brand_metrics to bbwoika;

grant select on brand_metrics to lambda_production_redshift;

grant select on brand_metrics to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on brand_metrics to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on brand_metrics to "awsidc:ypark@springbig.com";

grant select on brand_metrics to "awsidc:mvizcaino@springbig.com";

grant select on brand_metrics to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on brand_metrics to group redshift_api_svc_dbgroup;

create table if not exists springbig_production_dms
(
    id                           bigint    not null encode az64
        constraint springbig_production_dms_external_merchant_settings_linearized_pkey
            primary key,
    external_merchant_setting_id bigint    not null encode az64,
    merchant_id                  bigint    not null encode az64,
    stashboard_credit_cap        integer encode az64,
    credit_calculation_type      integer encode az64,
    emoji_calculation_type       integer encode az64,
    mmp_subscription             varchar(15),
    push_to_sms_ratio            numeric(10, 9) encode az64,
    email_to_sms_ratio           numeric(10, 9) encode az64,
    start_at                     timestamp not null encode az64,
    end_at                       timestamp encode az64,
    synced_at                    varchar(150)
);

alter table springbig_production_dms
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on springbig_production_dms to rails_gd75ob;

grant select on springbig_production_dms to inteq_fh84dj4s;

grant select on springbig_production_dms to ghuppert_m8e4d7;

grant select on springbig_production_dms to aggregate_sms_data_fdif4h;

grant select on springbig_production_dms to analytics_process_incoming_events_oa32mf;

grant select on springbig_production_dms to glue_admin_a99j6d;

grant select on springbig_production_dms to glue_admin_d3a7h2;

grant select on springbig_production_dms to aggregate_campaign_redemptions_c81425;

grant select on springbig_production_dms to redshift_data_copy_l799nl;

grant select on springbig_production_dms to bbwoika;

grant select on springbig_production_dms to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on springbig_production_dms to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on springbig_production_dms to "awsidc:ypark@springbig.com";

grant select on springbig_production_dms to "awsidc:mvizcaino@springbig.com";

grant select on springbig_production_dms to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on springbig_production_dms to group redshift_api_svc_dbgroup;

CREATE MATERIALIZED VIEW springbig_production_aggregations.transactions_tz AS
WITH variables AS (SELECT 0  AS transaction_total_minimum, -- threshold for transaction total,
                          -6 AS period_length_month),
     transactions_tz AS (SELECT td.id,
                                td.merchant_id,
                                td.member_id,
                                td.transaction_total,
                                CASE
                                    WHEN mer.time_zone = 'Alaska'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Alaska'
                                    WHEN mer.time_zone = 'Arizona'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Arizona'
                                    WHEN mer.time_zone = 'Atlantic Time (Canada)'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'Canada/Atlantic'
                                    WHEN mer.time_zone = 'Central Time (US & Canada)'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Central'
                                    WHEN mer.time_zone = 'Eastern Time (US & Canada)'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Eastern'
                                    WHEN mer.time_zone = 'Hawaii'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Hawaii'
                                    WHEN mer.time_zone = 'Mountain Time (US & Canada)'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Mountain'
                                    WHEN mer.time_zone = 'Newfoundland'
                                        THEN td.transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'Canada/Newfoundland'
                                    WHEN mer.time_zone = 'Pacific Time (US & Canada)'
                                        THEN transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'US/Pacific'
                                    WHEN mer.time_zone = 'Puerto Rico'
                                        THEN transaction_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/Puerto_Rico'
                                    ELSE td.transaction_date
                                    END,
                                CASE
                                    -- order_source: unknown: nil, instore: 1, ecommerce: 2, ecommerce_delivery: 3, ecommerce_pickup: 4
                                    WHEN td.order_source = 1 THEN 0
                                    WHEN td.order_source >= 2 AND td.order_source <= 4 THEN 1 -- ecomerce is 2,3 and 4
                                    WHEN td.order_source is NULL THEN 0
                                    ELSE 0
                                    END as online_order
                         FROM springbig_production_dms.transaction_details as td
                                  JOIN springbig_production_dms.merchants as mer ON (td.merchant_id = mer.id)
                         WHERE td.transaction_date >= dateadd(month, (SELECT period_length_month
                                                                      FROM variables), current_date)
                           AND td.transaction_total > (SELECT transaction_total_minimum::numeric FROM variables))
SELECT *
FROM transactions_tz
--RequestID=4c118803-6b83-4e81-82f3-c32588be38dd; TraceID=1-64026177-33e9855c449869492deddca0;

alter table transactions_tz
    owner to rails_gd75ob;

grant select on transactions_tz to gdion_94lj0n;

grant select on transactions_tz to inteq_fh84dj4s;

grant select on transactions_tz to bbwoika;

grant select on transactions_tz to lambda_production_redshift;

grant select on transactions_tz to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on transactions_tz to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on transactions_tz to "awsidc:ypark@springbig.com";

grant select on transactions_tz to "awsidc:mvizcaino@springbig.com";

grant select on transactions_tz to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on transactions_tz to group redshift_api_svc_dbgroup;

CREATE MATERIALIZED VIEW springbig_production_aggregations.rfm_transactions AS
WITH rfm_transactions AS (SELECT td.id                    AS id,
                                 td.member_id             AS member_id,
                                 td.merchant_id           AS merchant_id,
                                 td.transaction_date      AS transaction_date,
                                 td.online_order          AS online_order,
                                 mer.region,
                                 ad.id                    as advertiser_id,
                                 (vd.price * vd.quantity) as brand_total
                          FROM springbig_production_aggregations.transactions_tz as td
                                   JOIN springbig_production_dms.visit_details as vd ON (vd.visit_id = td.id)
                                   JOIN springbig_production_dms.merchants AS mer ON (mer.id = td.merchant_id)
                                   JOIN springbig_production_normalized.recon_brand_category_norm n
                                        ON n.detail_id = vd.id
                                   JOIN springbig_production_dms.advertisers_brands_terms ter
                                        ON (ter.brand_term = n.brand_norm AND ter.brand_term_region = mer.region)
                                   JOIN springbig_production_dms.advertisers ad ON ad.id = ter.advertiser_id)
SELECT *
FROM rfm_transactions
--RequestID=06aabfdb-eb20-4c87-a593-81e2b144018c; TraceID=1-640261c2-55a6d45d0ae6e32a1be629ef;

alter table rfm_transactions
    owner to rails_gd75ob;

grant select on rfm_transactions to gdion_94lj0n;

grant select on rfm_transactions to inteq_fh84dj4s;

grant select on rfm_transactions to bbwoika;

grant select on rfm_transactions to lambda_production_redshift;

grant select on rfm_transactions to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on rfm_transactions to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on rfm_transactions to "awsidc:ypark@springbig.com";

grant select on rfm_transactions to "awsidc:mvizcaino@springbig.com";

grant select on rfm_transactions to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on rfm_transactions to group redshift_api_svc_dbgroup;

CREATE MATERIALIZED VIEW springbig_production_aggregations.rfm_agregations AS
WITH rfm_agregations AS (SELECT td.merchant_id                                         AS merchant_id,
                                td.advertiser_id,
                                td.region,
                                td.member_id                                           AS member_id,
                                COUNT(td.id)                                           AS total_visits,
                                SUM(brand_total)                                       AS total_spend,
                                AVG(brand_total)                                       AS avg_ticket,
                                DATEDIFF(day, MAX(td.transaction_date), GETDATE())     AS last_visit_days_ago,
                                CAST(COUNT(td.id) AS NUMERIC(10, 4)) /
                                CASE
                                    WHEN DATEDIFF(week, MIN(td.transaction_date), MAX(td.transaction_date)) = 0
                                        THEN 1
                                    ELSE DATEDIFF(week, MIN(td.transaction_date), MAX(td.transaction_date))
                                    END                                                AS avg_visits_week,
                                AVG(60 * extract(hour from td.transaction_date) +
                                    extract(minute from transaction_date))             AS avg_visit_time,
                                AVG(DATEDIFF(year, mem.birthday, td.transaction_date)) AS age,
                                SUM(online_order) * 100 / COUNT(td.id)                 AS percent_online_visits

                         FROM springbig_production_aggregations.rfm_transactions AS td
                                  JOIN springbig_production_dms.members AS mem ON (mem.id = td.member_id)
                         WHERE mem.birthday is NOT NULL
                         GROUP BY td.merchant_id, td.advertiser_id, td.region, td.member_id)
SELECT *
FROM rfm_agregations
--RequestID=ec5f3b11-f33b-4ee9-bf2b-395096bb498a; TraceID=1-64026390-410112062c1c9c3333adc6d9;

alter table rfm_agregations
    owner to rails_gd75ob;

grant select on rfm_agregations to gdion_94lj0n;

grant select on rfm_agregations to inteq_fh84dj4s;

grant select on rfm_agregations to bbwoika;

grant select on rfm_agregations to lambda_production_redshift;

grant select on rfm_agregations to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on rfm_agregations to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on rfm_agregations to "awsidc:ypark@springbig.com";

grant select on rfm_agregations to "awsidc:mvizcaino@springbig.com";

grant select on rfm_agregations to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on rfm_agregations to group redshift_api_svc_dbgroup;

CREATE MATERIALIZED VIEW springbig_production_aggregations.rfm_member_advertisers AS
WITH rfm_member_advertisers AS (SELECT merchant_id,
                                       advertiser_id,
                                       region,
                                       member_id,
                                       avg_visits_week,
                                       avg_visit_time,
                                       avg_ticket,
                                       age,
                                       percent_online_visits,
                                       last_visit_days_ago,
                                       total_visits,
                                       total_spend,
                                       PERCENT_RANK()
                                       OVER (PARTITION BY merchant_id, advertiser_id, region ORDER BY last_visit_days_ago) as last_visits_percentile,
                                       PERCENT_RANK()
                                       OVER (PARTITION BY merchant_id, advertiser_id, region ORDER BY total_visits)        as total_visits_percentile,
                                       PERCENT_RANK()
                                       OVER (PARTITION BY merchant_id, advertiser_id, region ORDER BY avg_ticket)          as total_spend_percentile

                                FROM springbig_production_aggregations.rfm_agregations)
SELECT *
FROM rfm_member_advertisers
--RequestID=30465de5-bfd4-4076-a9a0-770809bffd85; TraceID=1-640263c3-6e99d68d640ddfbb6199bfa1;

alter table rfm_member_advertisers
    owner to rails_gd75ob;

grant select on rfm_member_advertisers to gdion_94lj0n;

grant select on rfm_member_advertisers to inteq_fh84dj4s;

grant select on rfm_member_advertisers to bbwoika;

grant select on rfm_member_advertisers to lambda_production_redshift;

grant select on rfm_member_advertisers to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on rfm_member_advertisers to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on rfm_member_advertisers to "awsidc:ypark@springbig.com";

grant select on rfm_member_advertisers to "awsidc:mvizcaino@springbig.com";

grant select on rfm_member_advertisers to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on rfm_member_advertisers to group redshift_api_svc_dbgroup;

CREATE MATERIALIZED VIEW springbig_production_aggregations.temp_visits_view
            DISTSTYLE KEY
            DISTKEY (member_id)
            SORTKEY (transaction_date)
            AUTO
    REFRESH NO
AS
SELECT member_id, transaction_date, transaction_total
FROM transaction_details
WHERE created_at > CURRENT_DATE - INTERVAL '12 month'
  AND member_id IS NOT NULL
-- and merchant_id = 30600
;

alter table temp_visits_view
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on temp_visits_view to rails_gd75ob;

grant select on temp_visits_view to ghuppert_m8e4d7;

grant select on temp_visits_view to aggregate_sms_data_fdif4h;

grant select on temp_visits_view to analytics_process_incoming_events_oa32mf;

grant select on temp_visits_view to glue_admin_a99j6d;

grant select on temp_visits_view to glue_admin_d3a7h2;

grant select on temp_visits_view to aggregate_campaign_redemptions_c81425;

grant select on temp_visits_view to redshift_data_copy_l799nl;

grant select on temp_visits_view to "awsidc:ypark@springbig.com";

grant select on temp_visits_view to "awsidc:mvizcaino@springbig.com";

CREATE MATERIALIZED VIEW springbig_production_aggregations.temp_campaign_click_view
            DISTSTYLE KEY
            DISTKEY (member_id)
            SORTKEY (created_at)
            AUTO
    REFRESH NO
AS
WITH click_raw AS (SELECT member_id, created_at, owner_type AS click_owner_type, owner_id AS click_owner_id
                   FROM shortened_urls
                   WHERE owner_type IN ('Campaign', 'AutoCampaignMessage')
                     AND created_at > CURRENT_DATE - INTERVAL '12 month'
                   UNION
                   SELECT er.recipient_id                                    AS member_id
                        , TIMESTAMP 'epoch' + er.epoch * INTERVAL '1 second' AS created_at
                        , CASE
                              WHEN er.process_type = 'AutoCampaignLog' THEN 'AutoCampaignMessage'
                              ELSE er.process_type END                       AS click_owner_type
                        , CASE
                              WHEN er.process_type = 'AutoCampaignLog' THEN acl.auto_campaign_message_id
                              ELSE er.process_id END                         AS click_owner_id
                   FROM email_receipts er
                            LEFT JOIN auto_campaign_logs acl
                                      ON er.process_type = 'AutoCampaignLog' AND acl.id = er.process_id
                   WHERE er.status = 'clicked'
                     AND er.process_type IN ('Campaign', 'AutoCampaignLog')
                     AND er.epoch > EXTRACT('epoch' FROM CURRENT_DATE - INTERVAL '12 month'))
SELECT member_id, click_owner_type, click_owner_id, MIN(created_at) AS created_at
FROM click_raw
WHERE click_owner_id IS NOT NULL
GROUP BY member_id, click_owner_type, click_owner_id
;

alter table temp_campaign_click_view
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on temp_campaign_click_view to rails_gd75ob;

grant select on temp_campaign_click_view to ghuppert_m8e4d7;

grant select on temp_campaign_click_view to aggregate_sms_data_fdif4h;

grant select on temp_campaign_click_view to analytics_process_incoming_events_oa32mf;

grant select on temp_campaign_click_view to glue_admin_a99j6d;

grant select on temp_campaign_click_view to glue_admin_d3a7h2;

grant select on temp_campaign_click_view to aggregate_campaign_redemptions_c81425;

grant select on temp_campaign_click_view to redshift_data_copy_l799nl;

grant select on temp_campaign_click_view to "awsidc:ypark@springbig.com";

grant select on temp_campaign_click_view to "awsidc:mvizcaino@springbig.com";

CREATE MATERIALIZED VIEW springbig_production_aggregations.temp_agg_view
            DISTSTYLE KEY
            DISTKEY (member_id)
            AUTO
    REFRESH NO
AS
WITH member_coms AS (SELECT cc.member_id
                          , cc.process_type
                          , cc.process_id
                          , CASE
                                WHEN cc.process_type = 'Campaign' THEN 'Campaign'
                                WHEN cc.process_type = 'AutoCampaignLog' THEN 'AutoCampaignMessage'
        END                                                  AS click_owner_type
                          , CASE
                                WHEN cc.process_type = 'Campaign' THEN process_id
                                WHEN cc.process_type = 'AutoCampaignLog' THEN acl.auto_campaign_message_id
        END                                                  AS click_owner_id
                          , MIN(cc.communication_created_at) AS process_sent
                     FROM combined_communications cc
                              LEFT JOIN auto_campaign_logs acl
                                        ON cc.process_type = 'AutoCampaignLog' AND acl.id = cc.process_id
                     WHERE cc.communication_created_at > CURRENT_DATE - INTERVAL '12 months'
                       AND cc.process_type IN ('Campaign', 'AutoCampaignLog')
--and cc.merchant_id IN (30600, 3075)
                     GROUP BY cc.member_id, cc.process_type, cc.process_id, click_owner_type, click_owner_id)
   -- SELECT * from member_coms LIMIT 111; ~40 sec

   , com_visits AS (SELECT member_coms.member_id
                         , process_type
                         , process_id
                         , process_sent
                         , click_owner_type
                         , click_owner_id
                         , SUM(visits.transaction_total) AS spend_total_48h
                    FROM member_coms
                             LEFT JOIN temp_visits_view visits ON visits.member_id = member_coms.member_id
                        AND
                                                                  visits.transaction_date BETWEEN member_coms.process_sent AND member_coms.process_sent + INTERVAL '48 hours'
                    GROUP BY member_coms.member_id, process_type, process_id, process_sent, click_owner_type,
                             click_owner_id)
--  SELECT * from com_visits LIMIT 111; -- 200 sec

   , com_visits_clicks AS (SELECT com_visits.member_id
                                , process_type
                                , process_id
                                , process_sent
                                , com_visits.click_owner_type
                                , com_visits.click_owner_id
                                , spend_total_48h
                                , COUNT(clicks.member_id) AS click_count_48h
                           FROM com_visits
                                    LEFT JOIN temp_campaign_click_view clicks ON clicks.member_id = com_visits.member_id
                               AND clicks.click_owner_id = com_visits.click_owner_id
                               AND clicks.click_owner_type = com_visits.click_owner_type
                               AND
                                                                                 clicks.created_at BETWEEN com_visits.process_sent AND com_visits.process_sent + INTERVAL '48 hours'
                           GROUP BY com_visits.member_id, process_type, process_id, process_sent,
                                    com_visits.click_owner_type, com_visits.click_owner_id, spend_total_48h)
-- SELECT * from com_visits_clicks LIMIT 311; -- 280s

SELECT member_id
     , spend_total_48h
     , click_count_48h
     , ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY process_sent DESC) AS process_recency_rank
FROM com_visits_clicks
;

alter table temp_agg_view
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on temp_agg_view to rails_gd75ob;

grant select on temp_agg_view to ghuppert_m8e4d7;

grant select on temp_agg_view to aggregate_sms_data_fdif4h;

grant select on temp_agg_view to analytics_process_incoming_events_oa32mf;

grant select on temp_agg_view to glue_admin_a99j6d;

grant select on temp_agg_view to glue_admin_d3a7h2;

grant select on temp_agg_view to aggregate_campaign_redemptions_c81425;

grant select on temp_agg_view to redshift_data_copy_l799nl;

grant select on temp_agg_view to "awsidc:ypark@springbig.com";

grant select on temp_agg_view to "awsidc:mvizcaino@springbig.com";

/* RQEV2-06Wiq8V2jH */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_view_materialized
            DISTSTYLE KEY
            DISTKEY
                (campaign_id)
            COMPOUND
            SORTKEY
            (merchant_id, campaign_id, campaign_sent_at) AUTO
    REFRESH YES
AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.email_sent_at,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked') THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked') THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked') THEN er.recipient_id END
           )
       ) AS unique_open_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked' THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked' THEN er.recipient_id END
           )
       ) AS unique_click_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed' THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained' THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                        er.status = 'failed'
                            AND LOWER(COALESCE(severity, '')) = 'permanent'
                            AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                        ) THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                        er.status = 'failed'
                            AND LOWER(COALESCE(severity, '')) = 'permanent'
                            AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                        ) THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-03-27 15:01:06 UTC'
  AND er.recipient_type = 'Member'
GROUP BY cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-XU1lDyuabX */
CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_log_email_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.member_id,
       acl.auto_campaign_message_id,
       acl.auto_campaign_log_id,
       acl.auto_campaign_log_created_at,
       acl.email_sent_at,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_open_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_click_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained'
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                          er.status = 'failed'
                              AND LOWER(COALESCE(severity, '')) = 'permanent'
                              AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                          )
                        AND
                      (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '6 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_6h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '12 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_12h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '24 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_24h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '48 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_48h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '120 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_120h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '168 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_168h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   AND (timestamp 'epoch' + er.epoch * interval '1 second') < acl.email_sent_at + INTERVAL '336 hours'
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_336h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('delivered', 'opened', 'clicked') THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS deliver_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked') THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS open_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('opened', 'clicked') THEN er.recipient_id END
           )
       ) AS unique_open_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked' THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS click_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'clicked' THEN er.recipient_id END
           )
       ) AS unique_click_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed' THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS fail_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'complained' THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS complain_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                        er.status = 'failed'
                            AND LOWER(COALESCE(severity, '')) = 'permanent'
                            AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                        ) THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS unsubscribe_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status IN ('unsubscribed', 'complained')
                   OR (
                        er.status = 'failed'
                            AND LOWER(COALESCE(severity, '')) = 'permanent'
                            AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                        ) THEN er.recipient_id END
           )
       ) AS unique_unsubscribe_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'permanent'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS hard_bounce_count_720h,
       COUNT(
               DISTINCT (
           CASE
               WHEN er.status = 'failed'
                   AND LOWER(COALESCE(severity, '')) = 'temporary'
                   AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                   THEN COALESCE(er.email_log_id:: text, er.uuid) END
           )
       ) AS soft_bounce_count_720h
FROM springbig_production_aggregations.auto_campaign_log_sends acl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = acl.member_id
    AND er.process_id = acl.auto_campaign_log_id
    AND er.process_type = 'AutoCampaignLog'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN acl.email_sent_at
                                                                       AND acl.email_sent_at + INTERVAL '30 days'
WHERE acl.email_sent_at > TIMESTAMP '2025-03-05 14:08:38 UTC'
  AND er.recipient_type = 'Member'
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         acl.member_id,
         acl.auto_campaign_log_id,
         acl.auto_campaign_log_created_at,
         acl.email_sent_at;

alter table auto_campaign_log_email_metrics_view_materialized
    owner to rails_gd75ob;

grant select on auto_campaign_log_email_metrics_view_materialized to lambda_production_redshift;

grant select on auto_campaign_log_email_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-NiNQg5BmbE */
CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_log_push_open_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.member_id,
       acl.auto_campaign_message_id,
       acl.auto_campaign_log_id,
       acl.auto_campaign_log_created_at,
       acl.push_sent_at,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '6 hours'
                       THEN 1 END
       )        AS open_count_6h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '12 hours'
                       THEN 1 END
       )        AS open_count_12h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '24 hours'
                       THEN 1 END
       )        AS open_count_24h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '48 hours'
                       THEN 1 END
       )        AS open_count_48h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '120 hours'
                       THEN 1 END
       )        AS open_count_120h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '168 hours'
                       THEN 1 END
       )        AS open_count_168h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + nae.epoch * interval '1 second') < acl.push_sent_at + INTERVAL '336 hours'
                       THEN 1 END
       )        AS open_count_336h,
       COUNT(*) AS open_count_720h
FROM springbig_production_aggregations.auto_campaign_log_sends acl
         INNER JOIN springbig_production_logs.native_app_events nae ON nae.member_id = acl.member_id
    AND nae.process_id = acl.auto_campaign_message_id
    AND (timestamp 'epoch' + nae.epoch * interval '1 second') BETWEEN acl.push_sent_at
                                                                           AND acl.push_sent_at + INTERVAL '30 days'
WHERE acl.push_sent_at > TIMESTAMP '2025-03-05 14:08:38 UTC'
  AND nae.event_name = 'NativeApp::view-messagedetail'
  AND nae.process_type = 'AutoCampaignMessage'
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         acl.member_id,
         acl.auto_campaign_log_id,
         acl.auto_campaign_log_created_at,
         acl.push_sent_at;

alter table auto_campaign_log_push_open_metrics_view_materialized
    owner to rails_gd75ob;

grant select on auto_campaign_log_push_open_metrics_view_materialized to lambda_production_redshift;

grant select on auto_campaign_log_push_open_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-0jyTsXwml1 */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_click_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_6h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_12h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_24h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_48h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_120h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_168h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS click_count_336h,
       SUM(
               CASE
                   WHEN er.status = 'clicked' THEN 1
                   ELSE 0 END
       ) AS click_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:36:29 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_click_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_click_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_click_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-PAUqypLOav */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_complain_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_6h,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_12h,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_24h,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_48h,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_120h,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_168h,
       SUM(
               CASE
                   WHEN er.status = 'complained'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS complain_count_336h,
       SUM(
               CASE
                   WHEN er.status = 'complained' THEN 1
                   ELSE 0 END
       ) AS complain_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:36:38 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_complain_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_complain_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_complain_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-hXsssR68aY */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_deliver_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_6h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_12h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_24h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_48h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_120h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_168h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS deliver_count_336h,
       SUM(
               CASE
                   WHEN er.status IN ('delivered', 'opened', 'clicked') THEN 1
                   ELSE 0 END
       ) AS deliver_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:36:39 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_deliver_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_deliver_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_deliver_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-zgfAF4A4Pp */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_fail_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_6h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_12h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_24h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_48h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_120h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_168h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS fail_count_336h,
       SUM(
               CASE
                   WHEN er.status = 'failed' THEN 1
                   ELSE 0 END
       ) AS fail_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:36:49 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_fail_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_fail_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_fail_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-KCaIkJmlxp */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_open_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_6h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_12h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_24h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_48h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_120h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_168h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS open_count_336h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked') THEN 1
                   ELSE 0 END
       ) AS open_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:36:52 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_open_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_open_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_open_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-wi2ZhtGdua */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_soft_bounce_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_6h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_12h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_24h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_48h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_120h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_168h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_336h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'temporary'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint') THEN 1
                   ELSE 0 END
       ) AS soft_bounce_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:36:58 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_soft_bounce_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_soft_bounce_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_soft_bounce_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-tugDv3lx6g */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_unique_click_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_6h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_12h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_24h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_48h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_120h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_168h,
       SUM(
               CASE
                   WHEN er.status = 'clicked'
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_click_count_336h,
       SUM(
               CASE
                   WHEN er.status = 'clicked' THEN 1
                   ELSE 0 END
       ) AS unique_click_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:37:00 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_unique_click_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_unique_click_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_unique_click_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-6H5FGBQMB6 */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_unique_open_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_6h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_12h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_24h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_48h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_120h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_168h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_open_count_336h,
       SUM(
               CASE
                   WHEN er.status IN ('opened', 'clicked') THEN 1
                   ELSE 0 END
       ) AS unique_open_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:37:01 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_unique_open_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_unique_open_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_unique_open_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-ysOTRCNYIi */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_unique_unsubscribe_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_6h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_12h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_24h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_48h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_120h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_168h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_336h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                            er.status = 'failed'
                                AND LOWER(COALESCE(severity, '')) = 'permanent'
                                AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                            ) THEN 1
                   ELSE 0 END
       ) AS unique_unsubscribe_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:37:12 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_unique_unsubscribe_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_unique_unsubscribe_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_unique_unsubscribe_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-beRtZnEqtY */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_unsubscribe_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_6h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_12h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_24h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_48h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_120h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_168h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                              er.status = 'failed'
                                  AND LOWER(COALESCE(severity, '')) = 'permanent'
                                  AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                              )
                            AND
                          (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_336h,
       SUM(
               CASE
                   WHEN er.status IN ('unsubscribed', 'complained')
                       OR (
                            er.status = 'failed'
                                AND LOWER(COALESCE(severity, '')) = 'permanent'
                                AND LOWER(COALESCE(reason, '')) IN ('suppress-unsubscribe', 'suppress-complaint')
                            ) THEN 1
                   ELSE 0 END
       ) AS unsubscribe_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2024-05-05 23:37:14 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_unsubscribe_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_unsubscribe_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_unsubscribe_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-w2T2C2mJZ7 */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_push_open_metrics_view_materialized
            DISTSTYLE KEY
            DISTKEY
                (campaign_id)
            COMPOUND
            SORTKEY
            (merchant_id, campaign_id, campaign_sent_at) AUTO
    REFRESH YES
AS
SELECT cl_sub.merchant_id,
       cl_sub.campaign_id,
       cl_sub.member_id,
       MIN(cl_sub.campaign_sent_at) AS campaign_sent_at,
       MIN(cl_sub.push_sent_at)     AS push_sent_at,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '6 hours' THEN 1 END
       )                            AS open_count_6h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '12 hours' THEN 1 END
       )                            AS open_count_12h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '24 hours' THEN 1 END
       )                            AS open_count_24h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '48 hours' THEN 1 END
       )                            AS open_count_48h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '120 hours' THEN 1 END
       )                            AS open_count_120h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '168 hours' THEN 1 END
       )                            AS open_count_168h,
       COUNT(
               CASE
                   WHEN (timestamp 'epoch' + cl_sub.epoch * interval '1 second') <
                        cl_sub.push_sent_at + INTERVAL '336 hours' THEN 1 END
       )                            AS open_count_336h,
       COUNT(*)                     AS open_count_720h
FROM (SELECT cl.*,
             nae.event_name,
             nae.process_type,
             nae.epoch,
             ROW_NUMBER() OVER (
                 PARTITION BY cl.merchant_id,
                     cl.campaign_id,
                     cl.member_id
                 ) as rn
      FROM springbig_production_aggregations.campaign_logs cl
               INNER JOIN springbig_production_logs.native_app_events nae ON nae.member_id = cl.member_id
          AND nae.process_id = cl.campaign_id
          AND (timestamp 'epoch' + nae.epoch * interval '1 second') BETWEEN cl.push_sent_at
                                                                                 AND cl.push_sent_at + INTERVAL '30 days') cl_sub
WHERE cl_sub.push_sent_at > TIMESTAMP '2024-05-05 23:37:15 UTC'
  AND (
    cl_sub.event_name = 'NativeApp::view-messagedetail'
        OR cl_sub.event_name = 'NativeApp::messages-visible'
    )
  AND cl_sub.process_type = 'Campaign'
  AND cl_sub.rn = 1
GROUP BY cl_sub.merchant_id,
         cl_sub.campaign_id,
         cl_sub.member_id;

alter table campaign_log_push_open_metrics_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_push_open_metrics_view_materialized to lambda_production_redshift;

grant select on campaign_log_push_open_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-QIMawotTlg */
CREATE MATERIALIZED VIEW springbig_production_aggregations.merchant_app_open_daily_metrics_view_materialized AUTO REFRESH YES AS
SELECT nae.merchant_id,
       DATE_TRUNC(
               'day',
               timestamp 'epoch' + nae.epoch / 100 * interval '1 second'
       ) AT TIME ZONE m.time_zone AS date_hour,
       'Campaign'                 as owner_type,
       COUNT(nae.member_id)       AS open_count
from springbig_production_logs.native_app_events AS nae
         INNER JOIN springbig_production_dms.merchants AS m ON nae.merchant_id = m.id
WHERE nae.event_name = 'NativeApp::view-messagedetail'
  AND timestamp 'epoch' + nae.epoch / 100 * interval '1 second' >= TIMESTAMP '2024-05-05 23:37:39 UTC'
GROUP BY nae.merchant_id,
         owner_type,
         date_hour;

alter table merchant_app_open_daily_metrics_view_materialized
    owner to rails_gd75ob;

grant select on merchant_app_open_daily_metrics_view_materialized to lambda_production_redshift;

grant select on merchant_app_open_daily_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-F8orSx2rIW */
CREATE MATERIALIZED VIEW springbig_production_aggregations.merchant_email_open_daily_metrics_view_materialized AUTO REFRESH YES AS
SELECT er.merchant_id,
       DATE_TRUNC(
               'day',
               timestamp 'epoch':: timestamp + er.epoch * interval '1 second'
       ) AT TIME ZONE m.time_zone         AS date_hour,
       CASE
           WHEN er.process_type = 'Campaign' THEN 'Campaign'
           ELSE 'AutoCampaignMessage' END AS owner_type,
       COUNT(
               CASE
                   WHEN er.status IN ('opened', 'clicked') THEN COALESCE(er.email_log_id:: text, er.uuid) END
       )                                  AS open_count
FROM springbig_production_logs.email_receipts er
         INNER JOIN springbig_production_dms.merchants AS m ON m.id = er.merchant_id
WHERE er.process_type IN ('Campaign', 'AutoCampaignLog')
  AND recipient_type = 'Member'
  AND DATE_TRUNC(
              'day',
              timestamp 'epoch' + er.epoch * interval '1 second'
      ) AT TIME ZONE m.time_zone >= TIMESTAMP '2024-05-05 23:37:49 UTC'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         er.merchant_id,
         (
             DATE_TRUNC(
                     'day',
                     timestamp 'epoch' + er.epoch * interval '1 second'
             ) AT TIME ZONE m.time_zone
             ),
         owner_type;

alter table merchant_email_open_daily_metrics_view_materialized
    owner to rails_gd75ob;

grant select on merchant_email_open_daily_metrics_view_materialized to lambda_production_redshift;

grant select on merchant_email_open_daily_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.member_preferred_sending_methods_materialized AUTO REFRESH YES AS
WITH ranked_sms_logs AS (SELECT member_id,
                                epoch,
                                merchant_id,
                                'sms' AS type,
                                rank
                         FROM (SELECT member_id,
                                      epoch,
                                      merchant_id,
                                      ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY epoch DESC) AS rank
                               FROM (SELECT sms_send.recipient_id AS member_id,
                                            sms_send.epoch        AS epoch,
                                            sms_send.merchant_id  AS merchant_id,
                                            ROW_NUMBER() OVER (
                                                PARTITION BY
                                                    sms_send.recipient_type,
                                                    sms_send.recipient_id,
                                                    sms_send.process_type,
                                                    sms_send.process_id
                                                )                 AS rank
                                     FROM sms_send
                                              INNER JOIN sms_receipts
                                                         ON sms_send.merchant_id = sms_receipts.merchant_id
                                                             AND sms_send.process_type = sms_receipts.process_type
                                                             AND sms_send.process_id = sms_receipts.process_id
                                                             AND sms_send.msg_reference = sms_receipts.message_uuid
                                     WHERE sms_send.recipient_type = 'Member') AS a
                               WHERE rank = 1) AS a),
     ranked_email_logs AS (SELECT recipient_id                                                      AS member_id,
                                  epoch                                                             AS epoch,
                                  email_receipts.merchant_id                                        AS merchant_id,
                                  'email'                                                           AS type,
                                  ROW_NUMBER() OVER (PARTITION BY recipient_id ORDER BY epoch DESC) AS rank
                           FROM email_receipts
                           WHERE recipient_type = 'Member'
                             AND status IN ('delivered', 'opened', 'clicked')),
     ranked_push_logs AS (SELECT member_id                                                      AS member_id,
                                 epoch                                                          AS epoch,
                                 messaging_logs.merchant_id                                     AS merchant_id,
                                 'push'                                                         AS type,
                                 ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY epoch DESC) AS rank
                          FROM messaging_logs
                          WHERE message_type = 'push'
                            AND COALESCE(json_extract_path_text(COALESCE(response, '{}'), 'failure'), '') != '1'),
     min_sent_time AS (SELECT member_id,
                              merchant_id,
                              type,
                              MIN(epoch) AS epoch
                       FROM (SELECT *
                             FROM ranked_sms_logs
                             WHERE rank <= 5
                             UNION ALL
                             SELECT *
                             FROM ranked_email_logs
                             WHERE rank <= 5
                             UNION ALL
                             SELECT *
                             FROM ranked_push_logs
                             WHERE rank <= 5) AS a
                       GROUP BY member_id,
                                merchant_id,
                                type),
     sms_clicks AS (SELECT shortened_urls.merchant_id,
                           shortened_urls.member_id                                                     AS member_id,
                           COUNT(DISTINCT (shortened_urls.owner_type || shortened_urls.owner_id::text)) AS count,
                           'sms'                                                                        AS type
                    FROM shortened_urls
                             INNER JOIN min_sent_time
                                        ON min_sent_time.member_id = shortened_urls.member_id
                                            AND min_sent_time.merchant_id = shortened_urls.merchant_id
                                            AND min_sent_time.type = 'sms'
                    WHERE shortened_urls.use_count > 0
                      AND shortened_urls.created_at > timestamp 'epoch' + min_sent_time.epoch * interval '1 second'
                    GROUP BY shortened_urls.merchant_id,
                             shortened_urls.member_id),
     email_opens AS (SELECT email_receipts.merchant_id,
                            email_receipts.recipient_id                                                AS member_id,
                            COUNT(DISTINCT (email_receipts.process_type || email_receipts.process_id)) AS count,
                            'email'                                                                    AS type
                     FROM email_receipts
                              INNER JOIN min_sent_time
                                         ON min_sent_time.member_id = email_receipts.recipient_id
                                             AND min_sent_time.merchant_id = email_receipts.merchant_id
                                             AND min_sent_time.type = 'email'
                     WHERE recipient_type = 'Member'
                       AND status IN ('opened', 'clicked')
                       AND email_receipts.epoch > min_sent_time.epoch
                     GROUP BY email_receipts.merchant_id,
                              email_receipts.recipient_id),
     push_opens AS (SELECT native_app_events.merchant_id,
                           native_app_events.member_id AS member_id,
                           COUNT(native_app_events.id) AS count,
                           'push'                      AS type
                    FROM native_app_events
                             INNER JOIN min_sent_time
                                        ON min_sent_time.member_id = native_app_events.member_id
                                            AND min_sent_time.merchant_id = native_app_events.merchant_id
                                            AND min_sent_time.type = 'push'
                    WHERE native_app_events.event_name = 'NativeApp::view-messagedetail'
                      AND native_app_events.epoch > min_sent_time.epoch
                    GROUP BY native_app_events.merchant_id,
                             native_app_events.member_id)
SELECT merchant_id,
       member_id,
       '{' || listagg(type::varchar, ', ') WITHIN GROUP (ORDER BY count DESC) || '}' AS methods
FROM (SELECT *
      FROM sms_clicks
      UNION ALL
      SELECT *
      FROM email_opens
      UNION ALL
      SELECT *
      FROM push_opens) AS a
GROUP BY merchant_id,
         member_id
;

alter table member_preferred_sending_methods_materialized
    owner to rails_gd75ob;

grant select on member_preferred_sending_methods_materialized to lambda_production_redshift;

grant select on member_preferred_sending_methods_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_message_daily_sent_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.auto_campaign_message_id,
       DATE_TRUNC('day', acl.first_sent_at)                           AS day_at,

       COUNT(*)                                                       AS sent_count,
       SUM(CASE WHEN acl.email_sent_at IS NOT NULL THEN 1 ELSE 0 END) AS email_sent_count,
       SUM(CASE WHEN acl.push_sent_at IS NOT NULL THEN 1 ELSE 0 END)  AS push_sent_count,
       SUM(CASE WHEN acl.sms_sent_at IS NOT NULL THEN 1 ELSE 0 END)   AS sms_sent_count,

       SUM(acl.email_credits)                                         AS email_credits,
       SUM(acl.push_credits)                                          AS push_credits,
       SUM(acl.sms_credits)                                           AS sms_credits
FROM springbig_production_aggregations.auto_campaign_log_sends acl
WHERE acl.first_sent_at >= TIMESTAMP '2024-05-06 23:22:29 UTC'
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         DATE_TRUNC('day', acl.first_sent_at);

alter table auto_campaign_message_daily_sent_metrics_view_materialized
    owner to rails_gd75ob;

grant select on auto_campaign_message_daily_sent_metrics_view_materialized to lambda_production_redshift;

grant select on auto_campaign_message_daily_sent_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_message_monthly_sent_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.auto_campaign_message_id,
       DATE_TRUNC('month', acl.first_sent_at)                         AS month_at,

       COUNT(*)                                                       AS sent_count,
       SUM(CASE WHEN acl.email_sent_at IS NOT NULL THEN 1 ELSE 0 END) AS email_sent_count,
       SUM(CASE WHEN acl.push_sent_at IS NOT NULL THEN 1 ELSE 0 END)  AS push_sent_count,
       SUM(CASE WHEN acl.sms_sent_at IS NOT NULL THEN 1 ELSE 0 END)   AS sms_sent_count,

       SUM(acl.email_credits)                                         AS email_credits,
       SUM(acl.push_credits)                                          AS push_credits,
       SUM(acl.sms_credits)                                           AS sms_credits
FROM springbig_production_aggregations.auto_campaign_log_sends acl
WHERE acl.first_sent_at >= TIMESTAMP '2024-05-06 23:22:37 UTC'
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         DATE_TRUNC('month', acl.first_sent_at);

alter table auto_campaign_message_monthly_sent_metrics_view_materialized
    owner to rails_gd75ob;

grant select on auto_campaign_message_monthly_sent_metrics_view_materialized to lambda_production_redshift;

grant select on auto_campaign_message_monthly_sent_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.caddie_members_view_materialized AS
SELECT members.merchant_id,
       members.medical::VARCHAR IN ('true', '1')      AS medical,
       members.recreational::VARCHAR IN ('true', '1') AS recreational,
       members.birthday,
       members.gender,
       members.last_visit_date,
       members.created_at,
       members.id,
       (
           CASE
               WHEN members.birthday IS NULL THEN NULL
               ELSE DATE_DIFF('year', DATE(members.birthday), CURRENT_DATE)
               END
           )                                          AS age
FROM members;

alter table caddie_members_view_materialized
    owner to rails_gd75ob;

grant select on caddie_members_view_materialized to lambda_production_redshift;

grant select on caddie_members_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_sent_metrics_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.campaign_sent_at,

       COUNT(*)                                                      AS sent_count,
       SUM(CASE WHEN cl.email_sent_at IS NOT NULL THEN 1 ELSE 0 END) AS email_sent_count,
       SUM(CASE WHEN cl.push_sent_at IS NOT NULL THEN 1 ELSE 0 END)  AS push_sent_count,
       SUM(CASE WHEN cl.sms_sent_at IS NOT NULL THEN 1 ELSE 0 END)   AS sms_sent_count,

       SUM(cl.email_credits)                                         AS email_credits,
       SUM(cl.push_credits)                                          AS push_credits,
       SUM(cl.sms_credits)                                           AS sms_credits
FROM springbig_production_aggregations.campaign_logs cl
WHERE cl.first_sent_at >= TIMESTAMP '2024-05-07 02:03:01 UTC'
GROUP BY cl.merchant_id,
         cl.campaign_id,
         cl.campaign_sent_at;

alter table campaign_sent_metrics_view_materialized
    owner to rails_gd75ob;

grant select on campaign_sent_metrics_view_materialized to lambda_production_redshift;

grant select on campaign_sent_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-eUBMU5WpCl */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_email_metrics_hard_bounce_count_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       cl.sms_sent_at,
       cl.push_sent_at,
       cl.email_sent_at,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '6 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_6h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '12 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_12h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '24 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_24h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '48 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_48h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '120 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_120h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '168 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_168h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint')
                       AND
                        (timestamp 'epoch' + er.epoch * interval '1 second') < cl.email_sent_at + INTERVAL '336 hours'
                       THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_336h,
       SUM(
               CASE
                   WHEN er.status = 'failed'
                       AND LOWER(COALESCE(severity, '')) = 'permanent'
                       AND LOWER(COALESCE(reason, '')) NOT IN ('suppress-unsubscribe', 'suppress-complaint') THEN 1
                   ELSE 0 END
       ) AS hard_bounce_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_logs.email_receipts er ON er.recipient_id = cl.member_id
    AND er.process_id = cl.campaign_id
    AND er.process_type = 'Campaign'
    AND (timestamp 'epoch' + er.epoch * interval '1 second') BETWEEN cl.email_sent_at
                                                                       AND cl.email_sent_at + INTERVAL '30 days'
WHERE cl.email_sent_at > TIMESTAMP '2025-02-19 23:36:51 UTC'
  AND er.recipient_type = 'Member'
GROUP BY COALESCE(er.email_log_id:: text, er.uuid),
         cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at,
         cl.sms_sent_at,
         cl.push_sent_at,
         cl.email_sent_at;

alter table campaign_log_email_metrics_hard_bounce_count_view_materialized
    owner to rails_gd75ob;

grant select on campaign_log_email_metrics_hard_bounce_count_view_materialized to lambda_production_redshift;

grant select on campaign_log_email_metrics_hard_bounce_count_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

/* RQEV2-Hq0AckogEm */
CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_log_transaction_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.member_id,
       acl.auto_campaign_message_id,
       acl.auto_campaign_log_id,
       acl.auto_campaign_log_created_at,
       acl.first_sent_at,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '6 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '12 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '24 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '48 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '120 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '168 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '336 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '6 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '12 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '24 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '48 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '120 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '168 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '336 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '720 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '6 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '12 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '24 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '48 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '120 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '168 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '336 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '720 hours'
                       AND acl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '6 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '12 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '24 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '48 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '120 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '168 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '336 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '720 hours'
                       AND acl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '6 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '12 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '24 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '48 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '120 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '168 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.first_sent_at + INTERVAL '336 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '6 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '12 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '24 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '48 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '120 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '168 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '336 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.sms_sent_at + INTERVAL '720 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '6 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '12 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '24 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '48 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '120 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '168 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '336 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.push_sent_at + INTERVAL '720 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '6 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '12 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '24 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '48 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '120 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '168 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '336 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < acl.email_sent_at + INTERVAL '720 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_720h,
       SUM(td.transaction_total) AS spent_720h,
       COUNT(*)                  AS visit_count_720h
FROM springbig_production_aggregations.auto_campaign_log_sends acl
         INNER JOIN springbig_production_dms.transaction_details td ON td.member_id = acl.member_id
    AND td.transaction_date BETWEEN acl.first_sent_at
                                                                           AND acl.first_sent_at + INTERVAL '30 days'
WHERE acl.first_sent_at >= TIMESTAMP '2024-05-06 23:21:02 UTC'
  AND td.real IN ('true', '1')
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         acl.member_id,
         acl.auto_campaign_log_id,
         acl.auto_campaign_log_created_at,
         acl.first_sent_at;

alter table auto_campaign_log_transaction_metrics_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_log_transaction_metrics_view_materialized to rails_gd75ob;

grant select on auto_campaign_log_transaction_metrics_view_materialized to ghuppert_m8e4d7;

grant select on auto_campaign_log_transaction_metrics_view_materialized to aggregate_sms_data_fdif4h;

grant select on auto_campaign_log_transaction_metrics_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_log_transaction_metrics_view_materialized to glue_admin_a99j6d;

grant select on auto_campaign_log_transaction_metrics_view_materialized to glue_admin_d3a7h2;

grant select on auto_campaign_log_transaction_metrics_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_log_transaction_metrics_view_materialized to redshift_data_copy_l799nl;

grant select on auto_campaign_log_transaction_metrics_view_materialized to "awsidc:ypark@springbig.com";

grant select on auto_campaign_log_transaction_metrics_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-dpprHcvsvB */
CREATE MATERIALIZED VIEW springbig_production_aggregations.caddie_visits_view_materialized AS
SELECT td.id,
       td.merchant_id,
       td.member_id,
       td.transaction_total,
       td.transaction_date,
       td.points_available,
       td.pos_type,
       td.location,
       td.transaction_date AT TIME ZONE m.time_zone AS trans_date_tz,
       CAST(
               EXTRACT(
                       DOW
                       FROM
                       td.transaction_date AT TIME ZONE m.time_zone
               ) AS BIGINT
       )                                            AS day_of_week,
       CAST(
               EXTRACT(
                       HOUR
                       FROM
                       td.transaction_date AT TIME ZONE m.time_zone
               ) AS BIGINT
       )                                            AS trans_hour,
       CAST(
               EXTRACT(
                       MINUTE
                       FROM
                       td.transaction_date AT TIME ZONE m.time_zone
               ) AS BIGINT
       )                                            AS trans_min
FROM transaction_details td
         INNER JOIN merchants m ON m.id = td.merchant_id;

alter table caddie_visits_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on caddie_visits_view_materialized to rails_gd75ob;

grant select on caddie_visits_view_materialized to ghuppert_m8e4d7;

grant select on caddie_visits_view_materialized to aggregate_sms_data_fdif4h;

grant select on caddie_visits_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on caddie_visits_view_materialized to glue_admin_a99j6d;

grant select on caddie_visits_view_materialized to glue_admin_d3a7h2;

grant select on caddie_visits_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on caddie_visits_view_materialized to redshift_data_copy_l799nl;

grant select on caddie_visits_view_materialized to "awsidc:ypark@springbig.com";

grant select on caddie_visits_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-rTbRHEJ3DF */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_click_metrics_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '6 hours' THEN su.use_count END
       )                 AS click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '12 hours' THEN su.use_count END
       )                 AS click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '24 hours' THEN su.use_count END
       )                 AS click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '48 hours' THEN su.use_count END
       )                 AS click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '120 hours' THEN su.use_count END
       )                 AS click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '168 hours' THEN su.use_count END
       )                 AS click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < cl.campaign_sent_at + INTERVAL '336 hours' THEN su.use_count END
       )                 AS click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '6 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '12 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '24 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '48 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '120 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '168 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '336 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < cl.sms_sent_at + INTERVAL '720 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_720h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '6 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '12 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '24 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '48 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '120 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '168 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '336 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < cl.push_sent_at + INTERVAL '720 hours'
                       AND cl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_720h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '6 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '12 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '24 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '48 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '120 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '168 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '336 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < cl.email_sent_at + INTERVAL '720 hours'
                       AND cl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_720h,
       SUM(su.use_count) AS click_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_dms.shortened_urls su ON su.member_id = cl.member_id
    AND su.owner_id = cl.campaign_id
    AND su.owner_type = 'Campaign'
    AND su.created_at BETWEEN cl.campaign_sent_at
                                                                      AND cl.campaign_sent_at + INTERVAL '30 days'
WHERE cl.campaign_sent_at > TIMESTAMP '2024-05-07 01:53:23 UTC'
GROUP BY cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at;

alter table campaign_log_click_metrics_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaign_log_click_metrics_view_materialized to rails_gd75ob;

grant select on campaign_log_click_metrics_view_materialized to ghuppert_m8e4d7;

grant select on campaign_log_click_metrics_view_materialized to aggregate_sms_data_fdif4h;

grant select on campaign_log_click_metrics_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on campaign_log_click_metrics_view_materialized to glue_admin_a99j6d;

grant select on campaign_log_click_metrics_view_materialized to glue_admin_d3a7h2;

grant select on campaign_log_click_metrics_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on campaign_log_click_metrics_view_materialized to redshift_data_copy_l799nl;

grant select on campaign_log_click_metrics_view_materialized to "awsidc:ypark@springbig.com";

grant select on campaign_log_click_metrics_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-zHHCtfkRqR */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_transaction_metrics_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '6 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '12 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '24 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '48 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '120 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '168 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '336 hours' THEN td.transaction_total
                   ELSE 0 END
       )                         AS spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '6 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '12 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '24 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '48 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '120 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '168 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '336 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '720 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS sms_spent_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '6 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '12 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '24 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '48 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '120 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '168 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '336 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '720 hours'
                       AND cl.push_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS push_spent_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '6 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '12 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '24 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '48 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '120 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '168 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '336 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '720 hours'
                       AND cl.email_sent_at IS NOT NULL THEN td.transaction_total
                   ELSE 0 END
       )                         AS email_spent_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '6 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '12 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '24 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '48 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '120 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '168 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.campaign_sent_at + INTERVAL '336 hours' THEN 1
                   ELSE 0 END
       )                         AS visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '6 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '12 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '24 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '48 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '120 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '168 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '336 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.sms_sent_at + INTERVAL '720 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS sms_visit_count_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '6 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '12 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '24 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '48 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '120 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '168 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '336 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.push_sent_at + INTERVAL '720 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS push_visit_count_720h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '6 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_6h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '12 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_12h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '24 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_24h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '48 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_48h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '120 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_120h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '168 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_168h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '336 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_336h,
       SUM(
               CASE
                   WHEN td.transaction_date < cl.email_sent_at + INTERVAL '720 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                         AS email_visit_count_720h,
       SUM(td.transaction_total) AS spent_720h,
       COUNT(*)                  AS visit_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_dms.transaction_details td ON td.member_id = cl.member_id
    AND td.transaction_date BETWEEN cl.campaign_sent_at
                                                                           AND cl.campaign_sent_at + INTERVAL '30 days'
WHERE cl.campaign_sent_at >= TIMESTAMP '2024-05-07 01:55:40 UTC'
  AND td.real IN ('true', '1')
GROUP BY cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at;

alter table campaign_log_transaction_metrics_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaign_log_transaction_metrics_view_materialized to rails_gd75ob;

grant select on campaign_log_transaction_metrics_view_materialized to ghuppert_m8e4d7;

grant select on campaign_log_transaction_metrics_view_materialized to aggregate_sms_data_fdif4h;

grant select on campaign_log_transaction_metrics_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on campaign_log_transaction_metrics_view_materialized to glue_admin_a99j6d;

grant select on campaign_log_transaction_metrics_view_materialized to glue_admin_d3a7h2;

grant select on campaign_log_transaction_metrics_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on campaign_log_transaction_metrics_view_materialized to redshift_data_copy_l799nl;

grant select on campaign_log_transaction_metrics_view_materialized to "awsidc:ypark@springbig.com";

grant select on campaign_log_transaction_metrics_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-8PSimYIoEr */
CREATE MATERIALIZED VIEW springbig_production_aggregations.campaign_log_redemption_metrics_view_materialized AUTO REFRESH YES AS
SELECT cl.merchant_id,
       cl.campaign_id,
       cl.member_id,
       cl.campaign_sent_at,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '6 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '12 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '24 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '48 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '120 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '168 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.campaign_sent_at + INTERVAL '336 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '6 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '12 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '24 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '48 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '120 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '168 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '336 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.sms_sent_at + INTERVAL '720 hours'
                       AND cl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_720h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '6 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '12 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '24 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '48 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '120 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '168 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '336 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.push_sent_at + INTERVAL '720 hours'
                       AND cl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_720h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '6 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '12 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '24 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '48 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '120 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '168 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '336 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < cl.email_sent_at + INTERVAL '720 hours'
                       AND cl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_720h,
       COUNT(trr.member_id) AS redemption_count_720h
FROM springbig_production_aggregations.campaign_logs cl
         INNER JOIN springbig_production_dms.program_item_values piv ON piv.communication_id = cl.campaign_id
    AND piv.communication_type = 'Campaign'
         INNER JOIN springbig_production_dms.transaction_reward_redemptions trr ON trr.reward_id = piv.id
    AND trr.member_id = cl.member_id
    AND trr.updated_at BETWEEN cl.campaign_sent_at
                                                                                       AND cl.campaign_sent_at + INTERVAL '30 days'
WHERE cl.campaign_sent_at >= TIMESTAMP '2024-05-07 01:55:15 UTC'
  AND piv.merchant_id IS NOT NULL
  AND trr.member_id IS NOT NULL
GROUP BY cl.merchant_id,
         cl.campaign_id,
         cl.member_id,
         cl.campaign_sent_at;

alter table campaign_log_redemption_metrics_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaign_log_redemption_metrics_view_materialized to rails_gd75ob;

grant select on campaign_log_redemption_metrics_view_materialized to ghuppert_m8e4d7;

grant select on campaign_log_redemption_metrics_view_materialized to aggregate_sms_data_fdif4h;

grant select on campaign_log_redemption_metrics_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on campaign_log_redemption_metrics_view_materialized to glue_admin_a99j6d;

grant select on campaign_log_redemption_metrics_view_materialized to glue_admin_d3a7h2;

grant select on campaign_log_redemption_metrics_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on campaign_log_redemption_metrics_view_materialized to redshift_data_copy_l799nl;

grant select on campaign_log_redemption_metrics_view_materialized to "awsidc:ypark@springbig.com";

grant select on campaign_log_redemption_metrics_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-XQPV3lEzGx */
CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_log_click_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.member_id,
       acl.auto_campaign_message_id,
       acl.auto_campaign_log_id,
       acl.auto_campaign_log_created_at,
       acl.first_sent_at,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '6 hours' THEN su.use_count END
       )                 AS click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '12 hours' THEN su.use_count END
       )                 AS click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '24 hours' THEN su.use_count END
       )                 AS click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '48 hours' THEN su.use_count END
       )                 AS click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '120 hours' THEN su.use_count END
       )                 AS click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '168 hours' THEN su.use_count END
       )                 AS click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < acl.first_sent_at + INTERVAL '336 hours' THEN su.use_count END
       )                 AS click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '6 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '12 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '24 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '48 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '120 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '168 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '336 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < acl.sms_sent_at + INTERVAL '720 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN su.use_count END
       )                 AS sms_click_count_720h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '6 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '12 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '24 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '48 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '120 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '168 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '336 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < acl.push_sent_at + INTERVAL '720 hours'
                       AND acl.push_sent_at IS NOT NULL THEN su.use_count END
       )                 AS push_click_count_720h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '6 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_6h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '12 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_12h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '24 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_24h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '48 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_48h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '120 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_120h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '168 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_168h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '336 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_336h,
       SUM(
               CASE
                   WHEN su.created_at < acl.email_sent_at + INTERVAL '720 hours'
                       AND acl.email_sent_at IS NOT NULL THEN su.use_count END
       )                 AS email_click_count_720h,
       SUM(su.use_count) AS click_count_720h
FROM springbig_production_aggregations.auto_campaign_log_sends acl
         INNER JOIN springbig_production_dms.shortened_urls su ON su.member_id = acl.member_id
    AND su.owner_id = acl.auto_campaign_message_id
    AND su.owner_type = 'AutoCampaignMessage'
    AND su.created_at BETWEEN acl.first_sent_at
                                                                      AND acl.first_sent_at + INTERVAL '30 days'
WHERE acl.first_sent_at > TIMESTAMP '2024-05-06 23:18:03 UTC'
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         acl.member_id,
         acl.auto_campaign_log_id,
         acl.auto_campaign_log_created_at,
         acl.first_sent_at;

alter table auto_campaign_log_click_metrics_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_log_click_metrics_view_materialized to rails_gd75ob;

grant select on auto_campaign_log_click_metrics_view_materialized to ghuppert_m8e4d7;

grant select on auto_campaign_log_click_metrics_view_materialized to aggregate_sms_data_fdif4h;

grant select on auto_campaign_log_click_metrics_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_log_click_metrics_view_materialized to glue_admin_a99j6d;

grant select on auto_campaign_log_click_metrics_view_materialized to glue_admin_d3a7h2;

grant select on auto_campaign_log_click_metrics_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_log_click_metrics_view_materialized to redshift_data_copy_l799nl;

grant select on auto_campaign_log_click_metrics_view_materialized to "awsidc:ypark@springbig.com";

grant select on auto_campaign_log_click_metrics_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-LJ7o4yXxWq */
CREATE MATERIALIZED VIEW springbig_production_aggregations.auto_campaign_log_redemption_metrics_view_materialized AUTO REFRESH YES AS
SELECT acl.merchant_id,
       acl.auto_campaign_id,
       acl.member_id,
       acl.auto_campaign_message_id,
       acl.auto_campaign_log_id,
       acl.auto_campaign_log_created_at,
       acl.first_sent_at,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '6 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '12 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '24 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '48 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '120 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '168 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.first_sent_at + INTERVAL '336 hours' THEN 1
                   ELSE 0 END
       )                    AS redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '6 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '12 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '24 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '48 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '120 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '168 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '336 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.sms_sent_at + INTERVAL '720 hours'
                       AND acl.sms_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS sms_redemption_count_720h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '6 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '12 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '24 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '48 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '120 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '168 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '336 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.push_sent_at + INTERVAL '720 hours'
                       AND acl.push_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS push_redemption_count_720h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '6 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_6h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '12 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_12h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '24 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_24h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '48 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_48h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '120 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_120h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '168 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_168h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '336 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_336h,
       SUM(
               CASE
                   WHEN trr.created_at < acl.email_sent_at + INTERVAL '720 hours'
                       AND acl.email_sent_at IS NOT NULL THEN 1
                   ELSE 0 END
       )                    AS email_redemption_count_720h,
       COUNT(trr.member_id) AS redemption_count_720h
FROM springbig_production_aggregations.auto_campaign_log_sends acl
         INNER JOIN springbig_production_dms.program_item_values piv
                    ON piv.communication_id = acl.auto_campaign_message_id
                        AND piv.communication_type = 'AutoCampaignMessage'
         INNER JOIN springbig_production_dms.transaction_reward_redemptions trr ON trr.reward_id = piv.id
    AND trr.member_id = acl.member_id
    AND trr.updated_at BETWEEN acl.first_sent_at
                                                                                       AND acl.first_sent_at + INTERVAL '30 days'
         INNER JOIN springbig_production_dms.reward_grants rg ON rg.id = trr.reward_grant_id
    AND rg.unique_index_key LIKE (
        'auto_campaign_log_' || acl.auto_campaign_log_id || '%'
        ) -- auto_campaign_log_5217685_member_13997947
WHERE acl.first_sent_at >= TIMESTAMP '2024-05-06 23:19:25 UTC'
  AND piv.merchant_id IS NOT NULL
  AND trr.member_id IS NOT NULL
GROUP BY acl.merchant_id,
         acl.auto_campaign_id,
         acl.auto_campaign_message_id,
         acl.member_id,
         acl.auto_campaign_log_id,
         acl.auto_campaign_log_created_at,
         acl.first_sent_at,
         rg.id;

alter table auto_campaign_log_redemption_metrics_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_log_redemption_metrics_view_materialized to rails_gd75ob;

grant select on auto_campaign_log_redemption_metrics_view_materialized to ghuppert_m8e4d7;

grant select on auto_campaign_log_redemption_metrics_view_materialized to aggregate_sms_data_fdif4h;

grant select on auto_campaign_log_redemption_metrics_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_log_redemption_metrics_view_materialized to glue_admin_a99j6d;

grant select on auto_campaign_log_redemption_metrics_view_materialized to glue_admin_d3a7h2;

grant select on auto_campaign_log_redemption_metrics_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_log_redemption_metrics_view_materialized to redshift_data_copy_l799nl;

grant select on auto_campaign_log_redemption_metrics_view_materialized to "awsidc:ypark@springbig.com";

grant select on auto_campaign_log_redemption_metrics_view_materialized to "awsidc:mvizcaino@springbig.com";

CREATE MATERIALIZED VIEW springbig_production_aggregations.combined_communication_credits_view_materialized AUTO REFRESH YES AS
SELECT cc.*,
       CASE
           WHEN communication_type = 3 THEN 1
           WHEN cc.ad_id IS NOT NULL
               OR cc.auto_campaign_type = 20 THEN 0
           WHEN ems.credit_calculation_type = 2 THEN 2 + CASE
                                                             WHEN cc.communication_type = 1
                                                                 THEN COALESCE(ems.sms_credit_tax, 0)
                                                             ELSE 0 END + CASE
                                                                              WHEN template_image_id IS NULL THEN 0
                                                                              ELSE ems.mms_credit_cost END
           ELSE CASE
                    WHEN LOWER(COALESCE(ems.mmp_subscription, 'false'):: text) = 'true' THEN 0
                    WHEN cc.content_type = 4 THEN COALESCE(ems.full_image_credit_cost, 3)
                    ELSE num_images * 1 END + CASE
                                                  WHEN LOWER(COALESCE(ems.mmp_subscription, 'false'):: text) = 'true'
                                                      THEN 0
                                                  ELSE num_videos * 2 END + CASE
                                                                                WHEN
                                                                                    LOWER(COALESCE(ems.mmp_subscription, 'false'):: text) =
                                                                                    'true'
                                                                                        OR cc.num_images = 0
                                                                                        OR ems.stashboard_credit_cap = -1
                                                                                        OR
                                                                                    NOT ems.credit_calculation_type = 3
                                                                                    THEN 0
                                                                                ELSE -1 END + LEAST(
                        CASE
                            WHEN ems.credit_calculation_type = 3
                                AND NOT ems.stashboard_credit_cap = -1 THEN ems.stashboard_credit_cap
                            ELSE NULL END,
                        CASE
                            WHEN ems.credit_calculation_type = 0 THEN CASE
                                                                          WHEN ems.emoji_calculation_type = 0 THEN CASE
                                                                                                                       WHEN (
                                                                                                                           cc.num_pre_stashboard_emojis >
                                                                                                                           0
                                                                                                                               OR
                                                                                                                           cc.num_stashboard_emojis >
                                                                                                                           0
                                                                                                                           )
                                                                                                                           THEN CASE
                                                                                                                                    WHEN
                                                                                                                                        (
                                                                                                                                            cc.num_pre_stashboard_characters + cc.num_stashboard_characters
                                                                                                                                            ) <=
                                                                                                                                        70
                                                                                                                                        THEN 1
                                                                                                                                    ELSE CEILING(
                                                                                                                                            (
                                                                                                                                                cc.num_pre_stashboard_characters + cc.num_stashboard_characters
                                                                                                                                                ) /
                                                                                                                                            67.0
                                                                                                                                         ) END
                                                                                                                       ELSE CASE
                                                                                                                                WHEN
                                                                                                                                    (
                                                                                                                                        cc.num_pre_stashboard_characters + cc.num_stashboard_characters
                                                                                                                                        ) <=
                                                                                                                                    160.0
                                                                                                                                    THEN 1
                                                                                                                                ELSE CEILING(
                                                                                                                                        (
                                                                                                                                            cc.num_pre_stashboard_characters + cc.num_stashboard_characters
                                                                                                                                            ) /
                                                                                                                                        153.0
                                                                                                                                     ) END END
                                                                          ELSE CEILING(
                                                                                  (
                                                                                      cc.num_pre_stashboard_characters + cc.num_stashboard_characters
                                                                                      ) / 160.0
                                                                               ) END
                            WHEN ems.credit_calculation_type IN (1, 3) THEN CASE
                                                                                WHEN ems.emoji_calculation_type = 0
                                                                                    THEN CASE
                                                                                             WHEN cc.num_stashboard_emojis > 0
                                                                                                 THEN CASE
                                                                                                          WHEN cc.num_stashboard_characters <= 70
                                                                                                              THEN 1
                                                                                                          ELSE CEILING(cc.num_stashboard_characters / 67.0) END
                                                                                             ELSE CASE
                                                                                                      WHEN cc.num_stashboard_characters <= 160.0
                                                                                                          THEN 1
                                                                                                      ELSE CEILING(cc.num_stashboard_characters / 153.0) END END
                                                                                ELSE CEILING(cc.num_stashboard_characters / 160.0) END END
                                                                                              ) + CASE
                                                                                                      WHEN ems.credit_calculation_type = 3
                                                                                                          THEN CASE
                                                                                                                   WHEN ems.emoji_calculation_type = 0
                                                                                                                       THEN CASE
                                                                                                                                WHEN cc.num_pre_stashboard_emojis > 0
                                                                                                                                    THEN CASE
                                                                                                                                             WHEN cc.num_pre_stashboard_characters <= 70
                                                                                                                                                 THEN 1
                                                                                                                                             ELSE CEILING(cc.num_pre_stashboard_characters / 67.0) END
                                                                                                                                ELSE CASE
                                                                                                                                         WHEN cc.num_pre_stashboard_characters <= 160.0
                                                                                                                                             THEN 1
                                                                                                                                         ELSE CEILING(cc.num_pre_stashboard_characters / 153.0) END END
                                                                                                                   ELSE CEILING(cc.num_pre_stashboard_characters / 160.0) END
                                                                                                      ELSE 0 END + CASE
                                                                                                                       WHEN cc.communication_type = 1
                                                                                                                           THEN COALESCE(ems.sms_credit_tax, 0)
                                                                                                                       ELSE 0 END +
                CASE
                    WHEN template_image_id IS NULL THEN 0
                    ELSE ems.mms_credit_cost END END AS credits,
       CASE
           WHEN cc.communication_type = 1 THEN 1
           WHEN cc.communication_type = 2 THEN ems.push_to_sms_ratio
           WHEN cc.communication_type = 3 THEN ems.email_to_sms_ratio
           ELSE 0 END                                AS weight_factor
FROM springbig_production_aggregations.combined_communications cc
         INNER JOIN springbig_production_dms.external_merchant_settings_linearized ems
                    ON ems.merchant_id = cc.merchant_id
                        AND cc.communication_created_at BETWEEN ems.start_at
                           AND (
                                COALESCE(ems.end_at, '2100-01-01 00:00:00') - INTERVAL '0.000001 second'
                                );

alter table combined_communication_credits_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on combined_communication_credits_view_materialized to rails_gd75ob;

grant select on combined_communication_credits_view_materialized to ghuppert_m8e4d7;

grant select on combined_communication_credits_view_materialized to aggregate_sms_data_fdif4h;

grant select on combined_communication_credits_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on combined_communication_credits_view_materialized to glue_admin_a99j6d;

grant select on combined_communication_credits_view_materialized to glue_admin_d3a7h2;

grant select on combined_communication_credits_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on combined_communication_credits_view_materialized to redshift_data_copy_l799nl;

grant select on combined_communication_credits_view_materialized to "awsidc:ypark@springbig.com";

grant select on combined_communication_credits_view_materialized to "awsidc:mvizcaino@springbig.com";

/* RQEV2-mal1MbIqFP */
CREATE MATERIALIZED VIEW springbig_production_aggregations.caddie_visit_details_view_materialized AS
SELECT vd.id,
       vd.visit_id,
       vd.merchant_id,
       vd.member_id,
       vd.category,
       vd.brand,
       td.transaction_total,
       tags_p.id   AS category_tag_id,
       tags_p_2.id AS brand_tag_id,
       td.day_of_week
FROM visit_details vd
         JOIN caddie_visits_view_materialized td ON vd.visit_id = td.id
         LEFT JOIN tags "tags_p" ON regexp_replace(lower(trim(vd.category)), '[^a-z0-9_]', '-') = "tags_p".name
         LEFT JOIN tags "tags_p_2" ON regexp_replace(lower(trim(vd.brand)), '[^a-z0-9_]', '-') = "tags_p_2".name;

alter table caddie_visit_details_view_materialized
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on caddie_visit_details_view_materialized to rails_gd75ob;

grant select on caddie_visit_details_view_materialized to ghuppert_m8e4d7;

grant select on caddie_visit_details_view_materialized to aggregate_sms_data_fdif4h;

grant select on caddie_visit_details_view_materialized to analytics_process_incoming_events_oa32mf;

grant select on caddie_visit_details_view_materialized to glue_admin_a99j6d;

grant select on caddie_visit_details_view_materialized to glue_admin_d3a7h2;

grant select on caddie_visit_details_view_materialized to aggregate_campaign_redemptions_c81425;

grant select on caddie_visit_details_view_materialized to redshift_data_copy_l799nl;

grant select on caddie_visit_details_view_materialized to "awsidc:ypark@springbig.com";

grant select on caddie_visit_details_view_materialized to "awsidc:mvizcaino@springbig.com";

CREATE MATERIALIZED VIEW springbig_production_aggregations.merchant_click_daily_metrics_view_materialized AUTO REFRESH YES AS
SELECT su.merchant_id,
       DATE_TRUNC('day', su.created_at) AT TIME ZONE m.time_zone AS date_hour,
       su.owner_type                                             as owner_type,
       SUM(su.use_count)                                         AS click_count
FROM springbig_production_dms.shortened_urls su
         INNER JOIN springbig_production_dms.merchants m
                    ON m.id = su.merchant_id
WHERE su.updated_at >= TIMESTAMP '2024-06-10 05:02:01 UTC'
GROUP BY su.merchant_id,
         owner_type,
         date_hour
;

alter table merchant_click_daily_metrics_view_materialized
    owner to rails_gd75ob;

grant select on merchant_click_daily_metrics_view_materialized to lambda_production_redshift;

grant select on merchant_click_daily_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.merchant_transaction_daily_metrics_view_materialized AUTO REFRESH YES AS
SELECT td.merchant_id,
       DATE_TRUNC('day', td.transaction_date) AT TIME ZONE m.time_zone AS date_hour,

       SUM(td.transaction_total)                                       AS spent,
       COUNT(*)                                                        AS visit_count
FROM springbig_production_dms.transaction_details td
         INNER JOIN springbig_production_dms.merchants m ON m.id = td.merchant_id
WHERE td.transaction_date >= TIMESTAMP '2024-06-10 05:02:01 UTC'
  AND td.real IN ('true', '1')
GROUP BY td.merchant_id,
         date_hour
;

alter table merchant_transaction_daily_metrics_view_materialized
    owner to rails_gd75ob;

grant select on merchant_transaction_daily_metrics_view_materialized to lambda_production_redshift;

grant select on merchant_transaction_daily_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.merchant_sent_daily_metrics_view_materialized AUTO REFRESH YES AS
SELECT cc.merchant_id,
       cc.process_type                                                         as owner_type,
       DATE_TRUNC('day', cc.communication_created_at) AT TIME ZONE m.time_zone AS date_hour,

       COUNT(*)                                                                AS sent_count,
       SUM(CASE WHEN cc.process_offer IS TRUE THEN 1 ELSE 0 END)               AS offer_sent_count,
       SUM(CASE
               WHEN cc.communication_type = 3
                   THEN 1
               ELSE 0 END)                                                     AS email_sent_count,
       SUM(CASE
               WHEN cc.communication_type = 2
                   THEN 1
               ELSE 0 END)                                                     AS push_sent_count,
       SUM(CASE
               WHEN cc.communication_type = 1
                   THEN 1
               ELSE 0 END)                                                     AS sms_sent_count,
       SUM(CASE
               WHEN cc.communication_type = 4
                   THEN 1
               ELSE 0 END)                                                     AS imessage_sent_count,

       SUM(CASE
               WHEN cc.communication_type = 3
                   THEN CASE
                            WHEN communication_type = 3
                                THEN 1
                            WHEN cc.ad_id IS NOT NULL OR cc.auto_campaign_type = 20
                                THEN 0
                            WHEN ems.credit_calculation_type = 2
                                THEN 2
                                + CASE WHEN cc.communication_type = 1 THEN COALESCE(ems.sms_credit_tax, 0) ELSE 0 END
                                + CASE WHEN template_image_id IS NULL THEN 0 ELSE ems.mms_credit_cost END

                            ELSE CASE
                                     WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true' THEN 0
                                     WHEN cc.content_type = 4 THEN COALESCE(ems.full_image_credit_cost, 3)
                                     ELSE num_images * 1
                                     END
                                + CASE
                                      WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true' THEN 0
                                      ELSE num_videos * 2 END
                                + CASE
                                      WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true'
                                          OR cc.num_images = 0
                                          OR ems.stashboard_credit_cap = -1
                                          OR NOT ems.credit_calculation_type = 3
                                          THEN 0
                                      ELSE -1
                                     END
                                + LEAST(
                                         CASE
                                             WHEN ems.credit_calculation_type = 3
                                                 AND NOT ems.stashboard_credit_cap = -1
                                                 THEN ems.stashboard_credit_cap
                                             ELSE NULL
                                             END,
                                         CASE
                                             WHEN ems.credit_calculation_type = 0
                                                 THEN CASE
                                                          WHEN ems.emoji_calculation_type = 0
                                                              THEN CASE
                                                                       WHEN (cc.num_pre_stashboard_emojis > 0 OR cc.num_stashboard_emojis > 0)
                                                                           THEN CASE
                                                                                    WHEN (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) <= 70
                                                                                        THEN 1
                                                                                    ELSE CEILING(
                                                                                            (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                                            67.0)
                                                                           END
                                                                       ELSE CASE
                                                                                WHEN
                                                                                    (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) <=
                                                                                    160.0
                                                                                    THEN 1
                                                                                ELSE CEILING(
                                                                                        (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                                        153.0)
                                                                           END
                                                              END

                                                          ELSE CEILING(
                                                                  (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                  160.0)
                                                 END
                                             WHEN ems.credit_calculation_type IN (1, 3)
                                                 THEN CASE
                                                          WHEN ems.emoji_calculation_type = 0
                                                              THEN CASE
                                                                       WHEN cc.num_stashboard_emojis > 0
                                                                           THEN CASE
                                                                                    WHEN cc.num_stashboard_characters <= 70
                                                                                        THEN 1
                                                                                    ELSE CEILING(cc.num_stashboard_characters / 67.0)
                                                                           END
                                                                       ELSE CASE
                                                                                WHEN cc.num_stashboard_characters <= 160.0
                                                                                    THEN 1
                                                                                ELSE CEILING(cc.num_stashboard_characters / 153.0)
                                                                           END
                                                              END

                                                          ELSE CEILING(cc.num_stashboard_characters / 160.0)
                                                 END
                                             END
                                  )
                                + CASE
                                      WHEN ems.credit_calculation_type = 3
                                          THEN CASE
                                                   WHEN ems.emoji_calculation_type = 0
                                                       THEN CASE
                                                                WHEN cc.num_pre_stashboard_emojis > 0
                                                                    THEN CASE
                                                                             WHEN cc.num_pre_stashboard_characters <= 70
                                                                                 THEN 1
                                                                             ELSE CEILING(cc.num_pre_stashboard_characters / 67.0)
                                                                    END
                                                                ELSE CASE
                                                                         WHEN cc.num_pre_stashboard_characters <= 160.0
                                                                             THEN 1
                                                                         ELSE CEILING(cc.num_pre_stashboard_characters / 153.0)
                                                                    END
                                                       END

                                                   ELSE CEILING(cc.num_pre_stashboard_characters / 160.0)
                                          END
                                      ELSE 0
                                     END
                                + CASE WHEN cc.communication_type = 1 THEN COALESCE(ems.sms_credit_tax, 0) ELSE 0 END
                                + CASE WHEN template_image_id IS NULL THEN 0 ELSE ems.mms_credit_cost END
                   END
               ELSE 0 END)                                                     AS email_credits,
       SUM(CASE
               WHEN cc.communication_type = 2
                   THEN CASE
                            WHEN communication_type = 3
                                THEN 1
                            WHEN cc.ad_id IS NOT NULL OR cc.auto_campaign_type = 20
                                THEN 0
                            WHEN ems.credit_calculation_type = 2
                                THEN 2
                                + CASE WHEN cc.communication_type = 1 THEN COALESCE(ems.sms_credit_tax, 0) ELSE 0 END
                                + CASE WHEN template_image_id IS NULL THEN 0 ELSE ems.mms_credit_cost END

                            ELSE CASE
                                     WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true' THEN 0
                                     WHEN cc.content_type = 4 THEN COALESCE(ems.full_image_credit_cost, 3)
                                     ELSE num_images * 1
                                     END
                                + CASE
                                      WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true' THEN 0
                                      ELSE num_videos * 2 END
                                + CASE
                                      WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true'
                                          OR cc.num_images = 0
                                          OR ems.stashboard_credit_cap = -1
                                          OR NOT ems.credit_calculation_type = 3
                                          THEN 0
                                      ELSE -1
                                     END
                                + LEAST(
                                         CASE
                                             WHEN ems.credit_calculation_type = 3
                                                 AND NOT ems.stashboard_credit_cap = -1
                                                 THEN ems.stashboard_credit_cap
                                             ELSE NULL
                                             END,
                                         CASE
                                             WHEN ems.credit_calculation_type = 0
                                                 THEN CASE
                                                          WHEN ems.emoji_calculation_type = 0
                                                              THEN CASE
                                                                       WHEN (cc.num_pre_stashboard_emojis > 0 OR cc.num_stashboard_emojis > 0)
                                                                           THEN CASE
                                                                                    WHEN (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) <= 70
                                                                                        THEN 1
                                                                                    ELSE CEILING(
                                                                                            (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                                            67.0)
                                                                           END
                                                                       ELSE CASE
                                                                                WHEN
                                                                                    (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) <=
                                                                                    160.0
                                                                                    THEN 1
                                                                                ELSE CEILING(
                                                                                        (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                                        153.0)
                                                                           END
                                                              END

                                                          ELSE CEILING(
                                                                  (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                  160.0)
                                                 END
                                             WHEN ems.credit_calculation_type IN (1, 3)
                                                 THEN CASE
                                                          WHEN ems.emoji_calculation_type = 0
                                                              THEN CASE
                                                                       WHEN cc.num_stashboard_emojis > 0
                                                                           THEN CASE
                                                                                    WHEN cc.num_stashboard_characters <= 70
                                                                                        THEN 1
                                                                                    ELSE CEILING(cc.num_stashboard_characters / 67.0)
                                                                           END
                                                                       ELSE CASE
                                                                                WHEN cc.num_stashboard_characters <= 160.0
                                                                                    THEN 1
                                                                                ELSE CEILING(cc.num_stashboard_characters / 153.0)
                                                                           END
                                                              END

                                                          ELSE CEILING(cc.num_stashboard_characters / 160.0)
                                                 END
                                             END
                                  )
                                + CASE
                                      WHEN ems.credit_calculation_type = 3
                                          THEN CASE
                                                   WHEN ems.emoji_calculation_type = 0
                                                       THEN CASE
                                                                WHEN cc.num_pre_stashboard_emojis > 0
                                                                    THEN CASE
                                                                             WHEN cc.num_pre_stashboard_characters <= 70
                                                                                 THEN 1
                                                                             ELSE CEILING(cc.num_pre_stashboard_characters / 67.0)
                                                                    END
                                                                ELSE CASE
                                                                         WHEN cc.num_pre_stashboard_characters <= 160.0
                                                                             THEN 1
                                                                         ELSE CEILING(cc.num_pre_stashboard_characters / 153.0)
                                                                    END
                                                       END

                                                   ELSE CEILING(cc.num_pre_stashboard_characters / 160.0)
                                          END
                                      ELSE 0
                                     END
                                + CASE WHEN cc.communication_type = 1 THEN COALESCE(ems.sms_credit_tax, 0) ELSE 0 END
                                + CASE WHEN template_image_id IS NULL THEN 0 ELSE ems.mms_credit_cost END
                   END
               ELSE 0 END)                                                     AS push_credits,
       SUM(CASE
               WHEN cc.communication_type = 1
                   THEN CASE
                            WHEN communication_type = 3
                                THEN 1
                            WHEN cc.ad_id IS NOT NULL OR cc.auto_campaign_type = 20
                                THEN 0
                            WHEN ems.credit_calculation_type = 2
                                THEN 2
                                + CASE WHEN cc.communication_type = 1 THEN COALESCE(ems.sms_credit_tax, 0) ELSE 0 END
                                + CASE WHEN template_image_id IS NULL THEN 0 ELSE ems.mms_credit_cost END

                            ELSE CASE
                                     WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true' THEN 0
                                     WHEN cc.content_type = 4 THEN COALESCE(ems.full_image_credit_cost, 3)
                                     ELSE num_images * 1
                                     END
                                + CASE
                                      WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true' THEN 0
                                      ELSE num_videos * 2 END
                                + CASE
                                      WHEN LOWER(COALESCE(ems.mmp_subscription, 'false')::text) = 'true'
                                          OR cc.num_images = 0
                                          OR ems.stashboard_credit_cap = -1
                                          OR NOT ems.credit_calculation_type = 3
                                          THEN 0
                                      ELSE -1
                                     END
                                + LEAST(
                                         CASE
                                             WHEN ems.credit_calculation_type = 3
                                                 AND NOT ems.stashboard_credit_cap = -1
                                                 THEN ems.stashboard_credit_cap
                                             ELSE NULL
                                             END,
                                         CASE
                                             WHEN ems.credit_calculation_type = 0
                                                 THEN CASE
                                                          WHEN ems.emoji_calculation_type = 0
                                                              THEN CASE
                                                                       WHEN (cc.num_pre_stashboard_emojis > 0 OR cc.num_stashboard_emojis > 0)
                                                                           THEN CASE
                                                                                    WHEN (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) <= 70
                                                                                        THEN 1
                                                                                    ELSE CEILING(
                                                                                            (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                                            67.0)
                                                                           END
                                                                       ELSE CASE
                                                                                WHEN
                                                                                    (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) <=
                                                                                    160.0
                                                                                    THEN 1
                                                                                ELSE CEILING(
                                                                                        (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                                        153.0)
                                                                           END
                                                              END

                                                          ELSE CEILING(
                                                                  (cc.num_pre_stashboard_characters + cc.num_stashboard_characters) /
                                                                  160.0)
                                                 END
                                             WHEN ems.credit_calculation_type IN (1, 3)
                                                 THEN CASE
                                                          WHEN ems.emoji_calculation_type = 0
                                                              THEN CASE
                                                                       WHEN cc.num_stashboard_emojis > 0
                                                                           THEN CASE
                                                                                    WHEN cc.num_stashboard_characters <= 70
                                                                                        THEN 1
                                                                                    ELSE CEILING(cc.num_stashboard_characters / 67.0)
                                                                           END
                                                                       ELSE CASE
                                                                                WHEN cc.num_stashboard_characters <= 160.0
                                                                                    THEN 1
                                                                                ELSE CEILING(cc.num_stashboard_characters / 153.0)
                                                                           END
                                                              END

                                                          ELSE CEILING(cc.num_stashboard_characters / 160.0)
                                                 END
                                             END
                                  )
                                + CASE
                                      WHEN ems.credit_calculation_type = 3
                                          THEN CASE
                                                   WHEN ems.emoji_calculation_type = 0
                                                       THEN CASE
                                                                WHEN cc.num_pre_stashboard_emojis > 0
                                                                    THEN CASE
                                                                             WHEN cc.num_pre_stashboard_characters <= 70
                                                                                 THEN 1
                                                                             ELSE CEILING(cc.num_pre_stashboard_characters / 67.0)
                                                                    END
                                                                ELSE CASE
                                                                         WHEN cc.num_pre_stashboard_characters <= 160.0
                                                                             THEN 1
                                                                         ELSE CEILING(cc.num_pre_stashboard_characters / 153.0)
                                                                    END
                                                       END

                                                   ELSE CEILING(cc.num_pre_stashboard_characters / 160.0)
                                          END
                                      ELSE 0
                                     END
                                + CASE WHEN cc.communication_type = 1 THEN COALESCE(ems.sms_credit_tax, 0) ELSE 0 END
                                + CASE WHEN template_image_id IS NULL THEN 0 ELSE ems.mms_credit_cost END
                   END
               ELSE 0 END)                                                     AS sms_credits
FROM springbig_production_aggregations.combined_communications cc
         INNER JOIN springbig_production_dms.external_merchant_settings_linearized ems
                    ON cc.merchant_id = ems.merchant_id
                        AND cc.communication_created_at BETWEEN ems.start_at AND (
                            COALESCE(ems.end_at, '2100-01-01 00:00:00') - INTERVAL '0.000001 second')
         INNER JOIN springbig_production_dms.merchants m ON cc.merchant_id = m.id
WHERE cc.communication_created_at >= TIMESTAMP '2024-06-10 05:02:01 UTC'
GROUP BY cc.merchant_id,
         owner_type,
         date_hour
;

alter table merchant_sent_daily_metrics_view_materialized
    owner to rails_gd75ob;

grant select on merchant_sent_daily_metrics_view_materialized to lambda_production_redshift;

grant select on merchant_sent_daily_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

CREATE MATERIALIZED VIEW springbig_production_aggregations.merchant_redemption_daily_metrics_view_materialized AUTO REFRESH YES AS
SELECT piv.merchant_id,
       piv.communication_type                                     as owner_type,
       DATE_TRUNC('day', trr.created_at) AT TIME ZONE m.time_zone AS date_hour,

       COUNT(trr.member_id)                                       AS redemption_count
FROM springbig_production_dms.program_item_values piv
         INNER JOIN springbig_production_dms.merchants m
                    ON piv.merchant_id = m.id
         INNER JOIN springbig_production_dms.transaction_reward_redemptions trr
                    ON trr.reward_id = piv.id
WHERE trr.created_at >= TIMESTAMP '2024-06-10 05:03:58 UTC'
  AND piv.merchant_id IS NOT NULL
  AND trr.member_id IS NOT NULL
GROUP BY piv.merchant_id,
         owner_type,
         date_hour
;

alter table merchant_redemption_daily_metrics_view_materialized
    owner to rails_gd75ob;

grant select on merchant_redemption_daily_metrics_view_materialized to lambda_production_redshift;

grant select on merchant_redemption_daily_metrics_view_materialized to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

create or replace view campaign_metrics_view
            (merchant_id, campaign_id, campaign_sent_at, sent_count, email_sent_count, push_sent_count, sms_sent_count,
             email_credits, push_credits, sms_credits, click_count_6h, click_count_12h, click_count_24h,
             click_count_48h, click_count_120h, click_count_168h, click_count_336h, click_count_720h,
             redemption_count_6h, redemption_count_12h, redemption_count_24h, redemption_count_48h,
             redemption_count_120h, redemption_count_168h, redemption_count_336h, redemption_count_720h, spent_6h,
             spent_12h, spent_24h, spent_48h, spent_120h, spent_168h, spent_336h, spent_720h, visit_count_6h,
             visit_count_12h, visit_count_24h, visit_count_48h, visit_count_120h, visit_count_168h, visit_count_336h,
             visit_count_720h, visit_member_count_6h, visit_member_count_12h, visit_member_count_24h,
             visit_member_count_48h, visit_member_count_120h, visit_member_count_168h, visit_member_count_336h,
             visit_member_count_720h, sms_click_count_6h, sms_click_count_12h, sms_click_count_24h, sms_click_count_48h,
             sms_click_count_120h, sms_click_count_168h, sms_click_count_336h, sms_click_count_720h,
             sms_redemption_count_6h, sms_redemption_count_12h, sms_redemption_count_24h, sms_redemption_count_48h,
             sms_redemption_count_120h, sms_redemption_count_168h, sms_redemption_count_336h, sms_redemption_count_720h,
             sms_spent_6h, sms_spent_12h, sms_spent_24h, sms_spent_48h, sms_spent_120h, sms_spent_168h, sms_spent_336h,
             sms_spent_720h, sms_visit_count_6h, sms_visit_count_12h, sms_visit_count_24h, sms_visit_count_48h,
             sms_visit_count_120h, sms_visit_count_168h, sms_visit_count_336h, sms_visit_count_720h,
             push_click_count_6h, push_click_count_12h, push_click_count_24h, push_click_count_48h,
             push_click_count_120h, push_click_count_168h, push_click_count_336h, push_click_count_720h,
             push_redemption_count_6h, push_redemption_count_12h, push_redemption_count_24h, push_redemption_count_48h,
             push_redemption_count_120h, push_redemption_count_168h, push_redemption_count_336h,
             push_redemption_count_720h, push_spent_6h, push_spent_12h, push_spent_24h, push_spent_48h, push_spent_120h,
             push_spent_168h, push_spent_336h, push_spent_720h, push_visit_count_6h, push_visit_count_12h,
             push_visit_count_24h, push_visit_count_48h, push_visit_count_120h, push_visit_count_168h,
             push_visit_count_336h, push_visit_count_720h, email_click_count_6h, email_click_count_12h,
             email_click_count_24h, email_click_count_48h, email_click_count_120h, email_click_count_168h,
             email_click_count_336h, email_click_count_720h, email_redemption_count_6h, email_redemption_count_12h,
             email_redemption_count_24h, email_redemption_count_48h, email_redemption_count_120h,
             email_redemption_count_168h, email_redemption_count_336h, email_redemption_count_720h, email_spent_6h,
             email_spent_12h, email_spent_24h, email_spent_48h, email_spent_120h, email_spent_168h, email_spent_336h,
             email_spent_720h, email_visit_count_6h, email_visit_count_12h, email_visit_count_24h,
             email_visit_count_48h, email_visit_count_120h, email_visit_count_168h, email_visit_count_336h,
             email_visit_count_720h)
as
SELECT sent.merchant_id,
       sent.campaign_id,
       sent.campaign_sent_at,
       sent.sent_count,
       sent.email_sent_count,
       sent.push_sent_count,
       sent.sms_sent_count,
       sent.email_credits,
       sent.push_credits,
       sent.sms_credits,
       COALESCE(metrics.click_count_6h, 0::bigint)              AS click_count_6h,
       COALESCE(metrics.click_count_12h, 0::bigint)             AS click_count_12h,
       COALESCE(metrics.click_count_24h, 0::bigint)             AS click_count_24h,
       COALESCE(metrics.click_count_48h, 0::bigint)             AS click_count_48h,
       COALESCE(metrics.click_count_120h, 0::bigint)            AS click_count_120h,
       COALESCE(metrics.click_count_168h, 0::bigint)            AS click_count_168h,
       COALESCE(metrics.click_count_336h, 0::bigint)            AS click_count_336h,
       COALESCE(metrics.click_count_720h, 0::bigint)            AS click_count_720h,
       COALESCE(metrics.redemption_count_6h, 0::bigint)         AS redemption_count_6h,
       COALESCE(metrics.redemption_count_12h, 0::bigint)        AS redemption_count_12h,
       COALESCE(metrics.redemption_count_24h, 0::bigint)        AS redemption_count_24h,
       COALESCE(metrics.redemption_count_48h, 0::bigint)        AS redemption_count_48h,
       COALESCE(metrics.redemption_count_120h, 0::bigint)       AS redemption_count_120h,
       COALESCE(metrics.redemption_count_168h, 0::bigint)       AS redemption_count_168h,
       COALESCE(metrics.redemption_count_336h, 0::bigint)       AS redemption_count_336h,
       COALESCE(metrics.redemption_count_720h, 0::bigint)       AS redemption_count_720h,
       COALESCE(metrics.spent_6h, 0::double precision)          AS spent_6h,
       COALESCE(metrics.spent_12h, 0::double precision)         AS spent_12h,
       COALESCE(metrics.spent_24h, 0::double precision)         AS spent_24h,
       COALESCE(metrics.spent_48h, 0::double precision)         AS spent_48h,
       COALESCE(metrics.spent_120h, 0::double precision)        AS spent_120h,
       COALESCE(metrics.spent_168h, 0::double precision)        AS spent_168h,
       COALESCE(metrics.spent_336h, 0::double precision)        AS spent_336h,
       COALESCE(metrics.spent_720h, 0::double precision)        AS spent_720h,
       COALESCE(metrics.visit_count_6h, 0::bigint)              AS visit_count_6h,
       COALESCE(metrics.visit_count_12h, 0::bigint)             AS visit_count_12h,
       COALESCE(metrics.visit_count_24h, 0::bigint)             AS visit_count_24h,
       COALESCE(metrics.visit_count_48h, 0::bigint)             AS visit_count_48h,
       COALESCE(metrics.visit_count_120h, 0::bigint)            AS visit_count_120h,
       COALESCE(metrics.visit_count_168h, 0::bigint)            AS visit_count_168h,
       COALESCE(metrics.visit_count_336h, 0::bigint)            AS visit_count_336h,
       COALESCE(metrics.visit_count_720h, 0::bigint)            AS visit_count_720h,
       COALESCE(metrics.visit_member_count_6h, 0::bigint)       AS visit_member_count_6h,
       COALESCE(metrics.visit_member_count_12h, 0::bigint)      AS visit_member_count_12h,
       COALESCE(metrics.visit_member_count_24h, 0::bigint)      AS visit_member_count_24h,
       COALESCE(metrics.visit_member_count_48h, 0::bigint)      AS visit_member_count_48h,
       COALESCE(metrics.visit_member_count_120h, 0::bigint)     AS visit_member_count_120h,
       COALESCE(metrics.visit_member_count_168h, 0::bigint)     AS visit_member_count_168h,
       COALESCE(metrics.visit_member_count_336h, 0::bigint)     AS visit_member_count_336h,
       COALESCE(metrics.visit_member_count_720h, 0::bigint)     AS visit_member_count_720h,
       COALESCE(metrics.sms_click_count_6h, 0::bigint)          AS sms_click_count_6h,
       COALESCE(metrics.sms_click_count_12h, 0::bigint)         AS sms_click_count_12h,
       COALESCE(metrics.sms_click_count_24h, 0::bigint)         AS sms_click_count_24h,
       COALESCE(metrics.sms_click_count_48h, 0::bigint)         AS sms_click_count_48h,
       COALESCE(metrics.sms_click_count_120h, 0::bigint)        AS sms_click_count_120h,
       COALESCE(metrics.sms_click_count_168h, 0::bigint)        AS sms_click_count_168h,
       COALESCE(metrics.sms_click_count_336h, 0::bigint)        AS sms_click_count_336h,
       COALESCE(metrics.sms_click_count_720h, 0::bigint)        AS sms_click_count_720h,
       COALESCE(metrics.sms_redemption_count_6h, 0::bigint)     AS sms_redemption_count_6h,
       COALESCE(metrics.sms_redemption_count_12h, 0::bigint)    AS sms_redemption_count_12h,
       COALESCE(metrics.sms_redemption_count_24h, 0::bigint)    AS sms_redemption_count_24h,
       COALESCE(metrics.sms_redemption_count_48h, 0::bigint)    AS sms_redemption_count_48h,
       COALESCE(metrics.sms_redemption_count_120h, 0::bigint)   AS sms_redemption_count_120h,
       COALESCE(metrics.sms_redemption_count_168h, 0::bigint)   AS sms_redemption_count_168h,
       COALESCE(metrics.sms_redemption_count_336h, 0::bigint)   AS sms_redemption_count_336h,
       COALESCE(metrics.sms_redemption_count_720h, 0::bigint)   AS sms_redemption_count_720h,
       COALESCE(metrics.sms_spent_6h, 0::double precision)      AS sms_spent_6h,
       COALESCE(metrics.sms_spent_12h, 0::double precision)     AS sms_spent_12h,
       COALESCE(metrics.sms_spent_24h, 0::double precision)     AS sms_spent_24h,
       COALESCE(metrics.sms_spent_48h, 0::double precision)     AS sms_spent_48h,
       COALESCE(metrics.sms_spent_120h, 0::double precision)    AS sms_spent_120h,
       COALESCE(metrics.sms_spent_168h, 0::double precision)    AS sms_spent_168h,
       COALESCE(metrics.sms_spent_336h, 0::double precision)    AS sms_spent_336h,
       COALESCE(metrics.sms_spent_720h, 0::double precision)    AS sms_spent_720h,
       COALESCE(metrics.sms_visit_count_6h, 0::bigint)          AS sms_visit_count_6h,
       COALESCE(metrics.sms_visit_count_12h, 0::bigint)         AS sms_visit_count_12h,
       COALESCE(metrics.sms_visit_count_24h, 0::bigint)         AS sms_visit_count_24h,
       COALESCE(metrics.sms_visit_count_48h, 0::bigint)         AS sms_visit_count_48h,
       COALESCE(metrics.sms_visit_count_120h, 0::bigint)        AS sms_visit_count_120h,
       COALESCE(metrics.sms_visit_count_168h, 0::bigint)        AS sms_visit_count_168h,
       COALESCE(metrics.sms_visit_count_336h, 0::bigint)        AS sms_visit_count_336h,
       COALESCE(metrics.sms_visit_count_720h, 0::bigint)        AS sms_visit_count_720h,
       COALESCE(metrics.push_click_count_6h, 0::bigint)         AS push_click_count_6h,
       COALESCE(metrics.push_click_count_12h, 0::bigint)        AS push_click_count_12h,
       COALESCE(metrics.push_click_count_24h, 0::bigint)        AS push_click_count_24h,
       COALESCE(metrics.push_click_count_48h, 0::bigint)        AS push_click_count_48h,
       COALESCE(metrics.push_click_count_120h, 0::bigint)       AS push_click_count_120h,
       COALESCE(metrics.push_click_count_168h, 0::bigint)       AS push_click_count_168h,
       COALESCE(metrics.push_click_count_336h, 0::bigint)       AS push_click_count_336h,
       COALESCE(metrics.push_click_count_720h, 0::bigint)       AS push_click_count_720h,
       COALESCE(metrics.push_redemption_count_6h, 0::bigint)    AS push_redemption_count_6h,
       COALESCE(metrics.push_redemption_count_12h, 0::bigint)   AS push_redemption_count_12h,
       COALESCE(metrics.push_redemption_count_24h, 0::bigint)   AS push_redemption_count_24h,
       COALESCE(metrics.push_redemption_count_48h, 0::bigint)   AS push_redemption_count_48h,
       COALESCE(metrics.push_redemption_count_120h, 0::bigint)  AS push_redemption_count_120h,
       COALESCE(metrics.push_redemption_count_168h, 0::bigint)  AS push_redemption_count_168h,
       COALESCE(metrics.push_redemption_count_336h, 0::bigint)  AS push_redemption_count_336h,
       COALESCE(metrics.push_redemption_count_720h, 0::bigint)  AS push_redemption_count_720h,
       COALESCE(metrics.push_spent_6h, 0::double precision)     AS push_spent_6h,
       COALESCE(metrics.push_spent_12h, 0::double precision)    AS push_spent_12h,
       COALESCE(metrics.push_spent_24h, 0::double precision)    AS push_spent_24h,
       COALESCE(metrics.push_spent_48h, 0::double precision)    AS push_spent_48h,
       COALESCE(metrics.push_spent_120h, 0::double precision)   AS push_spent_120h,
       COALESCE(metrics.push_spent_168h, 0::double precision)   AS push_spent_168h,
       COALESCE(metrics.push_spent_336h, 0::double precision)   AS push_spent_336h,
       COALESCE(metrics.push_spent_720h, 0::double precision)   AS push_spent_720h,
       COALESCE(metrics.push_visit_count_6h, 0::bigint)         AS push_visit_count_6h,
       COALESCE(metrics.push_visit_count_12h, 0::bigint)        AS push_visit_count_12h,
       COALESCE(metrics.push_visit_count_24h, 0::bigint)        AS push_visit_count_24h,
       COALESCE(metrics.push_visit_count_48h, 0::bigint)        AS push_visit_count_48h,
       COALESCE(metrics.push_visit_count_120h, 0::bigint)       AS push_visit_count_120h,
       COALESCE(metrics.push_visit_count_168h, 0::bigint)       AS push_visit_count_168h,
       COALESCE(metrics.push_visit_count_336h, 0::bigint)       AS push_visit_count_336h,
       COALESCE(metrics.push_visit_count_720h, 0::bigint)       AS push_visit_count_720h,
       COALESCE(metrics.email_click_count_6h, 0::bigint)        AS email_click_count_6h,
       COALESCE(metrics.email_click_count_12h, 0::bigint)       AS email_click_count_12h,
       COALESCE(metrics.email_click_count_24h, 0::bigint)       AS email_click_count_24h,
       COALESCE(metrics.email_click_count_48h, 0::bigint)       AS email_click_count_48h,
       COALESCE(metrics.email_click_count_120h, 0::bigint)      AS email_click_count_120h,
       COALESCE(metrics.email_click_count_168h, 0::bigint)      AS email_click_count_168h,
       COALESCE(metrics.email_click_count_336h, 0::bigint)      AS email_click_count_336h,
       COALESCE(metrics.email_click_count_720h, 0::bigint)      AS email_click_count_720h,
       COALESCE(metrics.email_redemption_count_6h, 0::bigint)   AS email_redemption_count_6h,
       COALESCE(metrics.email_redemption_count_12h, 0::bigint)  AS email_redemption_count_12h,
       COALESCE(metrics.email_redemption_count_24h, 0::bigint)  AS email_redemption_count_24h,
       COALESCE(metrics.email_redemption_count_48h, 0::bigint)  AS email_redemption_count_48h,
       COALESCE(metrics.email_redemption_count_120h, 0::bigint) AS email_redemption_count_120h,
       COALESCE(metrics.email_redemption_count_168h, 0::bigint) AS email_redemption_count_168h,
       COALESCE(metrics.email_redemption_count_336h, 0::bigint) AS email_redemption_count_336h,
       COALESCE(metrics.email_redemption_count_720h, 0::bigint) AS email_redemption_count_720h,
       COALESCE(metrics.email_spent_6h, 0::double precision)    AS email_spent_6h,
       COALESCE(metrics.email_spent_12h, 0::double precision)   AS email_spent_12h,
       COALESCE(metrics.email_spent_24h, 0::double precision)   AS email_spent_24h,
       COALESCE(metrics.email_spent_48h, 0::double precision)   AS email_spent_48h,
       COALESCE(metrics.email_spent_120h, 0::double precision)  AS email_spent_120h,
       COALESCE(metrics.email_spent_168h, 0::double precision)  AS email_spent_168h,
       COALESCE(metrics.email_spent_336h, 0::double precision)  AS email_spent_336h,
       COALESCE(metrics.email_spent_720h, 0::double precision)  AS email_spent_720h,
       COALESCE(metrics.email_visit_count_6h, 0::bigint)        AS email_visit_count_6h,
       COALESCE(metrics.email_visit_count_12h, 0::bigint)       AS email_visit_count_12h,
       COALESCE(metrics.email_visit_count_24h, 0::bigint)       AS email_visit_count_24h,
       COALESCE(metrics.email_visit_count_48h, 0::bigint)       AS email_visit_count_48h,
       COALESCE(metrics.email_visit_count_120h, 0::bigint)      AS email_visit_count_120h,
       COALESCE(metrics.email_visit_count_168h, 0::bigint)      AS email_visit_count_168h,
       COALESCE(metrics.email_visit_count_336h, 0::bigint)      AS email_visit_count_336h,
       COALESCE(metrics.email_visit_count_720h, 0::bigint)      AS email_visit_count_720h
FROM campaign_sent_metrics_view_materialized sent
         LEFT JOIN (SELECT COALESCE(transact.merchant_id, redeem.merchant_id, click.merchant_id)                AS merchant_id,
                           COALESCE(transact.campaign_id, redeem.campaign_id,
                                    click.campaign_id)                                                          AS campaign_id,
                           COALESCE(transact.campaign_sent_at, redeem.campaign_sent_at,
                                    click.campaign_sent_at)                                                     AS campaign_sent_at,
                           sum(COALESCE(click.click_count_6h, 0::bigint))                                       AS click_count_6h,
                           sum(COALESCE(click.click_count_12h, 0::bigint))                                      AS click_count_12h,
                           sum(COALESCE(click.click_count_24h, 0::bigint))                                      AS click_count_24h,
                           sum(COALESCE(click.click_count_48h, 0::bigint))                                      AS click_count_48h,
                           sum(COALESCE(click.click_count_120h, 0::bigint))                                     AS click_count_120h,
                           sum(COALESCE(click.click_count_168h, 0::bigint))                                     AS click_count_168h,
                           sum(COALESCE(click.click_count_336h, 0::bigint))                                     AS click_count_336h,
                           sum(COALESCE(click.click_count_720h, 0::bigint))                                     AS click_count_720h,
                           sum(COALESCE(click.sms_click_count_6h, 0::bigint))                                   AS sms_click_count_6h,
                           sum(COALESCE(click.sms_click_count_12h, 0::bigint))                                  AS sms_click_count_12h,
                           sum(COALESCE(click.sms_click_count_24h, 0::bigint))                                  AS sms_click_count_24h,
                           sum(COALESCE(click.sms_click_count_48h, 0::bigint))                                  AS sms_click_count_48h,
                           sum(COALESCE(click.sms_click_count_120h, 0::bigint))                                 AS sms_click_count_120h,
                           sum(COALESCE(click.sms_click_count_168h, 0::bigint))                                 AS sms_click_count_168h,
                           sum(COALESCE(click.sms_click_count_336h, 0::bigint))                                 AS sms_click_count_336h,
                           sum(COALESCE(click.sms_click_count_720h, 0::bigint))                                 AS sms_click_count_720h,
                           sum(COALESCE(click.push_click_count_6h, 0::bigint))                                  AS push_click_count_6h,
                           sum(COALESCE(click.push_click_count_12h, 0::bigint))                                 AS push_click_count_12h,
                           sum(COALESCE(click.push_click_count_24h, 0::bigint))                                 AS push_click_count_24h,
                           sum(COALESCE(click.push_click_count_48h, 0::bigint))                                 AS push_click_count_48h,
                           sum(COALESCE(click.push_click_count_120h, 0::bigint))                                AS push_click_count_120h,
                           sum(COALESCE(click.push_click_count_168h, 0::bigint))                                AS push_click_count_168h,
                           sum(COALESCE(click.push_click_count_336h, 0::bigint))                                AS push_click_count_336h,
                           sum(COALESCE(click.push_click_count_720h, 0::bigint))                                AS push_click_count_720h,
                           sum(COALESCE(click.email_click_count_6h, 0::bigint))                                 AS email_click_count_6h,
                           sum(COALESCE(click.email_click_count_12h, 0::bigint))                                AS email_click_count_12h,
                           sum(COALESCE(click.email_click_count_24h, 0::bigint))                                AS email_click_count_24h,
                           sum(COALESCE(click.email_click_count_48h, 0::bigint))                                AS email_click_count_48h,
                           sum(COALESCE(click.email_click_count_120h, 0::bigint))                               AS email_click_count_120h,
                           sum(COALESCE(click.email_click_count_168h, 0::bigint))                               AS email_click_count_168h,
                           sum(COALESCE(click.email_click_count_336h, 0::bigint))                               AS email_click_count_336h,
                           sum(COALESCE(click.email_click_count_720h, 0::bigint))                               AS email_click_count_720h,
                           sum(COALESCE(redeem.redemption_count_6h, 0::bigint))                                 AS redemption_count_6h,
                           sum(COALESCE(redeem.redemption_count_12h, 0::bigint))                                AS redemption_count_12h,
                           sum(COALESCE(redeem.redemption_count_24h, 0::bigint))                                AS redemption_count_24h,
                           sum(COALESCE(redeem.redemption_count_48h, 0::bigint))                                AS redemption_count_48h,
                           sum(COALESCE(redeem.redemption_count_120h, 0::bigint))                               AS redemption_count_120h,
                           sum(COALESCE(redeem.redemption_count_168h, 0::bigint))                               AS redemption_count_168h,
                           sum(COALESCE(redeem.redemption_count_336h, 0::bigint))                               AS redemption_count_336h,
                           sum(COALESCE(redeem.redemption_count_720h, 0::bigint))                               AS redemption_count_720h,
                           sum(COALESCE(redeem.sms_redemption_count_6h, 0::bigint))                             AS sms_redemption_count_6h,
                           sum(COALESCE(redeem.sms_redemption_count_12h, 0::bigint))                            AS sms_redemption_count_12h,
                           sum(COALESCE(redeem.sms_redemption_count_24h, 0::bigint))                            AS sms_redemption_count_24h,
                           sum(COALESCE(redeem.sms_redemption_count_48h, 0::bigint))                            AS sms_redemption_count_48h,
                           sum(COALESCE(redeem.sms_redemption_count_120h, 0::bigint))                           AS sms_redemption_count_120h,
                           sum(COALESCE(redeem.sms_redemption_count_168h, 0::bigint))                           AS sms_redemption_count_168h,
                           sum(COALESCE(redeem.sms_redemption_count_336h, 0::bigint))                           AS sms_redemption_count_336h,
                           sum(COALESCE(redeem.sms_redemption_count_720h, 0::bigint))                           AS sms_redemption_count_720h,
                           sum(COALESCE(redeem.push_redemption_count_6h, 0::bigint))                            AS push_redemption_count_6h,
                           sum(COALESCE(redeem.push_redemption_count_12h, 0::bigint))                           AS push_redemption_count_12h,
                           sum(COALESCE(redeem.push_redemption_count_24h, 0::bigint))                           AS push_redemption_count_24h,
                           sum(COALESCE(redeem.push_redemption_count_48h, 0::bigint))                           AS push_redemption_count_48h,
                           sum(COALESCE(redeem.push_redemption_count_120h, 0::bigint))                          AS push_redemption_count_120h,
                           sum(COALESCE(redeem.push_redemption_count_168h, 0::bigint))                          AS push_redemption_count_168h,
                           sum(COALESCE(redeem.push_redemption_count_336h, 0::bigint))                          AS push_redemption_count_336h,
                           sum(COALESCE(redeem.push_redemption_count_720h, 0::bigint))                          AS push_redemption_count_720h,
                           sum(COALESCE(redeem.email_redemption_count_6h, 0::bigint))                           AS email_redemption_count_6h,
                           sum(COALESCE(redeem.email_redemption_count_12h, 0::bigint))                          AS email_redemption_count_12h,
                           sum(COALESCE(redeem.email_redemption_count_24h, 0::bigint))                          AS email_redemption_count_24h,
                           sum(COALESCE(redeem.email_redemption_count_48h, 0::bigint))                          AS email_redemption_count_48h,
                           sum(COALESCE(redeem.email_redemption_count_120h, 0::bigint))                         AS email_redemption_count_120h,
                           sum(COALESCE(redeem.email_redemption_count_168h, 0::bigint))                         AS email_redemption_count_168h,
                           sum(COALESCE(redeem.email_redemption_count_336h, 0::bigint))                         AS email_redemption_count_336h,
                           sum(COALESCE(redeem.email_redemption_count_720h, 0::bigint))                         AS email_redemption_count_720h,
                           sum(COALESCE(transact.spent_6h, 0::double precision))                                AS spent_6h,
                           sum(COALESCE(transact.spent_12h, 0::double precision))                               AS spent_12h,
                           sum(COALESCE(transact.spent_24h, 0::double precision))                               AS spent_24h,
                           sum(COALESCE(transact.spent_48h, 0::double precision))                               AS spent_48h,
                           sum(COALESCE(transact.spent_120h, 0::double precision))                              AS spent_120h,
                           sum(COALESCE(transact.spent_168h, 0::double precision))                              AS spent_168h,
                           sum(COALESCE(transact.spent_336h, 0::double precision))                              AS spent_336h,
                           sum(COALESCE(transact.spent_720h, 0::double precision))                              AS spent_720h,
                           sum(COALESCE(transact.visit_count_6h, 0::bigint))                                    AS visit_count_6h,
                           sum(COALESCE(transact.visit_count_12h, 0::bigint))                                   AS visit_count_12h,
                           sum(COALESCE(transact.visit_count_24h, 0::bigint))                                   AS visit_count_24h,
                           sum(COALESCE(transact.visit_count_48h, 0::bigint))                                   AS visit_count_48h,
                           sum(COALESCE(transact.visit_count_120h, 0::bigint))                                  AS visit_count_120h,
                           sum(COALESCE(transact.visit_count_168h, 0::bigint))                                  AS visit_count_168h,
                           sum(COALESCE(transact.visit_count_336h, 0::bigint))                                  AS visit_count_336h,
                           sum(COALESCE(transact.visit_count_720h, 0::bigint))                                  AS visit_count_720h,
                           sum(COALESCE(transact.sms_spent_6h, 0::double precision))                            AS sms_spent_6h,
                           sum(COALESCE(transact.sms_spent_12h, 0::double precision))                           AS sms_spent_12h,
                           sum(COALESCE(transact.sms_spent_24h, 0::double precision))                           AS sms_spent_24h,
                           sum(COALESCE(transact.sms_spent_48h, 0::double precision))                           AS sms_spent_48h,
                           sum(COALESCE(transact.sms_spent_120h, 0::double precision))                          AS sms_spent_120h,
                           sum(COALESCE(transact.sms_spent_168h, 0::double precision))                          AS sms_spent_168h,
                           sum(COALESCE(transact.sms_spent_336h, 0::double precision))                          AS sms_spent_336h,
                           sum(COALESCE(transact.sms_spent_720h, 0::double precision))                          AS sms_spent_720h,
                           sum(COALESCE(transact.sms_visit_count_6h, 0::bigint))                                AS sms_visit_count_6h,
                           sum(COALESCE(transact.sms_visit_count_12h, 0::bigint))                               AS sms_visit_count_12h,
                           sum(COALESCE(transact.sms_visit_count_24h, 0::bigint))                               AS sms_visit_count_24h,
                           sum(COALESCE(transact.sms_visit_count_48h, 0::bigint))                               AS sms_visit_count_48h,
                           sum(COALESCE(transact.sms_visit_count_120h, 0::bigint))                              AS sms_visit_count_120h,
                           sum(COALESCE(transact.sms_visit_count_168h, 0::bigint))                              AS sms_visit_count_168h,
                           sum(COALESCE(transact.sms_visit_count_336h, 0::bigint))                              AS sms_visit_count_336h,
                           sum(COALESCE(transact.sms_visit_count_720h, 0::bigint))                              AS sms_visit_count_720h,
                           sum(COALESCE(transact.push_spent_6h, 0::double precision))                           AS push_spent_6h,
                           sum(COALESCE(transact.push_spent_12h, 0::double precision))                          AS push_spent_12h,
                           sum(COALESCE(transact.push_spent_24h, 0::double precision))                          AS push_spent_24h,
                           sum(COALESCE(transact.push_spent_48h, 0::double precision))                          AS push_spent_48h,
                           sum(COALESCE(transact.push_spent_120h, 0::double precision))                         AS push_spent_120h,
                           sum(COALESCE(transact.push_spent_168h, 0::double precision))                         AS push_spent_168h,
                           sum(COALESCE(transact.push_spent_336h, 0::double precision))                         AS push_spent_336h,
                           sum(COALESCE(transact.push_spent_720h, 0::double precision))                         AS push_spent_720h,
                           sum(COALESCE(transact.push_visit_count_6h, 0::bigint))                               AS push_visit_count_6h,
                           sum(COALESCE(transact.push_visit_count_12h, 0::bigint))                              AS push_visit_count_12h,
                           sum(COALESCE(transact.push_visit_count_24h, 0::bigint))                              AS push_visit_count_24h,
                           sum(COALESCE(transact.push_visit_count_48h, 0::bigint))                              AS push_visit_count_48h,
                           sum(COALESCE(transact.push_visit_count_120h, 0::bigint))                             AS push_visit_count_120h,
                           sum(COALESCE(transact.push_visit_count_168h, 0::bigint))                             AS push_visit_count_168h,
                           sum(COALESCE(transact.push_visit_count_336h, 0::bigint))                             AS push_visit_count_336h,
                           sum(COALESCE(transact.push_visit_count_720h, 0::bigint))                             AS push_visit_count_720h,
                           sum(COALESCE(transact.email_spent_6h, 0::double precision))                          AS email_spent_6h,
                           sum(COALESCE(transact.email_spent_12h, 0::double precision))                         AS email_spent_12h,
                           sum(COALESCE(transact.email_spent_24h, 0::double precision))                         AS email_spent_24h,
                           sum(COALESCE(transact.email_spent_48h, 0::double precision))                         AS email_spent_48h,
                           sum(COALESCE(transact.email_spent_120h, 0::double precision))                        AS email_spent_120h,
                           sum(COALESCE(transact.email_spent_168h, 0::double precision))                        AS email_spent_168h,
                           sum(COALESCE(transact.email_spent_336h, 0::double precision))                        AS email_spent_336h,
                           sum(COALESCE(transact.email_spent_720h, 0::double precision))                        AS email_spent_720h,
                           sum(COALESCE(transact.email_visit_count_6h, 0::bigint))                              AS email_visit_count_6h,
                           sum(COALESCE(transact.email_visit_count_12h, 0::bigint))                             AS email_visit_count_12h,
                           sum(COALESCE(transact.email_visit_count_24h, 0::bigint))                             AS email_visit_count_24h,
                           sum(COALESCE(transact.email_visit_count_48h, 0::bigint))                             AS email_visit_count_48h,
                           sum(COALESCE(transact.email_visit_count_120h, 0::bigint))                            AS email_visit_count_120h,
                           sum(COALESCE(transact.email_visit_count_168h, 0::bigint))                            AS email_visit_count_168h,
                           sum(COALESCE(transact.email_visit_count_336h, 0::bigint))                            AS email_visit_count_336h,
                           sum(COALESCE(transact.email_visit_count_720h, 0::bigint))                            AS email_visit_count_720h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_6h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_6h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_12h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_12h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_24h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_24h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_48h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_48h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_120h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_120h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_168h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_168h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_336h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_336h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_720h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                     AS visit_member_count_720h
                    FROM campaign_log_click_metrics_view_materialized click
                             FULL JOIN campaign_log_redemption_metrics_view_materialized redeem
                                       ON redeem.campaign_id = click.campaign_id AND redeem.member_id = click.member_id
                             FULL JOIN campaign_log_transaction_metrics_view_materialized transact
                                       ON transact.campaign_id = COALESCE(click.campaign_id, redeem.campaign_id) AND
                                          transact.member_id = COALESCE(click.member_id, redeem.member_id)
                    GROUP BY COALESCE(transact.merchant_id, redeem.merchant_id, click.merchant_id),
                             COALESCE(transact.campaign_id, redeem.campaign_id, click.campaign_id),
                             COALESCE(transact.campaign_sent_at, redeem.campaign_sent_at,
                                      click.campaign_sent_at)) metrics
                   ON metrics.merchant_id = sent.merchant_id AND metrics.campaign_id = sent.campaign_id AND
                      metrics.campaign_sent_at = sent.campaign_sent_at;

alter table campaign_metrics_view
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaign_metrics_view to rails_gd75ob;

grant select on campaign_metrics_view to ghuppert_m8e4d7;

grant select on campaign_metrics_view to aggregate_sms_data_fdif4h;

grant select on campaign_metrics_view to analytics_process_incoming_events_oa32mf;

grant select on campaign_metrics_view to glue_admin_a99j6d;

grant select on campaign_metrics_view to glue_admin_d3a7h2;

grant select on campaign_metrics_view to aggregate_campaign_redemptions_c81425;

grant select on campaign_metrics_view to redshift_data_copy_l799nl;

grant select on campaign_metrics_view to "awsidc:ypark@springbig.com";

grant select on campaign_metrics_view to "awsidc:mvizcaino@springbig.com";

create or replace view auto_campaign_message_monthly_metrics_view
            (merchant_id, auto_campaign_id, auto_campaign_message_id, month_at, sent_count, email_sent_count,
             push_sent_count, sms_sent_count, email_credits, push_credits, sms_credits, click_count_6h, click_count_12h,
             click_count_24h, click_count_48h, click_count_120h, click_count_168h, click_count_336h, click_count_720h,
             redemption_count_6h, redemption_count_12h, redemption_count_24h, redemption_count_48h,
             redemption_count_120h, redemption_count_168h, redemption_count_336h, redemption_count_720h, spent_6h,
             spent_12h, spent_24h, spent_48h, spent_120h, spent_168h, spent_336h, spent_720h, visit_count_6h,
             visit_count_12h, visit_count_24h, visit_count_48h, visit_count_120h, visit_count_168h, visit_count_336h,
             visit_count_720h, visit_member_count_6h, visit_member_count_12h, visit_member_count_24h,
             visit_member_count_48h, visit_member_count_120h, visit_member_count_168h, visit_member_count_336h,
             visit_member_count_720h, sms_click_count_6h, sms_click_count_12h, sms_click_count_24h, sms_click_count_48h,
             sms_click_count_120h, sms_click_count_168h, sms_click_count_336h, sms_click_count_720h,
             sms_redemption_count_6h, sms_redemption_count_12h, sms_redemption_count_24h, sms_redemption_count_48h,
             sms_redemption_count_120h, sms_redemption_count_168h, sms_redemption_count_336h, sms_redemption_count_720h,
             sms_spent_6h, sms_spent_12h, sms_spent_24h, sms_spent_48h, sms_spent_120h, sms_spent_168h, sms_spent_336h,
             sms_spent_720h, sms_visit_count_6h, sms_visit_count_12h, sms_visit_count_24h, sms_visit_count_48h,
             sms_visit_count_120h, sms_visit_count_168h, sms_visit_count_336h, sms_visit_count_720h,
             push_click_count_6h, push_click_count_12h, push_click_count_24h, push_click_count_48h,
             push_click_count_120h, push_click_count_168h, push_click_count_336h, push_click_count_720h,
             push_redemption_count_6h, push_redemption_count_12h, push_redemption_count_24h, push_redemption_count_48h,
             push_redemption_count_120h, push_redemption_count_168h, push_redemption_count_336h,
             push_redemption_count_720h, push_spent_6h, push_spent_12h, push_spent_24h, push_spent_48h, push_spent_120h,
             push_spent_168h, push_spent_336h, push_spent_720h, push_visit_count_6h, push_visit_count_12h,
             push_visit_count_24h, push_visit_count_48h, push_visit_count_120h, push_visit_count_168h,
             push_visit_count_336h, push_visit_count_720h, email_click_count_6h, email_click_count_12h,
             email_click_count_24h, email_click_count_48h, email_click_count_120h, email_click_count_168h,
             email_click_count_336h, email_click_count_720h, email_redemption_count_6h, email_redemption_count_12h,
             email_redemption_count_24h, email_redemption_count_48h, email_redemption_count_120h,
             email_redemption_count_168h, email_redemption_count_336h, email_redemption_count_720h, email_spent_6h,
             email_spent_12h, email_spent_24h, email_spent_48h, email_spent_120h, email_spent_168h, email_spent_336h,
             email_spent_720h, email_visit_count_6h, email_visit_count_12h, email_visit_count_24h,
             email_visit_count_48h, email_visit_count_120h, email_visit_count_168h, email_visit_count_336h,
             email_visit_count_720h)
as
SELECT sent.merchant_id,
       sent.auto_campaign_id,
       sent.auto_campaign_message_id,
       sent.month_at,
       sent.sent_count,
       sent.email_sent_count,
       sent.push_sent_count,
       sent.sms_sent_count,
       sent.email_credits,
       sent.push_credits,
       sent.sms_credits,
       COALESCE(metrics.click_count_6h, 0::bigint)              AS click_count_6h,
       COALESCE(metrics.click_count_12h, 0::bigint)             AS click_count_12h,
       COALESCE(metrics.click_count_24h, 0::bigint)             AS click_count_24h,
       COALESCE(metrics.click_count_48h, 0::bigint)             AS click_count_48h,
       COALESCE(metrics.click_count_120h, 0::bigint)            AS click_count_120h,
       COALESCE(metrics.click_count_168h, 0::bigint)            AS click_count_168h,
       COALESCE(metrics.click_count_336h, 0::bigint)            AS click_count_336h,
       COALESCE(metrics.click_count_720h, 0::bigint)            AS click_count_720h,
       COALESCE(metrics.redemption_count_6h, 0::bigint)         AS redemption_count_6h,
       COALESCE(metrics.redemption_count_12h, 0::bigint)        AS redemption_count_12h,
       COALESCE(metrics.redemption_count_24h, 0::bigint)        AS redemption_count_24h,
       COALESCE(metrics.redemption_count_48h, 0::bigint)        AS redemption_count_48h,
       COALESCE(metrics.redemption_count_120h, 0::bigint)       AS redemption_count_120h,
       COALESCE(metrics.redemption_count_168h, 0::bigint)       AS redemption_count_168h,
       COALESCE(metrics.redemption_count_336h, 0::bigint)       AS redemption_count_336h,
       COALESCE(metrics.redemption_count_720h, 0::bigint)       AS redemption_count_720h,
       COALESCE(metrics.spent_6h, 0::double precision)          AS spent_6h,
       COALESCE(metrics.spent_12h, 0::double precision)         AS spent_12h,
       COALESCE(metrics.spent_24h, 0::double precision)         AS spent_24h,
       COALESCE(metrics.spent_48h, 0::double precision)         AS spent_48h,
       COALESCE(metrics.spent_120h, 0::double precision)        AS spent_120h,
       COALESCE(metrics.spent_168h, 0::double precision)        AS spent_168h,
       COALESCE(metrics.spent_336h, 0::double precision)        AS spent_336h,
       COALESCE(metrics.spent_720h, 0::double precision)        AS spent_720h,
       COALESCE(metrics.visit_count_6h, 0::bigint)              AS visit_count_6h,
       COALESCE(metrics.visit_count_12h, 0::bigint)             AS visit_count_12h,
       COALESCE(metrics.visit_count_24h, 0::bigint)             AS visit_count_24h,
       COALESCE(metrics.visit_count_48h, 0::bigint)             AS visit_count_48h,
       COALESCE(metrics.visit_count_120h, 0::bigint)            AS visit_count_120h,
       COALESCE(metrics.visit_count_168h, 0::bigint)            AS visit_count_168h,
       COALESCE(metrics.visit_count_336h, 0::bigint)            AS visit_count_336h,
       COALESCE(metrics.visit_count_720h, 0::bigint)            AS visit_count_720h,
       COALESCE(metrics.visit_member_count_6h, 0::bigint)       AS visit_member_count_6h,
       COALESCE(metrics.visit_member_count_12h, 0::bigint)      AS visit_member_count_12h,
       COALESCE(metrics.visit_member_count_24h, 0::bigint)      AS visit_member_count_24h,
       COALESCE(metrics.visit_member_count_48h, 0::bigint)      AS visit_member_count_48h,
       COALESCE(metrics.visit_member_count_120h, 0::bigint)     AS visit_member_count_120h,
       COALESCE(metrics.visit_member_count_168h, 0::bigint)     AS visit_member_count_168h,
       COALESCE(metrics.visit_member_count_336h, 0::bigint)     AS visit_member_count_336h,
       COALESCE(metrics.visit_member_count_720h, 0::bigint)     AS visit_member_count_720h,
       COALESCE(metrics.sms_click_count_6h, 0::bigint)          AS sms_click_count_6h,
       COALESCE(metrics.sms_click_count_12h, 0::bigint)         AS sms_click_count_12h,
       COALESCE(metrics.sms_click_count_24h, 0::bigint)         AS sms_click_count_24h,
       COALESCE(metrics.sms_click_count_48h, 0::bigint)         AS sms_click_count_48h,
       COALESCE(metrics.sms_click_count_120h, 0::bigint)        AS sms_click_count_120h,
       COALESCE(metrics.sms_click_count_168h, 0::bigint)        AS sms_click_count_168h,
       COALESCE(metrics.sms_click_count_336h, 0::bigint)        AS sms_click_count_336h,
       COALESCE(metrics.sms_click_count_720h, 0::bigint)        AS sms_click_count_720h,
       COALESCE(metrics.sms_redemption_count_6h, 0::bigint)     AS sms_redemption_count_6h,
       COALESCE(metrics.sms_redemption_count_12h, 0::bigint)    AS sms_redemption_count_12h,
       COALESCE(metrics.sms_redemption_count_24h, 0::bigint)    AS sms_redemption_count_24h,
       COALESCE(metrics.sms_redemption_count_48h, 0::bigint)    AS sms_redemption_count_48h,
       COALESCE(metrics.sms_redemption_count_120h, 0::bigint)   AS sms_redemption_count_120h,
       COALESCE(metrics.sms_redemption_count_168h, 0::bigint)   AS sms_redemption_count_168h,
       COALESCE(metrics.sms_redemption_count_336h, 0::bigint)   AS sms_redemption_count_336h,
       COALESCE(metrics.sms_redemption_count_720h, 0::bigint)   AS sms_redemption_count_720h,
       COALESCE(metrics.sms_spent_6h, 0::double precision)      AS sms_spent_6h,
       COALESCE(metrics.sms_spent_12h, 0::double precision)     AS sms_spent_12h,
       COALESCE(metrics.sms_spent_24h, 0::double precision)     AS sms_spent_24h,
       COALESCE(metrics.sms_spent_48h, 0::double precision)     AS sms_spent_48h,
       COALESCE(metrics.sms_spent_120h, 0::double precision)    AS sms_spent_120h,
       COALESCE(metrics.sms_spent_168h, 0::double precision)    AS sms_spent_168h,
       COALESCE(metrics.sms_spent_336h, 0::double precision)    AS sms_spent_336h,
       COALESCE(metrics.sms_spent_720h, 0::double precision)    AS sms_spent_720h,
       COALESCE(metrics.sms_visit_count_6h, 0::bigint)          AS sms_visit_count_6h,
       COALESCE(metrics.sms_visit_count_12h, 0::bigint)         AS sms_visit_count_12h,
       COALESCE(metrics.sms_visit_count_24h, 0::bigint)         AS sms_visit_count_24h,
       COALESCE(metrics.sms_visit_count_48h, 0::bigint)         AS sms_visit_count_48h,
       COALESCE(metrics.sms_visit_count_120h, 0::bigint)        AS sms_visit_count_120h,
       COALESCE(metrics.sms_visit_count_168h, 0::bigint)        AS sms_visit_count_168h,
       COALESCE(metrics.sms_visit_count_336h, 0::bigint)        AS sms_visit_count_336h,
       COALESCE(metrics.sms_visit_count_720h, 0::bigint)        AS sms_visit_count_720h,
       COALESCE(metrics.push_click_count_6h, 0::bigint)         AS push_click_count_6h,
       COALESCE(metrics.push_click_count_12h, 0::bigint)        AS push_click_count_12h,
       COALESCE(metrics.push_click_count_24h, 0::bigint)        AS push_click_count_24h,
       COALESCE(metrics.push_click_count_48h, 0::bigint)        AS push_click_count_48h,
       COALESCE(metrics.push_click_count_120h, 0::bigint)       AS push_click_count_120h,
       COALESCE(metrics.push_click_count_168h, 0::bigint)       AS push_click_count_168h,
       COALESCE(metrics.push_click_count_336h, 0::bigint)       AS push_click_count_336h,
       COALESCE(metrics.push_click_count_720h, 0::bigint)       AS push_click_count_720h,
       COALESCE(metrics.push_redemption_count_6h, 0::bigint)    AS push_redemption_count_6h,
       COALESCE(metrics.push_redemption_count_12h, 0::bigint)   AS push_redemption_count_12h,
       COALESCE(metrics.push_redemption_count_24h, 0::bigint)   AS push_redemption_count_24h,
       COALESCE(metrics.push_redemption_count_48h, 0::bigint)   AS push_redemption_count_48h,
       COALESCE(metrics.push_redemption_count_120h, 0::bigint)  AS push_redemption_count_120h,
       COALESCE(metrics.push_redemption_count_168h, 0::bigint)  AS push_redemption_count_168h,
       COALESCE(metrics.push_redemption_count_336h, 0::bigint)  AS push_redemption_count_336h,
       COALESCE(metrics.push_redemption_count_720h, 0::bigint)  AS push_redemption_count_720h,
       COALESCE(metrics.push_spent_6h, 0::double precision)     AS push_spent_6h,
       COALESCE(metrics.push_spent_12h, 0::double precision)    AS push_spent_12h,
       COALESCE(metrics.push_spent_24h, 0::double precision)    AS push_spent_24h,
       COALESCE(metrics.push_spent_48h, 0::double precision)    AS push_spent_48h,
       COALESCE(metrics.push_spent_120h, 0::double precision)   AS push_spent_120h,
       COALESCE(metrics.push_spent_168h, 0::double precision)   AS push_spent_168h,
       COALESCE(metrics.push_spent_336h, 0::double precision)   AS push_spent_336h,
       COALESCE(metrics.push_spent_720h, 0::double precision)   AS push_spent_720h,
       COALESCE(metrics.push_visit_count_6h, 0::bigint)         AS push_visit_count_6h,
       COALESCE(metrics.push_visit_count_12h, 0::bigint)        AS push_visit_count_12h,
       COALESCE(metrics.push_visit_count_24h, 0::bigint)        AS push_visit_count_24h,
       COALESCE(metrics.push_visit_count_48h, 0::bigint)        AS push_visit_count_48h,
       COALESCE(metrics.push_visit_count_120h, 0::bigint)       AS push_visit_count_120h,
       COALESCE(metrics.push_visit_count_168h, 0::bigint)       AS push_visit_count_168h,
       COALESCE(metrics.push_visit_count_336h, 0::bigint)       AS push_visit_count_336h,
       COALESCE(metrics.push_visit_count_720h, 0::bigint)       AS push_visit_count_720h,
       COALESCE(metrics.email_click_count_6h, 0::bigint)        AS email_click_count_6h,
       COALESCE(metrics.email_click_count_12h, 0::bigint)       AS email_click_count_12h,
       COALESCE(metrics.email_click_count_24h, 0::bigint)       AS email_click_count_24h,
       COALESCE(metrics.email_click_count_48h, 0::bigint)       AS email_click_count_48h,
       COALESCE(metrics.email_click_count_120h, 0::bigint)      AS email_click_count_120h,
       COALESCE(metrics.email_click_count_168h, 0::bigint)      AS email_click_count_168h,
       COALESCE(metrics.email_click_count_336h, 0::bigint)      AS email_click_count_336h,
       COALESCE(metrics.email_click_count_720h, 0::bigint)      AS email_click_count_720h,
       COALESCE(metrics.email_redemption_count_6h, 0::bigint)   AS email_redemption_count_6h,
       COALESCE(metrics.email_redemption_count_12h, 0::bigint)  AS email_redemption_count_12h,
       COALESCE(metrics.email_redemption_count_24h, 0::bigint)  AS email_redemption_count_24h,
       COALESCE(metrics.email_redemption_count_48h, 0::bigint)  AS email_redemption_count_48h,
       COALESCE(metrics.email_redemption_count_120h, 0::bigint) AS email_redemption_count_120h,
       COALESCE(metrics.email_redemption_count_168h, 0::bigint) AS email_redemption_count_168h,
       COALESCE(metrics.email_redemption_count_336h, 0::bigint) AS email_redemption_count_336h,
       COALESCE(metrics.email_redemption_count_720h, 0::bigint) AS email_redemption_count_720h,
       COALESCE(metrics.email_spent_6h, 0::double precision)    AS email_spent_6h,
       COALESCE(metrics.email_spent_12h, 0::double precision)   AS email_spent_12h,
       COALESCE(metrics.email_spent_24h, 0::double precision)   AS email_spent_24h,
       COALESCE(metrics.email_spent_48h, 0::double precision)   AS email_spent_48h,
       COALESCE(metrics.email_spent_120h, 0::double precision)  AS email_spent_120h,
       COALESCE(metrics.email_spent_168h, 0::double precision)  AS email_spent_168h,
       COALESCE(metrics.email_spent_336h, 0::double precision)  AS email_spent_336h,
       COALESCE(metrics.email_spent_720h, 0::double precision)  AS email_spent_720h,
       COALESCE(metrics.email_visit_count_6h, 0::bigint)        AS email_visit_count_6h,
       COALESCE(metrics.email_visit_count_12h, 0::bigint)       AS email_visit_count_12h,
       COALESCE(metrics.email_visit_count_24h, 0::bigint)       AS email_visit_count_24h,
       COALESCE(metrics.email_visit_count_48h, 0::bigint)       AS email_visit_count_48h,
       COALESCE(metrics.email_visit_count_120h, 0::bigint)      AS email_visit_count_120h,
       COALESCE(metrics.email_visit_count_168h, 0::bigint)      AS email_visit_count_168h,
       COALESCE(metrics.email_visit_count_336h, 0::bigint)      AS email_visit_count_336h,
       COALESCE(metrics.email_visit_count_720h, 0::bigint)      AS email_visit_count_720h
FROM auto_campaign_message_monthly_sent_metrics_view_materialized sent
         LEFT JOIN (SELECT COALESCE(transact.merchant_id, redeem.merchant_id, click.merchant_id)                   AS merchant_id,
                           COALESCE(transact.auto_campaign_id, redeem.auto_campaign_id,
                                    click.auto_campaign_id)                                                        AS auto_campaign_id,
                           COALESCE(transact.auto_campaign_message_id, redeem.auto_campaign_message_id,
                                    click.auto_campaign_message_id)                                                AS auto_campaign_message_id,
                           date_trunc('month'::character varying::text,
                                      COALESCE(transact.first_sent_at, redeem.first_sent_at,
                                               click.first_sent_at))                                               AS month_at,
                           sum(COALESCE(click.click_count_6h, 0::bigint))                                          AS click_count_6h,
                           sum(COALESCE(click.click_count_12h, 0::bigint))                                         AS click_count_12h,
                           sum(COALESCE(click.click_count_24h, 0::bigint))                                         AS click_count_24h,
                           sum(COALESCE(click.click_count_48h, 0::bigint))                                         AS click_count_48h,
                           sum(COALESCE(click.click_count_120h, 0::bigint))                                        AS click_count_120h,
                           sum(COALESCE(click.click_count_168h, 0::bigint))                                        AS click_count_168h,
                           sum(COALESCE(click.click_count_336h, 0::bigint))                                        AS click_count_336h,
                           sum(COALESCE(click.click_count_720h, 0::bigint))                                        AS click_count_720h,
                           sum(COALESCE(click.sms_click_count_6h, 0::bigint))                                      AS sms_click_count_6h,
                           sum(COALESCE(click.sms_click_count_12h, 0::bigint))                                     AS sms_click_count_12h,
                           sum(COALESCE(click.sms_click_count_24h, 0::bigint))                                     AS sms_click_count_24h,
                           sum(COALESCE(click.sms_click_count_48h, 0::bigint))                                     AS sms_click_count_48h,
                           sum(COALESCE(click.sms_click_count_120h, 0::bigint))                                    AS sms_click_count_120h,
                           sum(COALESCE(click.sms_click_count_168h, 0::bigint))                                    AS sms_click_count_168h,
                           sum(COALESCE(click.sms_click_count_336h, 0::bigint))                                    AS sms_click_count_336h,
                           sum(COALESCE(click.sms_click_count_720h, 0::bigint))                                    AS sms_click_count_720h,
                           sum(COALESCE(click.push_click_count_6h, 0::bigint))                                     AS push_click_count_6h,
                           sum(COALESCE(click.push_click_count_12h, 0::bigint))                                    AS push_click_count_12h,
                           sum(COALESCE(click.push_click_count_24h, 0::bigint))                                    AS push_click_count_24h,
                           sum(COALESCE(click.push_click_count_48h, 0::bigint))                                    AS push_click_count_48h,
                           sum(COALESCE(click.push_click_count_120h, 0::bigint))                                   AS push_click_count_120h,
                           sum(COALESCE(click.push_click_count_168h, 0::bigint))                                   AS push_click_count_168h,
                           sum(COALESCE(click.push_click_count_336h, 0::bigint))                                   AS push_click_count_336h,
                           sum(COALESCE(click.push_click_count_720h, 0::bigint))                                   AS push_click_count_720h,
                           sum(COALESCE(click.email_click_count_6h, 0::bigint))                                    AS email_click_count_6h,
                           sum(COALESCE(click.email_click_count_12h, 0::bigint))                                   AS email_click_count_12h,
                           sum(COALESCE(click.email_click_count_24h, 0::bigint))                                   AS email_click_count_24h,
                           sum(COALESCE(click.email_click_count_48h, 0::bigint))                                   AS email_click_count_48h,
                           sum(COALESCE(click.email_click_count_120h, 0::bigint))                                  AS email_click_count_120h,
                           sum(COALESCE(click.email_click_count_168h, 0::bigint))                                  AS email_click_count_168h,
                           sum(COALESCE(click.email_click_count_336h, 0::bigint))                                  AS email_click_count_336h,
                           sum(COALESCE(click.email_click_count_720h, 0::bigint))                                  AS email_click_count_720h,
                           sum(COALESCE(redeem.redemption_count_6h, 0::bigint))                                    AS redemption_count_6h,
                           sum(COALESCE(redeem.redemption_count_12h, 0::bigint))                                   AS redemption_count_12h,
                           sum(COALESCE(redeem.redemption_count_24h, 0::bigint))                                   AS redemption_count_24h,
                           sum(COALESCE(redeem.redemption_count_48h, 0::bigint))                                   AS redemption_count_48h,
                           sum(COALESCE(redeem.redemption_count_120h, 0::bigint))                                  AS redemption_count_120h,
                           sum(COALESCE(redeem.redemption_count_168h, 0::bigint))                                  AS redemption_count_168h,
                           sum(COALESCE(redeem.redemption_count_336h, 0::bigint))                                  AS redemption_count_336h,
                           sum(COALESCE(redeem.redemption_count_720h, 0::bigint))                                  AS redemption_count_720h,
                           sum(COALESCE(redeem.sms_redemption_count_6h, 0::bigint))                                AS sms_redemption_count_6h,
                           sum(COALESCE(redeem.sms_redemption_count_12h, 0::bigint))                               AS sms_redemption_count_12h,
                           sum(COALESCE(redeem.sms_redemption_count_24h, 0::bigint))                               AS sms_redemption_count_24h,
                           sum(COALESCE(redeem.sms_redemption_count_48h, 0::bigint))                               AS sms_redemption_count_48h,
                           sum(COALESCE(redeem.sms_redemption_count_120h, 0::bigint))                              AS sms_redemption_count_120h,
                           sum(COALESCE(redeem.sms_redemption_count_168h, 0::bigint))                              AS sms_redemption_count_168h,
                           sum(COALESCE(redeem.sms_redemption_count_336h, 0::bigint))                              AS sms_redemption_count_336h,
                           sum(COALESCE(redeem.sms_redemption_count_720h, 0::bigint))                              AS sms_redemption_count_720h,
                           sum(COALESCE(redeem.push_redemption_count_6h, 0::bigint))                               AS push_redemption_count_6h,
                           sum(COALESCE(redeem.push_redemption_count_12h, 0::bigint))                              AS push_redemption_count_12h,
                           sum(COALESCE(redeem.push_redemption_count_24h, 0::bigint))                              AS push_redemption_count_24h,
                           sum(COALESCE(redeem.push_redemption_count_48h, 0::bigint))                              AS push_redemption_count_48h,
                           sum(COALESCE(redeem.push_redemption_count_120h, 0::bigint))                             AS push_redemption_count_120h,
                           sum(COALESCE(redeem.push_redemption_count_168h, 0::bigint))                             AS push_redemption_count_168h,
                           sum(COALESCE(redeem.push_redemption_count_336h, 0::bigint))                             AS push_redemption_count_336h,
                           sum(COALESCE(redeem.push_redemption_count_720h, 0::bigint))                             AS push_redemption_count_720h,
                           sum(COALESCE(redeem.email_redemption_count_6h, 0::bigint))                              AS email_redemption_count_6h,
                           sum(COALESCE(redeem.email_redemption_count_12h, 0::bigint))                             AS email_redemption_count_12h,
                           sum(COALESCE(redeem.email_redemption_count_24h, 0::bigint))                             AS email_redemption_count_24h,
                           sum(COALESCE(redeem.email_redemption_count_48h, 0::bigint))                             AS email_redemption_count_48h,
                           sum(COALESCE(redeem.email_redemption_count_120h, 0::bigint))                            AS email_redemption_count_120h,
                           sum(COALESCE(redeem.email_redemption_count_168h, 0::bigint))                            AS email_redemption_count_168h,
                           sum(COALESCE(redeem.email_redemption_count_336h, 0::bigint))                            AS email_redemption_count_336h,
                           sum(COALESCE(redeem.email_redemption_count_720h, 0::bigint))                            AS email_redemption_count_720h,
                           sum(COALESCE(transact.spent_6h, 0::double precision))                                   AS spent_6h,
                           sum(COALESCE(transact.spent_12h, 0::double precision))                                  AS spent_12h,
                           sum(COALESCE(transact.spent_24h, 0::double precision))                                  AS spent_24h,
                           sum(COALESCE(transact.spent_48h, 0::double precision))                                  AS spent_48h,
                           sum(COALESCE(transact.spent_120h, 0::double precision))                                 AS spent_120h,
                           sum(COALESCE(transact.spent_168h, 0::double precision))                                 AS spent_168h,
                           sum(COALESCE(transact.spent_336h, 0::double precision))                                 AS spent_336h,
                           sum(COALESCE(transact.spent_720h, 0::double precision))                                 AS spent_720h,
                           sum(COALESCE(transact.visit_count_6h, 0::bigint))                                       AS visit_count_6h,
                           sum(COALESCE(transact.visit_count_12h, 0::bigint))                                      AS visit_count_12h,
                           sum(COALESCE(transact.visit_count_24h, 0::bigint))                                      AS visit_count_24h,
                           sum(COALESCE(transact.visit_count_48h, 0::bigint))                                      AS visit_count_48h,
                           sum(COALESCE(transact.visit_count_120h, 0::bigint))                                     AS visit_count_120h,
                           sum(COALESCE(transact.visit_count_168h, 0::bigint))                                     AS visit_count_168h,
                           sum(COALESCE(transact.visit_count_336h, 0::bigint))                                     AS visit_count_336h,
                           sum(COALESCE(transact.visit_count_720h, 0::bigint))                                     AS visit_count_720h,
                           sum(COALESCE(transact.sms_spent_6h, 0::double precision))                               AS sms_spent_6h,
                           sum(COALESCE(transact.sms_spent_12h, 0::double precision))                              AS sms_spent_12h,
                           sum(COALESCE(transact.sms_spent_24h, 0::double precision))                              AS sms_spent_24h,
                           sum(COALESCE(transact.sms_spent_48h, 0::double precision))                              AS sms_spent_48h,
                           sum(COALESCE(transact.sms_spent_120h, 0::double precision))                             AS sms_spent_120h,
                           sum(COALESCE(transact.sms_spent_168h, 0::double precision))                             AS sms_spent_168h,
                           sum(COALESCE(transact.sms_spent_336h, 0::double precision))                             AS sms_spent_336h,
                           sum(COALESCE(transact.sms_spent_720h, 0::double precision))                             AS sms_spent_720h,
                           sum(COALESCE(transact.sms_visit_count_6h, 0::bigint))                                   AS sms_visit_count_6h,
                           sum(COALESCE(transact.sms_visit_count_12h, 0::bigint))                                  AS sms_visit_count_12h,
                           sum(COALESCE(transact.sms_visit_count_24h, 0::bigint))                                  AS sms_visit_count_24h,
                           sum(COALESCE(transact.sms_visit_count_48h, 0::bigint))                                  AS sms_visit_count_48h,
                           sum(COALESCE(transact.sms_visit_count_120h, 0::bigint))                                 AS sms_visit_count_120h,
                           sum(COALESCE(transact.sms_visit_count_168h, 0::bigint))                                 AS sms_visit_count_168h,
                           sum(COALESCE(transact.sms_visit_count_336h, 0::bigint))                                 AS sms_visit_count_336h,
                           sum(COALESCE(transact.sms_visit_count_720h, 0::bigint))                                 AS sms_visit_count_720h,
                           sum(COALESCE(transact.push_spent_6h, 0::double precision))                              AS push_spent_6h,
                           sum(COALESCE(transact.push_spent_12h, 0::double precision))                             AS push_spent_12h,
                           sum(COALESCE(transact.push_spent_24h, 0::double precision))                             AS push_spent_24h,
                           sum(COALESCE(transact.push_spent_48h, 0::double precision))                             AS push_spent_48h,
                           sum(COALESCE(transact.push_spent_120h, 0::double precision))                            AS push_spent_120h,
                           sum(COALESCE(transact.push_spent_168h, 0::double precision))                            AS push_spent_168h,
                           sum(COALESCE(transact.push_spent_336h, 0::double precision))                            AS push_spent_336h,
                           sum(COALESCE(transact.push_spent_720h, 0::double precision))                            AS push_spent_720h,
                           sum(COALESCE(transact.push_visit_count_6h, 0::bigint))                                  AS push_visit_count_6h,
                           sum(COALESCE(transact.push_visit_count_12h, 0::bigint))                                 AS push_visit_count_12h,
                           sum(COALESCE(transact.push_visit_count_24h, 0::bigint))                                 AS push_visit_count_24h,
                           sum(COALESCE(transact.push_visit_count_48h, 0::bigint))                                 AS push_visit_count_48h,
                           sum(COALESCE(transact.push_visit_count_120h, 0::bigint))                                AS push_visit_count_120h,
                           sum(COALESCE(transact.push_visit_count_168h, 0::bigint))                                AS push_visit_count_168h,
                           sum(COALESCE(transact.push_visit_count_336h, 0::bigint))                                AS push_visit_count_336h,
                           sum(COALESCE(transact.push_visit_count_720h, 0::bigint))                                AS push_visit_count_720h,
                           sum(COALESCE(transact.email_spent_6h, 0::double precision))                             AS email_spent_6h,
                           sum(COALESCE(transact.email_spent_12h, 0::double precision))                            AS email_spent_12h,
                           sum(COALESCE(transact.email_spent_24h, 0::double precision))                            AS email_spent_24h,
                           sum(COALESCE(transact.email_spent_48h, 0::double precision))                            AS email_spent_48h,
                           sum(COALESCE(transact.email_spent_120h, 0::double precision))                           AS email_spent_120h,
                           sum(COALESCE(transact.email_spent_168h, 0::double precision))                           AS email_spent_168h,
                           sum(COALESCE(transact.email_spent_336h, 0::double precision))                           AS email_spent_336h,
                           sum(COALESCE(transact.email_spent_720h, 0::double precision))                           AS email_spent_720h,
                           sum(COALESCE(transact.email_visit_count_6h, 0::bigint))                                 AS email_visit_count_6h,
                           sum(COALESCE(transact.email_visit_count_12h, 0::bigint))                                AS email_visit_count_12h,
                           sum(COALESCE(transact.email_visit_count_24h, 0::bigint))                                AS email_visit_count_24h,
                           sum(COALESCE(transact.email_visit_count_48h, 0::bigint))                                AS email_visit_count_48h,
                           sum(COALESCE(transact.email_visit_count_120h, 0::bigint))                               AS email_visit_count_120h,
                           sum(COALESCE(transact.email_visit_count_168h, 0::bigint))                               AS email_visit_count_168h,
                           sum(COALESCE(transact.email_visit_count_336h, 0::bigint))                               AS email_visit_count_336h,
                           sum(COALESCE(transact.email_visit_count_720h, 0::bigint))                               AS email_visit_count_720h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_6h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_6h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_12h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_12h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_24h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_24h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_48h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_48h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_120h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_120h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_168h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_168h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_336h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_336h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_720h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_720h
                    FROM auto_campaign_log_click_metrics_view_materialized click
                             FULL JOIN auto_campaign_log_redemption_metrics_view_materialized redeem
                                       ON redeem.auto_campaign_log_id = click.auto_campaign_log_id
                             FULL JOIN auto_campaign_log_transaction_metrics_view_materialized transact
                                       ON transact.auto_campaign_log_id =
                                          COALESCE(click.auto_campaign_log_id, redeem.auto_campaign_log_id)
                    GROUP BY COALESCE(transact.merchant_id, redeem.merchant_id, click.merchant_id),
                             COALESCE(transact.auto_campaign_id, redeem.auto_campaign_id, click.auto_campaign_id),
                             COALESCE(transact.auto_campaign_message_id, redeem.auto_campaign_message_id,
                                      click.auto_campaign_message_id),
                             date_trunc('month'::character varying::text,
                                        COALESCE(transact.first_sent_at, redeem.first_sent_at,
                                                 click.first_sent_at))) metrics
                   ON metrics.merchant_id = sent.merchant_id AND metrics.auto_campaign_id = sent.auto_campaign_id AND
                      metrics.auto_campaign_message_id = sent.auto_campaign_message_id AND
                      metrics.month_at = sent.month_at
WHERE sent.auto_campaign_message_id IS NOT NULL;

alter table auto_campaign_message_monthly_metrics_view
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_message_monthly_metrics_view to rails_gd75ob;

grant select on auto_campaign_message_monthly_metrics_view to ghuppert_m8e4d7;

grant select on auto_campaign_message_monthly_metrics_view to aggregate_sms_data_fdif4h;

grant select on auto_campaign_message_monthly_metrics_view to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_message_monthly_metrics_view to glue_admin_a99j6d;

grant select on auto_campaign_message_monthly_metrics_view to glue_admin_d3a7h2;

grant select on auto_campaign_message_monthly_metrics_view to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_message_monthly_metrics_view to redshift_data_copy_l799nl;

grant select on auto_campaign_message_monthly_metrics_view to "awsidc:ypark@springbig.com";

grant select on auto_campaign_message_monthly_metrics_view to "awsidc:mvizcaino@springbig.com";

create or replace view auto_campaign_message_daily_metrics_view
            (merchant_id, auto_campaign_id, auto_campaign_message_id, day_at, sent_count, email_sent_count,
             push_sent_count, sms_sent_count, email_credits, push_credits, sms_credits, click_count_6h, click_count_12h,
             click_count_24h, click_count_48h, click_count_120h, click_count_168h, click_count_336h, click_count_720h,
             redemption_count_6h, redemption_count_12h, redemption_count_24h, redemption_count_48h,
             redemption_count_120h, redemption_count_168h, redemption_count_336h, redemption_count_720h, spent_6h,
             spent_12h, spent_24h, spent_48h, spent_120h, spent_168h, spent_336h, spent_720h, visit_count_6h,
             visit_count_12h, visit_count_24h, visit_count_48h, visit_count_120h, visit_count_168h, visit_count_336h,
             visit_count_720h, visit_member_count_6h, visit_member_count_12h, visit_member_count_24h,
             visit_member_count_48h, visit_member_count_120h, visit_member_count_168h, visit_member_count_336h,
             visit_member_count_720h)
as
SELECT sent.merchant_id,
       sent.auto_campaign_id,
       sent.auto_campaign_message_id,
       sent.day_at,
       sent.sent_count,
       sent.email_sent_count,
       sent.push_sent_count,
       sent.sms_sent_count,
       sent.email_credits,
       sent.push_credits,
       sent.sms_credits,
       COALESCE(metrics.click_count_6h, 0::bigint)          AS click_count_6h,
       COALESCE(metrics.click_count_12h, 0::bigint)         AS click_count_12h,
       COALESCE(metrics.click_count_24h, 0::bigint)         AS click_count_24h,
       COALESCE(metrics.click_count_48h, 0::bigint)         AS click_count_48h,
       COALESCE(metrics.click_count_120h, 0::bigint)        AS click_count_120h,
       COALESCE(metrics.click_count_168h, 0::bigint)        AS click_count_168h,
       COALESCE(metrics.click_count_336h, 0::bigint)        AS click_count_336h,
       COALESCE(metrics.click_count_720h, 0::bigint)        AS click_count_720h,
       COALESCE(metrics.redemption_count_6h, 0::bigint)     AS redemption_count_6h,
       COALESCE(metrics.redemption_count_12h, 0::bigint)    AS redemption_count_12h,
       COALESCE(metrics.redemption_count_24h, 0::bigint)    AS redemption_count_24h,
       COALESCE(metrics.redemption_count_48h, 0::bigint)    AS redemption_count_48h,
       COALESCE(metrics.redemption_count_120h, 0::bigint)   AS redemption_count_120h,
       COALESCE(metrics.redemption_count_168h, 0::bigint)   AS redemption_count_168h,
       COALESCE(metrics.redemption_count_336h, 0::bigint)   AS redemption_count_336h,
       COALESCE(metrics.redemption_count_720h, 0::bigint)   AS redemption_count_720h,
       COALESCE(metrics.spent_6h, 0::double precision)      AS spent_6h,
       COALESCE(metrics.spent_12h, 0::double precision)     AS spent_12h,
       COALESCE(metrics.spent_24h, 0::double precision)     AS spent_24h,
       COALESCE(metrics.spent_48h, 0::double precision)     AS spent_48h,
       COALESCE(metrics.spent_120h, 0::double precision)    AS spent_120h,
       COALESCE(metrics.spent_168h, 0::double precision)    AS spent_168h,
       COALESCE(metrics.spent_336h, 0::double precision)    AS spent_336h,
       COALESCE(metrics.spent_720h, 0::double precision)    AS spent_720h,
       COALESCE(metrics.visit_count_6h, 0::bigint)          AS visit_count_6h,
       COALESCE(metrics.visit_count_12h, 0::bigint)         AS visit_count_12h,
       COALESCE(metrics.visit_count_24h, 0::bigint)         AS visit_count_24h,
       COALESCE(metrics.visit_count_48h, 0::bigint)         AS visit_count_48h,
       COALESCE(metrics.visit_count_120h, 0::bigint)        AS visit_count_120h,
       COALESCE(metrics.visit_count_168h, 0::bigint)        AS visit_count_168h,
       COALESCE(metrics.visit_count_336h, 0::bigint)        AS visit_count_336h,
       COALESCE(metrics.visit_count_720h, 0::bigint)        AS visit_count_720h,
       COALESCE(metrics.visit_member_count_6h, 0::bigint)   AS visit_member_count_6h,
       COALESCE(metrics.visit_member_count_12h, 0::bigint)  AS visit_member_count_12h,
       COALESCE(metrics.visit_member_count_24h, 0::bigint)  AS visit_member_count_24h,
       COALESCE(metrics.visit_member_count_48h, 0::bigint)  AS visit_member_count_48h,
       COALESCE(metrics.visit_member_count_120h, 0::bigint) AS visit_member_count_120h,
       COALESCE(metrics.visit_member_count_168h, 0::bigint) AS visit_member_count_168h,
       COALESCE(metrics.visit_member_count_336h, 0::bigint) AS visit_member_count_336h,
       COALESCE(metrics.visit_member_count_720h, 0::bigint) AS visit_member_count_720h
FROM auto_campaign_message_daily_sent_metrics_view_materialized sent
         LEFT JOIN (SELECT COALESCE(transact.merchant_id, redeem.merchant_id, click.merchant_id)                   AS merchant_id,
                           COALESCE(transact.auto_campaign_id, redeem.auto_campaign_id,
                                    click.auto_campaign_id)                                                        AS auto_campaign_id,
                           COALESCE(transact.auto_campaign_message_id, redeem.auto_campaign_message_id,
                                    click.auto_campaign_message_id)                                                AS auto_campaign_message_id,
                           date_trunc('day'::character varying::text,
                                      COALESCE(transact.first_sent_at, redeem.first_sent_at,
                                               click.first_sent_at))                                               AS day_at,
                           sum(COALESCE(click.click_count_6h, 0::bigint))                                          AS click_count_6h,
                           sum(COALESCE(click.click_count_12h, 0::bigint))                                         AS click_count_12h,
                           sum(COALESCE(click.click_count_24h, 0::bigint))                                         AS click_count_24h,
                           sum(COALESCE(click.click_count_48h, 0::bigint))                                         AS click_count_48h,
                           sum(COALESCE(click.click_count_120h, 0::bigint))                                        AS click_count_120h,
                           sum(COALESCE(click.click_count_168h, 0::bigint))                                        AS click_count_168h,
                           sum(COALESCE(click.click_count_336h, 0::bigint))                                        AS click_count_336h,
                           sum(COALESCE(click.click_count_720h, 0::bigint))                                        AS click_count_720h,
                           sum(COALESCE(redeem.redemption_count_6h, 0::bigint))                                    AS redemption_count_6h,
                           sum(COALESCE(redeem.redemption_count_12h, 0::bigint))                                   AS redemption_count_12h,
                           sum(COALESCE(redeem.redemption_count_24h, 0::bigint))                                   AS redemption_count_24h,
                           sum(COALESCE(redeem.redemption_count_48h, 0::bigint))                                   AS redemption_count_48h,
                           sum(COALESCE(redeem.redemption_count_120h, 0::bigint))                                  AS redemption_count_120h,
                           sum(COALESCE(redeem.redemption_count_168h, 0::bigint))                                  AS redemption_count_168h,
                           sum(COALESCE(redeem.redemption_count_336h, 0::bigint))                                  AS redemption_count_336h,
                           sum(COALESCE(redeem.redemption_count_720h, 0::bigint))                                  AS redemption_count_720h,
                           sum(COALESCE(transact.spent_6h, 0::double precision))                                   AS spent_6h,
                           sum(COALESCE(transact.spent_12h, 0::double precision))                                  AS spent_12h,
                           sum(COALESCE(transact.spent_24h, 0::double precision))                                  AS spent_24h,
                           sum(COALESCE(transact.spent_48h, 0::double precision))                                  AS spent_48h,
                           sum(COALESCE(transact.spent_120h, 0::double precision))                                 AS spent_120h,
                           sum(COALESCE(transact.spent_168h, 0::double precision))                                 AS spent_168h,
                           sum(COALESCE(transact.spent_336h, 0::double precision))                                 AS spent_336h,
                           sum(COALESCE(transact.spent_720h, 0::double precision))                                 AS spent_720h,
                           sum(COALESCE(transact.visit_count_6h, 0::bigint))                                       AS visit_count_6h,
                           sum(COALESCE(transact.visit_count_12h, 0::bigint))                                      AS visit_count_12h,
                           sum(COALESCE(transact.visit_count_24h, 0::bigint))                                      AS visit_count_24h,
                           sum(COALESCE(transact.visit_count_48h, 0::bigint))                                      AS visit_count_48h,
                           sum(COALESCE(transact.visit_count_120h, 0::bigint))                                     AS visit_count_120h,
                           sum(COALESCE(transact.visit_count_168h, 0::bigint))                                     AS visit_count_168h,
                           sum(COALESCE(transact.visit_count_336h, 0::bigint))                                     AS visit_count_336h,
                           sum(COALESCE(transact.visit_count_720h, 0::bigint))                                     AS visit_count_720h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_6h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_6h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_12h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_12h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_24h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_24h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_48h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_48h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_120h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_120h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_168h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_168h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_336h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_336h,
                           sum(
                                   CASE
                                       WHEN transact.visit_count_720h <> 0 THEN 1
                                       ELSE 0
                                       END)                                                                        AS visit_member_count_720h
                    FROM auto_campaign_log_click_metrics_view_materialized click
                             FULL JOIN auto_campaign_log_redemption_metrics_view_materialized redeem
                                       ON redeem.auto_campaign_log_id = click.auto_campaign_log_id
                             FULL JOIN auto_campaign_log_transaction_metrics_view_materialized transact
                                       ON transact.auto_campaign_log_id =
                                          COALESCE(click.auto_campaign_log_id, redeem.auto_campaign_log_id)
                    GROUP BY COALESCE(transact.merchant_id, redeem.merchant_id, click.merchant_id),
                             COALESCE(transact.auto_campaign_id, redeem.auto_campaign_id, click.auto_campaign_id),
                             COALESCE(transact.auto_campaign_message_id, redeem.auto_campaign_message_id,
                                      click.auto_campaign_message_id),
                             date_trunc('day'::character varying::text,
                                        COALESCE(transact.first_sent_at, redeem.first_sent_at,
                                                 click.first_sent_at))) metrics
                   ON metrics.merchant_id = sent.merchant_id AND metrics.auto_campaign_id = sent.auto_campaign_id AND
                      metrics.auto_campaign_message_id = sent.auto_campaign_message_id AND metrics.day_at = sent.day_at
WHERE sent.auto_campaign_message_id IS NOT NULL;

alter table auto_campaign_message_daily_metrics_view
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_message_daily_metrics_view to rails_gd75ob;

grant select on auto_campaign_message_daily_metrics_view to ghuppert_m8e4d7;

grant select on auto_campaign_message_daily_metrics_view to aggregate_sms_data_fdif4h;

grant select on auto_campaign_message_daily_metrics_view to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_message_daily_metrics_view to glue_admin_a99j6d;

grant select on auto_campaign_message_daily_metrics_view to glue_admin_d3a7h2;

grant select on auto_campaign_message_daily_metrics_view to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_message_daily_metrics_view to redshift_data_copy_l799nl;

grant select on auto_campaign_message_daily_metrics_view to "awsidc:ypark@springbig.com";

grant select on auto_campaign_message_daily_metrics_view to "awsidc:mvizcaino@springbig.com";

create or replace view merchant_daily_metrics_view
            (merchant_id, date_hour, owner_type, sent_count, offer_sent_count, email_sent_count, push_sent_count,
             sms_sent_count, imessage_sent_count, email_credits, push_credits, sms_credits, click_count,
             redemption_count, spent, visit_count)
as
SELECT base.merchant_id,
       base.date_hour,
       ot.owner_type,
       COALESCE(msv.sent_count, 0::bigint)          AS sent_count,
       COALESCE(msv.offer_sent_count, 0::bigint)    AS offer_sent_count,
       COALESCE(msv.email_sent_count, 0::bigint)    AS email_sent_count,
       COALESCE(msv.push_sent_count, 0::bigint)     AS push_sent_count,
       COALESCE(msv.sms_sent_count, 0::bigint)      AS sms_sent_count,
       COALESCE(msv.imessage_sent_count, 0::bigint) AS imessage_sent_count,
       COALESCE(msv.email_credits, 0::numeric)      AS email_credits,
       COALESCE(msv.push_credits, 0::numeric)       AS push_credits,
       COALESCE(msv.sms_credits, 0::numeric)        AS sms_credits,
       COALESCE(mcv.click_count, 0::bigint)         AS click_count,
       COALESCE(rv.redemption_count, 0::bigint)     AS redemption_count,
       COALESCE(mtv.spent, 0::double precision)     AS spent,
       COALESCE(mtv.visit_count, 0::bigint)         AS visit_count
FROM (SELECT combined.merchant_id, combined.date_hour
      FROM (((SELECT merchant_sent_daily_metrics_view_materialized.merchant_id,
                     merchant_sent_daily_metrics_view_materialized.date_hour
              FROM merchant_sent_daily_metrics_view_materialized
              UNION ALL
              SELECT merchant_click_daily_metrics_view_materialized.merchant_id,
                     merchant_click_daily_metrics_view_materialized.date_hour
              FROM merchant_click_daily_metrics_view_materialized)
             UNION ALL
             SELECT merchant_redemption_daily_metrics_view_materialized.merchant_id,
                    merchant_redemption_daily_metrics_view_materialized.date_hour
             FROM merchant_redemption_daily_metrics_view_materialized)
            UNION ALL
            SELECT merchant_transaction_daily_metrics_view_materialized.merchant_id,
                   merchant_transaction_daily_metrics_view_materialized.date_hour
            FROM merchant_transaction_daily_metrics_view_materialized) combined
      GROUP BY combined.merchant_id, combined.date_hour) base
         CROSS JOIN (SELECT 'Campaign'::character varying AS owner_type
                     UNION ALL
                     SELECT 'AutoCampaign'::character varying AS owner_type) ot
         LEFT JOIN merchant_sent_daily_metrics_view_materialized msv
                   ON base.date_hour = msv.date_hour AND base.merchant_id = msv.merchant_id AND
                      ot.owner_type::text = msv.owner_type::text
         LEFT JOIN merchant_click_daily_metrics_view_materialized mcv
                   ON base.date_hour = mcv.date_hour AND base.merchant_id = mcv.merchant_id AND
                      ot.owner_type::text = mcv.owner_type::text
         LEFT JOIN merchant_redemption_daily_metrics_view_materialized rv
                   ON base.date_hour = rv.date_hour AND base.merchant_id = rv.merchant_id AND
                      ot.owner_type::text = rv.owner_type::text
         LEFT JOIN merchant_transaction_daily_metrics_view_materialized mtv
                   ON base.date_hour = mtv.date_hour AND base.merchant_id = mtv.merchant_id;

alter table merchant_daily_metrics_view
    owner to rails_gd75ob;

grant select on merchant_daily_metrics_view to lambda_production_redshift;

grant select on merchant_daily_metrics_view to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

create or replace procedure email_count_by_merchant_campaigns()
    language plpgsql
as
$$
declare

begin

truncate table springbig_production_aggregations.email_counts;

insert into springbig_production_aggregations.email_counts (merchant_id, sent_at, process_id, delivered_count, opened_count, clicked_count,
                          unsubscribed_count, suppress_unsubscribed_count, complained_count, suppress_complained_count,
                          failed_count, bounced_count)
SELECT
    merchant_id,
    MIN(epoch) AS sent_at,
    process_id,
    COUNT(
        DISTINCT (
            CASE
                WHEN status IN ('delivered', 'opened', 'clicked') THEN email_log_id
                ELSE NULL
            END
        )
    ) AS delivered_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status IN ('opened', 'clicked') THEN email_log_id
                ELSE NULL
            END
        )
    ) AS opened_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'clicked' THEN email_log_id
                ELSE NULL
            END
        )
    ) AS clicked_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'unsubscribed' THEN email_log_id
                ELSE NULL
            END
        )
    ) as unsubscribed_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'failed'
                AND severity = 'permanent'
                AND reason = 'suppress-unsubscribe' THEN email_log_id
                ELSE NULL
            END
        )
    ) as suppress_unsubscribed_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'complained' THEN email_log_id
                ELSE NULL
            END
        )
    ) as complained_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'failed'
                AND severity = 'permanent'
                AND reason = 'suppress-complaint' THEN email_log_id
                ELSE NULL
            END
        )
    ) as suppress_complained_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'failed' THEN email_log_id
                ELSE NULL
            END
        )
    ) as failed_count,
    COUNT(
        DISTINCT (
            CASE
                WHEN status = 'failed'
                AND severity = 'permanent'
                AND reason NOT IN ('suppress-unsubscribe', 'suppress-complaint') THEN email_log_id
                ELSE NULL
            END
        )
    ) as bounced_count
FROM springbig_production_logs.email_receipts
WHERE
    process_type = 'Campaign'
GROUP BY
    process_id,
    merchant_id
ORDER BY
    process_id desc;

end
$$;

create or replace procedure aggregate_ten_dlc_brands_performance()
    language plpgsql
as
$$
declare

begin


insert into springbig_production_aggregations.ten_dlc_brands_performance (date, id, name, reference_id, messages_per_day, provider, provider_name,
                                        carrier_name, sent, delivered, delivered_units, undelivered_units,
                                        unconfirmed_units, clicked, type)

with members_with_carriers as (
select members.id as member_id
,case
when c.major_provider=1 then 'ATT'
when c.major_provider=2 then 'Verizon Wireless'
when c.major_provider=3 then 'Sprint'
when c.major_provider=4 then 'T-Mobile'
when (c.major_provider=5 or c.major_provider is null) then 'Other'
End as carrier_name
from springbig_production.mobile_subscribers ms
left join springbig_production.carriers c on ms.carrier_id = c.id
left join springbig_production.members on ms.id=members.mobile_subscriber_id
)
, sms as (
    select
           sms_send."from" as sending
           , msg_reference
           , process_id
           , member_id
           , date(TIMESTAMP 'epoch' + sms_send.epoch * INTERVAL '1 second') as date
           , merchant_id
           , carrier_name
           , provider
           , count(*) as messages
            from springbig_production_logs.sms_send
            left join members_with_carriers on sms_send.recipient_id = members_with_carriers.member_id and carrier_name is not null
            where date(TIMESTAMP 'epoch' + sms_send.epoch * INTERVAL '1 second') = CURRENT_DATE - interval '1 day'
            and carrier_name in ('Sprint','T-Mobile')
            group by merchant_id, carrier_name, date(TIMESTAMP 'epoch' + sms_send.epoch * INTERVAL '1 second')
                   , sms_send."from", msg_reference, process_id, member_id, provider
            )
,delivered as (
    select *
    from springbig_production_logs.sms_receipts
    where date(TIMESTAMP 'epoch' + sms_receipts.epoch * INTERVAL '0.001 second') = current_date - interval '1 day '
      -- and date(TIMESTAMP 'epoch' + sms_receipts.epoch * INTERVAL '0.001 second') < current_date - interval '0 day '
      and status = 'delivered'
)
,undelivered as (
    select *
    from springbig_production_logs.sms_receipts
    where date(TIMESTAMP 'epoch' + sms_receipts.epoch * INTERVAL '0.001 second') = current_date - interval '1 day '
   -- and date(TIMESTAMP 'epoch' + sms_receipts.epoch * INTERVAL '0.001 second') < current_date - interval '0 day '
      and status = 'undelivered'
)
,unconfirmed as (
    select msg_reference
    from sms
    left join delivered on sms.msg_reference = delivered.message_uuid
    left join undelivered on sms.msg_reference = undelivered.message_uuid
    where delivered.message_uuid is null and undelivered.message_uuid is null
)
,memberclicks as (
select
shortened_urls.merchant_id,
owner_id as campaign_id,
      members_with_carriers.carrier_name,
      shortened_urls.member_id
from springbig_production.shortened_urls
left join members_with_carriers on members_with_carriers.member_id = shortened_urls.member_id
where  shortened_urls.updated_at = current_date - INTERVAL '1 DAY' -- and shortened_urls.updated_at < current_date - INTERVAL '0 DAY'
)


select sms.date--date
     , ten_dlc_brands.id --bigint
     , ten_dlc_brands.name --varchar
     , ten_dlc_brands.reference_id --varchar
     , ten_dlc_brands.mpd as messages_per_day --integer
     ,case when sms.provider = 'plivo' then 1
        when sms.provider = 'telnyx' then 2
        when sms.provider = 'convergence' then 6
        when sms.provider = 'swift' then 7
        else 0
      end as provider
     , sms.provider as provider_name --varchar
     , sms.carrier_name -- varchar
     , count(sms.messages) as sent -- bigint
     , count(delivered.status) as delivered --bigint
     , sum(delivered.units) as delivered_units --bigint
     , sum(undelivered.units) as undelivered_units --bigint
     , count(unconfirmed.msg_reference) as unconfirmed_units --bigint
     , coalesce(count(memberclicks.member_id),0) AS Clicked --bigint
     , case when tdc.campaign_type = 1 then 'Registered'
            when tdc.campaign_type = 0 then 'Unregistered'
            else 'Other'
       End as type --varchar
from springbig_production.ten_dlc_brands
join springbig_production_dms.ten_dlc_campaigns tdc on ten_dlc_brands.id = tdc.ten_dlc_brand_id
join springbig_production.merchant_phone_numbers mpn on tdc.id = mpn.ten_dlc_campaign_id
join sms on mpn.merchant_id = sms.merchant_id and mpn.phone_number = sms.sending
left join delivered on sms.msg_reference = delivered.message_uuid
left join undelivered on sms.msg_reference = undelivered.message_uuid
left join unconfirmed on sms.msg_reference = unconfirmed.msg_reference
left join memberclicks on memberclicks.campaign_id = sms.process_id and memberclicks.member_id = sms.member_id
--join messagessent on messagessent.id = ten_dlc_brands.id
group by ten_dlc_brands.id, ten_dlc_brands.name
     , ten_dlc_brands.reference_id
     , ten_dlc_brands.mpd
     , sms.provider
     , sms.date
     , sms.carrier_name--,messagessent.msgs_sent
     , tdc.campaign_type
order by ten_dlc_brands.id, date;

end
$$;

