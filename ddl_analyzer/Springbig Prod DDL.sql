create table if not exists auto_campaign_logs
(
    id                       bigint    not null encode az64 distkey
        constraint "auto_campaign_logs_pk_auto_campa_1626196043_68 "
            primary key,
    created_at               timestamp not null encode az64,
    updated_at               timestamp not null encode az64,
    sent_at                  timestamp encode az64,
    merchant_id              integer   not null encode az64,
    auto_campaign_id         integer   not null encode az64,
    member_id                integer   not null encode az64,
    auto_campaign_message_id integer encode az64,
    auto_campaign_scope_id   integer encode az64
)
    diststyle key;

alter table auto_campaign_logs
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_logs to email_collector_1cf3j6;

grant select on auto_campaign_logs to update_other_carrier_8ecfg9;

grant select on auto_campaign_logs to pos_integrations_alerts_cijf3e;

grant select on auto_campaign_logs to redshift_lag_check_bjjncc;

grant select on auto_campaign_logs to aggregate_campaign_brand_sales_imbodm;

grant select on auto_campaign_logs to aggregate_campaign_spend_buckets_i6deeb;

grant select on auto_campaign_logs to aggregate_sms_data_mn21ig;

grant select on auto_campaign_logs to aggregate_campaign_category_sales_ni8ghd;

grant select on auto_campaign_logs to aggregate_member_opt_outs_5i1m3o;

grant select on auto_campaign_logs to aggregate_transaction_details_for_ads_7bkbd4;

grant select on auto_campaign_logs to update_visit_details_brands_8db5bk;

grant select on auto_campaign_logs to update_merchant_member_counts_bj3dm9;

grant select on auto_campaign_logs to messaging_reporting;

grant select on auto_campaign_logs to rails_gd75ob;

grant select on auto_campaign_logs to t_tnegri_hefdl9;

grant select on auto_campaign_logs to inteq_user_jl95l5;

grant select on auto_campaign_logs to gdion_94lj0n;

grant select on auto_campaign_logs to reporting_y4mc58das_ho8o3n;

grant select on auto_campaign_logs to ghuppert_m8e4d7;

grant select on auto_campaign_logs to aggregate_push_data_9lmlb8;

grant select on auto_campaign_logs to aggregate_push_data_dfb2c9;

grant select on auto_campaign_logs to aggregate_transaction_details_5nhkkg;

grant select on auto_campaign_logs to autoconnects_cache_builder_7h8n39;

grant select on auto_campaign_logs to aggregate_sms_data_fdif4h;

grant select on auto_campaign_logs to t_jdavis;

grant select on auto_campaign_logs to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_logs to glue_admin_a99j6d;

grant select on auto_campaign_logs to glue_admin_d3a7h2;

grant select on auto_campaign_logs to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_logs to redshift_data_copy_l799nl;

grant select on auto_campaign_logs to bbwoika;

grant delete, insert, select, update on auto_campaign_logs to lambda_production_redshift;

grant select on auto_campaign_logs to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on auto_campaign_logs to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on auto_campaign_logs to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on auto_campaign_logs to "awsidc:ypark@springbig.com";

grant select on auto_campaign_logs to "awsidc:mvizcaino@springbig.com";

grant select on auto_campaign_logs to "awsidc:aonulak@springbig.com";

grant select on auto_campaign_logs to group readonly;

grant insert, references, select, update on auto_campaign_logs to group redshift_api_svc_dbgroup;

create table if not exists auto_campaign_messages
(
    id                            bigint    not null encode az64 distkey
        constraint "auto_campaign_messages_pk_auto_campa_1626196285_75 "
            primary key,
    auto_campaign_id              integer   not null encode az64,
    auto_campaign_scope_id        integer   not null encode az64,
    sent_at                       timestamp encode az64,
    sms_content                   varchar(64512),
    created_at                    timestamp not null encode az64,
    updated_at                    timestamp not null encode az64,
    merchant_id                   integer encode az64,
    _type                         integer   not null encode az64,
    _type_options                 varchar(765),
    external_url                  varchar(64512),
    priority                      integer encode az64,
    has_blacklisted_words_boolean boolean,
    image_type                    integer   not null encode az64,
    url_count                     integer   not null encode az64,
    clicked_count                 integer   not null encode az64,
    stashboard_views_count        integer encode az64,
    has_blacklisted_words         varchar(15)
)
    diststyle key;

alter table auto_campaign_messages
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_messages to email_collector_1cf3j6;

grant select on auto_campaign_messages to update_other_carrier_8ecfg9;

grant select on auto_campaign_messages to pos_integrations_alerts_cijf3e;

grant select on auto_campaign_messages to redshift_lag_check_bjjncc;

grant select on auto_campaign_messages to aggregate_campaign_brand_sales_imbodm;

grant select on auto_campaign_messages to aggregate_campaign_spend_buckets_i6deeb;

grant select on auto_campaign_messages to aggregate_sms_data_mn21ig;

grant select on auto_campaign_messages to aggregate_campaign_category_sales_ni8ghd;

grant select on auto_campaign_messages to aggregate_member_opt_outs_5i1m3o;

grant select on auto_campaign_messages to aggregate_transaction_details_for_ads_7bkbd4;

grant select on auto_campaign_messages to update_visit_details_brands_8db5bk;

grant select on auto_campaign_messages to update_merchant_member_counts_bj3dm9;

grant select on auto_campaign_messages to messaging_reporting;

grant select on auto_campaign_messages to rails_gd75ob;

grant select on auto_campaign_messages to t_tnegri_hefdl9;

grant select on auto_campaign_messages to inteq_user_jl95l5;

grant select on auto_campaign_messages to gdion_94lj0n;

grant select on auto_campaign_messages to reporting_y4mc58das_ho8o3n;

grant select on auto_campaign_messages to ghuppert_m8e4d7;

grant select on auto_campaign_messages to aggregate_push_data_9lmlb8;

grant select on auto_campaign_messages to aggregate_push_data_dfb2c9;

grant select on auto_campaign_messages to aggregate_transaction_details_5nhkkg;

grant select on auto_campaign_messages to autoconnects_cache_builder_7h8n39;

grant select on auto_campaign_messages to aggregate_sms_data_fdif4h;

grant select on auto_campaign_messages to t_jdavis;

grant select on auto_campaign_messages to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_messages to glue_admin_a99j6d;

grant select on auto_campaign_messages to glue_admin_d3a7h2;

grant select on auto_campaign_messages to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_messages to redshift_data_copy_l799nl;

grant select on auto_campaign_messages to bbwoika;

grant delete, insert, select, update on auto_campaign_messages to lambda_production_redshift;

grant select on auto_campaign_messages to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on auto_campaign_messages to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on auto_campaign_messages to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on auto_campaign_messages to "awsidc:ypark@springbig.com";

grant select on auto_campaign_messages to "awsidc:mvizcaino@springbig.com";

grant select on auto_campaign_messages to "awsidc:aonulak@springbig.com";

grant select on auto_campaign_messages to group readonly;

grant insert, references, select, update on auto_campaign_messages to group redshift_api_svc_dbgroup;

create table if not exists auto_campaign_scopes
(
    id                    bigint      not null encode az64 distkey
        constraint "auto_campaign_scopes_pk_auto_campa_1626196285_79 "
            primary key,
    auto_campaign_id      integer     not null encode az64,
    sent_at               timestamp encode az64,
    all_locations_boolean boolean     not null,
    all_interests_boolean boolean     not null,
    created_at            timestamp   not null encode az64,
    updated_at            timestamp   not null encode az64,
    priority              integer     not null encode az64,
    merchant_id           integer encode az64,
    meta                  varchar(64512),
    template_id           integer encode az64,
    template_image_id     integer encode az64,
    all_locations         varchar(15) not null,
    all_interests         varchar(15) not null
)
    diststyle key;

alter table auto_campaign_scopes
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaign_scopes to email_collector_1cf3j6;

grant select on auto_campaign_scopes to update_other_carrier_8ecfg9;

grant select on auto_campaign_scopes to pos_integrations_alerts_cijf3e;

grant select on auto_campaign_scopes to redshift_lag_check_bjjncc;

grant select on auto_campaign_scopes to aggregate_campaign_brand_sales_imbodm;

grant select on auto_campaign_scopes to aggregate_campaign_spend_buckets_i6deeb;

grant select on auto_campaign_scopes to aggregate_sms_data_mn21ig;

grant select on auto_campaign_scopes to aggregate_campaign_category_sales_ni8ghd;

grant select on auto_campaign_scopes to aggregate_member_opt_outs_5i1m3o;

grant select on auto_campaign_scopes to aggregate_transaction_details_for_ads_7bkbd4;

grant select on auto_campaign_scopes to update_visit_details_brands_8db5bk;

grant select on auto_campaign_scopes to update_merchant_member_counts_bj3dm9;

grant select on auto_campaign_scopes to messaging_reporting;

grant select on auto_campaign_scopes to rails_gd75ob;

grant select on auto_campaign_scopes to t_tnegri_hefdl9;

grant select on auto_campaign_scopes to inteq_user_jl95l5;

grant select on auto_campaign_scopes to gdion_94lj0n;

grant select on auto_campaign_scopes to reporting_y4mc58das_ho8o3n;

grant select on auto_campaign_scopes to ghuppert_m8e4d7;

grant select on auto_campaign_scopes to aggregate_push_data_9lmlb8;

grant select on auto_campaign_scopes to aggregate_push_data_dfb2c9;

grant select on auto_campaign_scopes to aggregate_transaction_details_5nhkkg;

grant select on auto_campaign_scopes to autoconnects_cache_builder_7h8n39;

grant select on auto_campaign_scopes to aggregate_sms_data_fdif4h;

grant select on auto_campaign_scopes to t_jdavis;

grant select on auto_campaign_scopes to analytics_process_incoming_events_oa32mf;

grant select on auto_campaign_scopes to glue_admin_a99j6d;

grant select on auto_campaign_scopes to glue_admin_d3a7h2;

grant select on auto_campaign_scopes to aggregate_campaign_redemptions_c81425;

grant select on auto_campaign_scopes to redshift_data_copy_l799nl;

grant select on auto_campaign_scopes to bbwoika;

grant delete, insert, select, update on auto_campaign_scopes to lambda_production_redshift;

grant select on auto_campaign_scopes to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on auto_campaign_scopes to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on auto_campaign_scopes to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on auto_campaign_scopes to "awsidc:ypark@springbig.com";

grant select on auto_campaign_scopes to "awsidc:mvizcaino@springbig.com";

grant select on auto_campaign_scopes to "awsidc:aonulak@springbig.com";

grant select on auto_campaign_scopes to group readonly;

grant insert, references, select, update on auto_campaign_scopes to group redshift_api_svc_dbgroup;

create table if not exists auto_campaigns
(
    id                   bigint                                         not null encode az64 distkey
        constraint "auto_campaigns_pk_auto_campa_1626196286_82 "
            primary key,
    created_at           timestamp                                      not null encode az64,
    updated_at           timestamp                                      not null encode az64,
    merchant_id          integer                                        not null encode az64,
    _type                integer                                        not null encode az64,
    throttle             integer                                        not null encode az64,
    enabled_boolean      boolean     default false                      not null,
    send_at_string       varchar(30),
    sent_at              timestamp encode az64,
    name                 varchar(765),
    message_sms          varchar(64512),
    message_email        varchar(765),
    argument_1           varchar(765),
    argument_2           varchar(765),
    argument_3           varchar(765),
    send_at_local_string varchar(30),
    generation           integer                                        not null encode az64,
    argument_4           varchar(765),
    url_count            integer                                        not null encode az64,
    clicked_count        integer                                        not null encode az64,
    advertiser_id        integer encode az64,
    enabled_changed_at   timestamp encode az64,
    enabled              varchar(15) default 'false'::character varying not null,
    send_at              time encode az64,
    send_at_local        time encode az64
)
    diststyle key;

alter table auto_campaigns
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on auto_campaigns to email_collector_1cf3j6;

grant select on auto_campaigns to update_other_carrier_8ecfg9;

grant select on auto_campaigns to pos_integrations_alerts_cijf3e;

grant select on auto_campaigns to redshift_lag_check_bjjncc;

grant select on auto_campaigns to aggregate_campaign_brand_sales_imbodm;

grant select on auto_campaigns to aggregate_campaign_spend_buckets_i6deeb;

grant select on auto_campaigns to aggregate_sms_data_mn21ig;

grant select on auto_campaigns to aggregate_campaign_category_sales_ni8ghd;

grant select on auto_campaigns to aggregate_member_opt_outs_5i1m3o;

grant select on auto_campaigns to aggregate_transaction_details_for_ads_7bkbd4;

grant select on auto_campaigns to update_visit_details_brands_8db5bk;

grant select on auto_campaigns to update_merchant_member_counts_bj3dm9;

grant select on auto_campaigns to messaging_reporting;

grant select on auto_campaigns to rails_gd75ob;

grant select on auto_campaigns to t_tnegri_hefdl9;

grant select on auto_campaigns to inteq_user_jl95l5;

grant select on auto_campaigns to gdion_94lj0n;

grant select on auto_campaigns to reporting_y4mc58das_ho8o3n;

grant select on auto_campaigns to ghuppert_m8e4d7;

grant select on auto_campaigns to aggregate_push_data_9lmlb8;

grant select on auto_campaigns to aggregate_push_data_dfb2c9;

grant select on auto_campaigns to aggregate_transaction_details_5nhkkg;

grant select on auto_campaigns to autoconnects_cache_builder_7h8n39;

grant select on auto_campaigns to aggregate_sms_data_fdif4h;

grant select on auto_campaigns to t_jdavis;

grant select on auto_campaigns to analytics_process_incoming_events_oa32mf;

grant select on auto_campaigns to glue_admin_a99j6d;

grant select on auto_campaigns to glue_admin_d3a7h2;

grant select on auto_campaigns to aggregate_campaign_redemptions_c81425;

grant select on auto_campaigns to redshift_data_copy_l799nl;

grant select on auto_campaigns to bbwoika;

grant delete, insert, select, update on auto_campaigns to lambda_production_redshift;

grant select on auto_campaigns to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on auto_campaigns to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on auto_campaigns to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on auto_campaigns to "awsidc:ypark@springbig.com";

grant select on auto_campaigns to "awsidc:mvizcaino@springbig.com";

grant select on auto_campaigns to "awsidc:aonulak@springbig.com";

grant select on auto_campaigns to group readonly;

grant insert, references, select, update on auto_campaigns to group redshift_api_svc_dbgroup;

create table if not exists communication_actions
(
    id           bigint      not null encode az64 distkey
        constraint "communication_actions_pk_communicat_1626197097_122 "
            primary key,
    created_at   timestamp   not null encode az64,
    updated_at   timestamp   not null encode az64,
    member_id    integer     not null encode az64,
    process_id   integer     not null encode az64,
    process_type varchar(72) not null,
    merchant_id  integer     not null encode az64,
    action_id    integer     not null encode az64,
    action_type  varchar(72) not null,
    time_since   integer encode az64,
    value        double precision
)
    diststyle key;

alter table communication_actions
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on communication_actions to email_collector_1cf3j6;

grant select on communication_actions to update_other_carrier_8ecfg9;

grant select on communication_actions to pos_integrations_alerts_cijf3e;

grant select on communication_actions to redshift_lag_check_bjjncc;

grant select on communication_actions to aggregate_campaign_brand_sales_imbodm;

grant select on communication_actions to aggregate_campaign_spend_buckets_i6deeb;

grant select on communication_actions to aggregate_sms_data_mn21ig;

grant select on communication_actions to aggregate_campaign_category_sales_ni8ghd;

grant select on communication_actions to aggregate_member_opt_outs_5i1m3o;

grant select on communication_actions to aggregate_transaction_details_for_ads_7bkbd4;

grant select on communication_actions to update_visit_details_brands_8db5bk;

grant select on communication_actions to update_merchant_member_counts_bj3dm9;

grant select on communication_actions to messaging_reporting;

grant select on communication_actions to rails_gd75ob;

grant select on communication_actions to t_tnegri_hefdl9;

grant select on communication_actions to inteq_user_jl95l5;

grant select on communication_actions to gdion_94lj0n;

grant select on communication_actions to reporting_y4mc58das_ho8o3n;

grant select on communication_actions to ghuppert_m8e4d7;

grant select on communication_actions to aggregate_push_data_9lmlb8;

grant select on communication_actions to aggregate_push_data_dfb2c9;

grant select on communication_actions to aggregate_transaction_details_5nhkkg;

grant select on communication_actions to autoconnects_cache_builder_7h8n39;

grant select on communication_actions to aggregate_sms_data_fdif4h;

grant select on communication_actions to t_jdavis;

grant select on communication_actions to analytics_process_incoming_events_oa32mf;

grant select on communication_actions to glue_admin_a99j6d;

grant select on communication_actions to glue_admin_d3a7h2;

grant select on communication_actions to aggregate_campaign_redemptions_c81425;

grant select on communication_actions to redshift_data_copy_l799nl;

grant select on communication_actions to bbwoika;

grant delete, insert, select, update on communication_actions to lambda_production_redshift;

grant select on communication_actions to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on communication_actions to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on communication_actions to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on communication_actions to "awsidc:ypark@springbig.com";

grant select on communication_actions to "awsidc:mvizcaino@springbig.com";

grant select on communication_actions to "awsidc:aonulak@springbig.com";

grant select on communication_actions to group readonly;

grant insert, references, select, update on communication_actions to group redshift_api_svc_dbgroup;

create table if not exists member_profiles
(
    id                          bigint    not null distkey
        primary key,
    created_at                  timestamp not null encode az64,
    updated_at                  timestamp not null encode az64,
    member_id                   integer encode az64,
    merchant_id                 integer encode az64,
    first_name                  varchar(255),
    last_name                   varchar(255),
    email                       varchar(255),
    phone_number                varchar(255),
    address1                    varchar(255),
    address2                    varchar(255),
    city                        varchar(255),
    region                      varchar(255),
    zip                         varchar(255),
    pos_user                    varchar(255),
    pos_type                    varchar(255),
    location                    varchar(255),
    purpose                     integer encode az64,
    birthday                    date encode az64,
    response                    varchar(65535),
    last_updated_at             timestamp encode az64,
    allowed_sms_boolean         boolean,
    allowed_email_boolean       boolean,
    tags                        varchar(65535),
    primary_location            varchar(255),
    gender                      integer encode az64,
    referred_by_id              integer encode az64,
    medical_card_expiration_old timestamp encode az64,
    country                     varchar(255),
    address_type                varchar(255),
    medical_card_expiration     date encode az64,
    allowed_loyalty_boolean     boolean,
    allowed_sms                 varchar(15),
    allowed_email               varchar(15),
    allowed_loyalty             varchar(15)
)
    sortkey (id);

alter table member_profiles
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on member_profiles to email_collector_1cf3j6;

grant select on member_profiles to update_other_carrier_8ecfg9;

grant select on member_profiles to pos_integrations_alerts_cijf3e;

grant select on member_profiles to redshift_lag_check_bjjncc;

grant select on member_profiles to aggregate_campaign_brand_sales_imbodm;

grant select on member_profiles to aggregate_campaign_spend_buckets_i6deeb;

grant select on member_profiles to aggregate_sms_data_mn21ig;

grant select on member_profiles to aggregate_campaign_category_sales_ni8ghd;

grant select on member_profiles to aggregate_member_opt_outs_5i1m3o;

grant select on member_profiles to aggregate_transaction_details_for_ads_7bkbd4;

grant select on member_profiles to update_visit_details_brands_8db5bk;

grant select on member_profiles to update_merchant_member_counts_bj3dm9;

grant select on member_profiles to messaging_reporting;

grant select on member_profiles to rails_gd75ob;

grant select on member_profiles to t_tnegri_hefdl9;

grant select on member_profiles to inteq_user_jl95l5;

grant select on member_profiles to gdion_94lj0n;

grant select on member_profiles to reporting_y4mc58das_ho8o3n;

grant select on member_profiles to ghuppert_m8e4d7;

grant select on member_profiles to aggregate_push_data_9lmlb8;

grant select on member_profiles to aggregate_push_data_dfb2c9;

grant select on member_profiles to aggregate_transaction_details_5nhkkg;

grant select on member_profiles to autoconnects_cache_builder_7h8n39;

grant select on member_profiles to aggregate_sms_data_fdif4h;

grant select on member_profiles to t_jdavis;

grant select on member_profiles to analytics_process_incoming_events_oa32mf;

grant select on member_profiles to glue_admin_a99j6d;

grant select on member_profiles to glue_admin_d3a7h2;

grant select on member_profiles to aggregate_campaign_redemptions_c81425;

grant select on member_profiles to redshift_data_copy_l799nl;

grant select on member_profiles to bbwoika;

grant delete, insert, select, update on member_profiles to lambda_production_redshift;

grant select on member_profiles to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on member_profiles to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on member_profiles to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on member_profiles to "awsidc:ypark@springbig.com";

grant select on member_profiles to "awsidc:mvizcaino@springbig.com";

grant select on member_profiles to "awsidc:aonulak@springbig.com";

grant select on member_profiles to group readonly;

grant insert, references, select, update on member_profiles to group redshift_api_svc_dbgroup;

create table if not exists merchant_locations
(
    id                          bigint       not null encode az64 distkey
        constraint "merchant_locations_pk_merchant_l_1628608707_2 "
            primary key,
    created_at                  timestamp encode az64,
    updated_at                  timestamp encode az64,
    merchant_id                 integer      not null encode az64,
    location                    varchar(765) not null,
    enabled_boolean             boolean,
    pos_type                    varchar(765),
    pos_start                   timestamp encode az64,
    encrypted_credentials       varchar(64512),
    encrypted_credentials_iv    varchar(765),
    log                         varchar(64512),
    next_accessible             timestamp encode az64,
    minimum_age                 integer encode az64,
    display_name                varchar(765),
    website                     varchar(765),
    location_type               integer encode az64,
    street_address              varchar(765),
    secondary_address           varchar(765),
    city                        varchar(765),
    region                      varchar(765),
    country                     varchar(765),
    postal_code                 varchar(765),
    loyalty_points_boolean      boolean,
    compliance_workflow_boolean boolean,
    log_2                       varchar(64512),
    enabled                     varchar(15),
    loyalty_points              varchar(15),
    compliance_workflow         varchar(15)
)
    diststyle key;

alter table merchant_locations
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on merchant_locations to email_collector_1cf3j6;

grant select on merchant_locations to update_other_carrier_8ecfg9;

grant select on merchant_locations to pos_integrations_alerts_cijf3e;

grant select on merchant_locations to redshift_lag_check_bjjncc;

grant select on merchant_locations to aggregate_campaign_brand_sales_imbodm;

grant select on merchant_locations to aggregate_campaign_spend_buckets_i6deeb;

grant select on merchant_locations to aggregate_sms_data_mn21ig;

grant select on merchant_locations to aggregate_campaign_category_sales_ni8ghd;

grant select on merchant_locations to aggregate_member_opt_outs_5i1m3o;

grant select on merchant_locations to aggregate_transaction_details_for_ads_7bkbd4;

grant select on merchant_locations to update_visit_details_brands_8db5bk;

grant select on merchant_locations to update_merchant_member_counts_bj3dm9;

grant select on merchant_locations to messaging_reporting;

grant select on merchant_locations to rails_gd75ob;

grant select on merchant_locations to t_tnegri_hefdl9;

grant select on merchant_locations to inteq_user_jl95l5;

grant select on merchant_locations to gdion_94lj0n;

grant select on merchant_locations to reporting_y4mc58das_ho8o3n;

grant select on merchant_locations to ghuppert_m8e4d7;

grant select on merchant_locations to aggregate_push_data_9lmlb8;

grant select on merchant_locations to aggregate_push_data_dfb2c9;

grant select on merchant_locations to aggregate_transaction_details_5nhkkg;

grant select on merchant_locations to autoconnects_cache_builder_7h8n39;

grant select on merchant_locations to aggregate_sms_data_fdif4h;

grant select on merchant_locations to t_jdavis;

grant select on merchant_locations to analytics_process_incoming_events_oa32mf;

grant select on merchant_locations to glue_admin_a99j6d;

grant select on merchant_locations to glue_admin_d3a7h2;

grant select on merchant_locations to aggregate_campaign_redemptions_c81425;

grant select on merchant_locations to redshift_data_copy_l799nl;

grant select on merchant_locations to bbwoika;

grant delete, insert, select, update on merchant_locations to lambda_production_redshift;

grant select on merchant_locations to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchant_locations to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on merchant_locations to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchant_locations to "awsidc:ypark@springbig.com";

grant select on merchant_locations to "awsidc:mvizcaino@springbig.com";

grant select on merchant_locations to "awsidc:aonulak@springbig.com";

grant select on merchant_locations to group readonly;

grant insert, references, select, update on merchant_locations to group redshift_api_svc_dbgroup;

create table if not exists merchant_phone_numbers
(
    id                    bigint       not null encode az64 distkey
        constraint "merchant_phone_numbers_pk_merchant_p_1626202974_227 "
            primary key,
    created_at            timestamp    not null encode az64,
    updated_at            timestamp    not null encode az64,
    merchant_id           integer encode az64,
    phone_number          varchar(48)  not null,
    active                integer encode az64,
    rate_day              integer      not null encode az64,
    provider              integer      not null encode az64,
    country               varchar(765) not null,
    aggregator_identifier varchar(765),
    ten_dlc_campaign_id   bigint encode az64,
    meta                  varchar(64512)
)
    diststyle key;

alter table merchant_phone_numbers
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on merchant_phone_numbers to email_collector_1cf3j6;

grant select on merchant_phone_numbers to update_other_carrier_8ecfg9;

grant select on merchant_phone_numbers to pos_integrations_alerts_cijf3e;

grant select on merchant_phone_numbers to redshift_lag_check_bjjncc;

grant select on merchant_phone_numbers to aggregate_campaign_brand_sales_imbodm;

grant select on merchant_phone_numbers to aggregate_campaign_spend_buckets_i6deeb;

grant select on merchant_phone_numbers to aggregate_sms_data_mn21ig;

grant select on merchant_phone_numbers to aggregate_campaign_category_sales_ni8ghd;

grant select on merchant_phone_numbers to aggregate_member_opt_outs_5i1m3o;

grant select on merchant_phone_numbers to aggregate_transaction_details_for_ads_7bkbd4;

grant select on merchant_phone_numbers to update_visit_details_brands_8db5bk;

grant select on merchant_phone_numbers to update_merchant_member_counts_bj3dm9;

grant select on merchant_phone_numbers to messaging_reporting;

grant select on merchant_phone_numbers to rails_gd75ob;

grant select on merchant_phone_numbers to t_tnegri_hefdl9;

grant select on merchant_phone_numbers to inteq_user_jl95l5;

grant select on merchant_phone_numbers to gdion_94lj0n;

grant select on merchant_phone_numbers to reporting_y4mc58das_ho8o3n;

grant select on merchant_phone_numbers to ghuppert_m8e4d7;

grant select on merchant_phone_numbers to aggregate_push_data_9lmlb8;

grant select on merchant_phone_numbers to aggregate_push_data_dfb2c9;

grant select on merchant_phone_numbers to aggregate_transaction_details_5nhkkg;

grant select on merchant_phone_numbers to autoconnects_cache_builder_7h8n39;

grant select on merchant_phone_numbers to aggregate_sms_data_fdif4h;

grant select on merchant_phone_numbers to t_jdavis;

grant select on merchant_phone_numbers to analytics_process_incoming_events_oa32mf;

grant select on merchant_phone_numbers to glue_admin_a99j6d;

grant select on merchant_phone_numbers to glue_admin_d3a7h2;

grant select on merchant_phone_numbers to aggregate_campaign_redemptions_c81425;

grant select on merchant_phone_numbers to redshift_data_copy_l799nl;

grant select on merchant_phone_numbers to bbwoika;

grant delete, insert, select, update on merchant_phone_numbers to lambda_production_redshift;

grant select on merchant_phone_numbers to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchant_phone_numbers to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on merchant_phone_numbers to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchant_phone_numbers to "awsidc:ypark@springbig.com";

grant select on merchant_phone_numbers to "awsidc:mvizcaino@springbig.com";

grant select on merchant_phone_numbers to "awsidc:aonulak@springbig.com";

grant select on merchant_phone_numbers to group readonly;

grant insert, references, select, update on merchant_phone_numbers to group redshift_api_svc_dbgroup;

create table if not exists merchants
(
    id                                          bigint                                              not null encode az64 distkey
        primary key,
    name                                        varchar(255)                                        not null,
    address                                     varchar(255),
    city                                        varchar(255),
    region                                      varchar(255),
    postal                                      varchar(255),
    country                                     varchar(255),
    contract_expires_at                         date encode az64,
    contact_phone                               varchar(10),
    contact_name                                varchar(255),
    website                                     varchar(255),
    cached_allowed_email_count                  integer encode az64,
    uuid                                        varchar(36)                                         not null,
    cached_allowed_loyalty_count                integer encode az64,
    cached_allowed_sms_count                    integer encode az64,
    points_per_visit                            integer          default 1 encode az64,
    terms_and_conditions_link                   varchar(255),
    cached_member_count                         integer encode az64,
    created_at                                  timestamp                                           not null encode az64,
    updated_at                                  timestamp                                           not null encode az64,
    username                                    varchar(255),
    enrollment_date                             date encode az64,
    billing_date                                integer encode az64,
    billing_cycle                               integer encode az64,
    last_billing_attempt                        date encode az64,
    primary_location_type                       integer encode az64,
    customer_vault_id                           bigint encode az64,
    terms_condition_flag_boolean                boolean          default false,
    program_type                                integer encode az64,
    sales_agent_id                              integer encode az64,
    sales_tax                                   numeric(6, 4) encode az64,
    product_id                                  integer encode az64,
    email                                       varchar(255),
    enable_member_updates_boolean               boolean          default false                      not null,
    force_signature_boolean                     boolean          default true,
    force_signature_loyalty_boolean             boolean          default false                      not null,
    enable_mywalletdeals_boolean                boolean,
    current_status_cache                        varchar(255),
    status_changed_at                           timestamp encode az64,
    sms_units                                   integer encode az64,
    email_units                                 integer encode az64,
    default_price                               numeric(8, 2) encode az64,
    received_tablet                             timestamp encode az64,
    setup_tablet                                timestamp encode az64,
    referrer_id                                 integer encode az64,
    referrer_type                               varchar(255),
    sales_organization_id                       integer encode az64,
    sales_organization_collects_payment_boolean boolean          default false                      not null,
    excess_sms_cost                             numeric(8, 4) encode az64,
    excess_email_cost                           numeric(8, 3) encode az64,
    brand_replacer                              varchar(65535),
    mobile_app_splash_page_image_file_size      integer encode az64,
    demo_account_boolean                        boolean          default false,
    privacy_policy_url                          varchar(255),
    wallet_passcode                             integer          default 0 encode az64,
    inactive_date                               date encode az64,
    billing_months                              integer encode az64,
    short_code                                  varchar(16),
    phone_mask                                  varchar(255),
    country_code                                varchar(5)       default 1                          not null,
    country_local_code                          varchar(5),
    sender_id                                   varchar(255),
    mms_units                                   integer          default 0 encode az64,
    excess_mms_cost                             numeric(8, 3) encode az64,
    phone_mask_2                                varchar(255)     default 'usa'::character varying   not null,
    enrollnow_style                             varchar(255)     default ''::character varying      not null,
    pos_type                                    varchar(255),
    pos_token                                   varchar(65535),
    points_per_dollar                           double precision default 0,
    pos_start                                   timestamp encode az64,
    sms_credit_bank                             bigint           default 0                          not null encode az64,
    email_credit_bank                           bigint           default 0                          not null encode az64,
    mms_credit_bank                             bigint           default 0                          not null encode az64,
    total_sms_credits_sent                      bigint           default 0                          not null encode az64,
    total_mms_credits_sent                      bigint           default 0                          not null encode az64,
    total_email_credits_sent                    bigint           default 0                          not null encode az64,
    pos_visit_notification_boolean              boolean          default true                       not null,
    billing_type                                integer          default 0                          not null encode az64,
    prepay_low_balance                          integer          default 0                          not null encode az64,
    price_tier_id                               integer encode az64,
    loyalty_boolean                             boolean          default true,
    enrollnow_css                               varchar(65535),
    _type                                       integer          default 0 encode az64,
    location_count                              integer encode az64,
    tech_level                                  integer          default 0 encode az64,
    time_zone                                   varchar(255),
    points_expiration_interval                  integer encode az64,
    ads_image_preferences                       varchar(65535),
    disclaimer                                  varchar(65535),
    latitude                                    numeric(10, 6) encode az64,
    longitude                                   numeric(10, 6) encode az64,
    billing_email                               varchar(255),
    brands_to_replace                           varchar(255),
    blacklist                                   varchar(65535),
    minimum_age                                 integer          default 21 encode az64,
    price_per_referral                          numeric(8, 2)    default 15                         not null encode az64,
    merchant_organization_id                    integer encode az64,
    aggregator_distribution                     varchar(255)     default '{}'::character varying    not null,
    needs_reshuffle_boolean                     boolean          default false                      not null,
    account_manager_id                          integer encode az64,
    name_alias                                  varchar(255),
    points_expiration_type                      integer encode az64,
    points_last_expired_on                      timestamp encode az64,
    encrypted_aggregator_credentials            varchar(65535),
    encrypted_aggregator_credentials_iv         varchar(255),
    double_optin_configuration                  integer          default 0                          not null encode az64,
    enabled_service_providers                   integer encode az64,
    quickbooks_id                               integer encode az64,
    dlc_campaigns                               varchar(65535),
    optimized_carriers                          varchar(65535),
    text_campaign_send_method                   integer          default 0 encode az64,
    budtender_id                                integer encode az64,
    currency                                    integer          default 0                          not null encode az64,
    secure_link_enabled_boolean                 boolean          default true,
    native_app_css                              varchar(65535),
    force_loyalty_boolean                       boolean          default false,
    credit_calculation_type                     integer          default 0 encode az64,
    email_settings                              varchar(65535),
    join_form_locations_preference              integer          default 0 encode az64,
    google_play_url                             varchar(255),
    app_store_url                               varchar(255),
    dollars_per_point                           numeric(5, 2) encode az64,
    springpay_enabled_boolean                   boolean          default false,
    reward_pos_string                           varchar(255),
    terms_condition_flag                        varchar(15)      default 'false'::character varying,
    enable_member_updates                       varchar(15)      default 'false'::character varying not null,
    force_signature                             varchar(15)      default 'true'::character varying,
    force_signature_loyalty                     varchar(15)      default 'false'::character varying not null,
    enable_mywalletdeals                        varchar(15),
    sales_organization_collects_payment         varchar(15)      default 'false'::character varying not null,
    demo_account                                varchar(15)      default 'false'::character varying,
    pos_visit_notification                      varchar(15)      default 'true'::character varying  not null,
    loyalty                                     varchar(15)      default 'true'::character varying,
    needs_reshuffle                             varchar(15)      default 'false'::character varying not null,
    secure_link_enabled                         varchar(15)      default 'true'::character varying,
    force_loyalty                               varchar(15)      default 'false'::character varying,
    springpay_enabled                           varchar(15)      default 'false'::character varying
);

alter table merchants
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on merchants to email_collector_1cf3j6;

grant select on merchants to update_other_carrier_8ecfg9;

grant select on merchants to pos_integrations_alerts_cijf3e;

grant select on merchants to redshift_lag_check_bjjncc;

grant select on merchants to aggregate_campaign_brand_sales_imbodm;

grant select on merchants to aggregate_campaign_spend_buckets_i6deeb;

grant select on merchants to aggregate_sms_data_mn21ig;

grant select on merchants to aggregate_campaign_category_sales_ni8ghd;

grant select on merchants to aggregate_member_opt_outs_5i1m3o;

grant select on merchants to aggregate_transaction_details_for_ads_7bkbd4;

grant select on merchants to update_visit_details_brands_8db5bk;

grant select on merchants to update_merchant_member_counts_bj3dm9;

grant select on merchants to messaging_reporting;

grant select on merchants to rails_gd75ob;

grant select on merchants to t_tnegri_hefdl9;

grant select on merchants to inteq_user_jl95l5;

grant select on merchants to gdion_94lj0n;

grant select on merchants to reporting_y4mc58das_ho8o3n;

grant select on merchants to ghuppert_m8e4d7;

grant select on merchants to aggregate_push_data_9lmlb8;

grant select on merchants to aggregate_push_data_dfb2c9;

grant select on merchants to aggregate_transaction_details_5nhkkg;

grant select on merchants to autoconnects_cache_builder_7h8n39;

grant select on merchants to aggregate_sms_data_fdif4h;

grant select on merchants to t_jdavis;

grant select on merchants to analytics_process_incoming_events_oa32mf;

grant select on merchants to glue_admin_a99j6d;

grant select on merchants to glue_admin_d3a7h2;

grant select on merchants to aggregate_campaign_redemptions_c81425;

grant select on merchants to redshift_data_copy_l799nl;

grant select on merchants to bbwoika;

grant delete, insert, select, update on merchants to lambda_production_redshift;

grant select on merchants to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchants to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on merchants to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchants to "awsidc:ypark@springbig.com";

grant select on merchants to "awsidc:mvizcaino@springbig.com";

grant select on merchants to "awsidc:aonulak@springbig.com";

grant select on merchants to group readonly;

grant insert, references, select, update on merchants to group redshift_api_svc_dbgroup;

create table if not exists merchants_advertisers
(
    id            bigint       not null encode az64 distkey
        constraint "merchants_advertisers_pk_merchants__1626203012_258 "
            primary key,
    created_at    timestamp    not null encode az64,
    updated_at    timestamp    not null encode az64,
    merchant_id   integer      not null encode az64,
    advertiser_id integer      not null encode az64,
    status        integer      not null encode az64,
    tag_id        integer      not null encode az64,
    tag_name      varchar(765) not null,
    approved_at   timestamp encode az64
)
    diststyle key;

alter table merchants_advertisers
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on merchants_advertisers to email_collector_1cf3j6;

grant select on merchants_advertisers to update_other_carrier_8ecfg9;

grant select on merchants_advertisers to pos_integrations_alerts_cijf3e;

grant select on merchants_advertisers to redshift_lag_check_bjjncc;

grant select on merchants_advertisers to aggregate_campaign_brand_sales_imbodm;

grant select on merchants_advertisers to aggregate_campaign_spend_buckets_i6deeb;

grant select on merchants_advertisers to aggregate_sms_data_mn21ig;

grant select on merchants_advertisers to aggregate_campaign_category_sales_ni8ghd;

grant select on merchants_advertisers to aggregate_member_opt_outs_5i1m3o;

grant select on merchants_advertisers to aggregate_transaction_details_for_ads_7bkbd4;

grant select on merchants_advertisers to update_visit_details_brands_8db5bk;

grant select on merchants_advertisers to update_merchant_member_counts_bj3dm9;

grant select on merchants_advertisers to messaging_reporting;

grant select on merchants_advertisers to rails_gd75ob;

grant select on merchants_advertisers to t_tnegri_hefdl9;

grant select on merchants_advertisers to inteq_user_jl95l5;

grant select on merchants_advertisers to gdion_94lj0n;

grant select on merchants_advertisers to reporting_y4mc58das_ho8o3n;

grant select on merchants_advertisers to ghuppert_m8e4d7;

grant select on merchants_advertisers to aggregate_push_data_9lmlb8;

grant select on merchants_advertisers to aggregate_push_data_dfb2c9;

grant select on merchants_advertisers to aggregate_transaction_details_5nhkkg;

grant select on merchants_advertisers to autoconnects_cache_builder_7h8n39;

grant select on merchants_advertisers to aggregate_sms_data_fdif4h;

grant select on merchants_advertisers to t_jdavis;

grant select on merchants_advertisers to analytics_process_incoming_events_oa32mf;

grant select on merchants_advertisers to glue_admin_a99j6d;

grant select on merchants_advertisers to glue_admin_d3a7h2;

grant select on merchants_advertisers to aggregate_campaign_redemptions_c81425;

grant select on merchants_advertisers to redshift_data_copy_l799nl;

grant select on merchants_advertisers to bbwoika;

grant delete, insert, select, update on merchants_advertisers to lambda_production_redshift;

grant select on merchants_advertisers to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchants_advertisers to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on merchants_advertisers to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchants_advertisers to "awsidc:ypark@springbig.com";

grant select on merchants_advertisers to "awsidc:mvizcaino@springbig.com";

grant select on merchants_advertisers to "awsidc:aonulak@springbig.com";

grant select on merchants_advertisers to group readonly;

grant insert, references, select, update on merchants_advertisers to group redshift_api_svc_dbgroup;

create table if not exists mo_sms_logs
(
    id                   bigint    not null encode az64 distkey
        constraint "mo_sms_logs_pk_mo_sms_log_1626291507_0 "
            primary key,
    mblox_transaction_id varchar(765),
    mobile_subscriber_id integer   not null encode az64,
    data                 varchar(1530),
    created_at           timestamp not null encode az64,
    updated_at           timestamp not null encode az64,
    short_code           varchar(45),
    response_id          integer encode az64,
    response             varchar(1530),
    merchant_id          integer encode az64,
    member_id            integer encode az64,
    sms_code_id          integer encode az64,
    sms_code_string      varchar(765)
)
    diststyle key;

alter table mo_sms_logs
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on mo_sms_logs to email_collector_1cf3j6;

grant select on mo_sms_logs to update_other_carrier_8ecfg9;

grant select on mo_sms_logs to pos_integrations_alerts_cijf3e;

grant select on mo_sms_logs to redshift_lag_check_bjjncc;

grant select on mo_sms_logs to aggregate_campaign_brand_sales_imbodm;

grant select on mo_sms_logs to aggregate_campaign_spend_buckets_i6deeb;

grant select on mo_sms_logs to aggregate_sms_data_mn21ig;

grant select on mo_sms_logs to aggregate_campaign_category_sales_ni8ghd;

grant select on mo_sms_logs to aggregate_member_opt_outs_5i1m3o;

grant select on mo_sms_logs to aggregate_transaction_details_for_ads_7bkbd4;

grant select on mo_sms_logs to update_visit_details_brands_8db5bk;

grant select on mo_sms_logs to update_merchant_member_counts_bj3dm9;

grant select on mo_sms_logs to messaging_reporting;

grant select on mo_sms_logs to rails_gd75ob;

grant select on mo_sms_logs to t_tnegri_hefdl9;

grant select on mo_sms_logs to inteq_user_jl95l5;

grant select on mo_sms_logs to gdion_94lj0n;

grant select on mo_sms_logs to reporting_y4mc58das_ho8o3n;

grant select on mo_sms_logs to ghuppert_m8e4d7;

grant select on mo_sms_logs to aggregate_push_data_9lmlb8;

grant select on mo_sms_logs to aggregate_push_data_dfb2c9;

grant select on mo_sms_logs to aggregate_transaction_details_5nhkkg;

grant select on mo_sms_logs to autoconnects_cache_builder_7h8n39;

grant select on mo_sms_logs to aggregate_sms_data_fdif4h;

grant select on mo_sms_logs to t_jdavis;

grant select on mo_sms_logs to analytics_process_incoming_events_oa32mf;

grant select on mo_sms_logs to glue_admin_a99j6d;

grant select on mo_sms_logs to glue_admin_d3a7h2;

grant select on mo_sms_logs to aggregate_campaign_redemptions_c81425;

grant select on mo_sms_logs to redshift_data_copy_l799nl;

grant select on mo_sms_logs to bbwoika;

grant delete, insert, select, update on mo_sms_logs to lambda_production_redshift;

grant select on mo_sms_logs to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on mo_sms_logs to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on mo_sms_logs to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on mo_sms_logs to "awsidc:ypark@springbig.com";

grant select on mo_sms_logs to "awsidc:mvizcaino@springbig.com";

grant select on mo_sms_logs to "awsidc:aonulak@springbig.com";

grant select on mo_sms_logs to group readonly;

grant insert, references, select, update on mo_sms_logs to group redshift_api_svc_dbgroup;

create table if not exists program_item_values
(
    id                    bigint    not null encode az64 distkey
        constraint "program_item_values_pk_program_it_1626203751_295 "
            primary key,
    item_name             varchar(765),
    item_value            integer encode az64,
    program_id            integer encode az64,
    created_at            timestamp not null encode az64,
    updated_at            timestamp not null encode az64,
    status_boolean        boolean,
    cash_reward_boolean   boolean,
    merchant_id           integer encode az64,
    communication_id      integer encode az64,
    communication_type    varchar(765),
    expiration_date       timestamp encode az64,
    description           varchar(765),
    expiration_date_local timestamp encode az64,
    max_redemptions       integer   not null encode az64,
    type                  varchar(765),
    bonus_type            varchar(765),
    bonus_value           numeric(10, 2) encode az64,
    min_purchase_amount   double precision,
    meta                  varchar(3072),
    meta_json             varchar(64512),
    clicked_count         integer   not null encode az64,
    status                varchar(15),
    cash_reward           varchar(15)
)
    diststyle key;

alter table program_item_values
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on program_item_values to email_collector_1cf3j6;

grant select on program_item_values to update_other_carrier_8ecfg9;

grant select on program_item_values to pos_integrations_alerts_cijf3e;

grant select on program_item_values to redshift_lag_check_bjjncc;

grant select on program_item_values to aggregate_campaign_brand_sales_imbodm;

grant select on program_item_values to aggregate_campaign_spend_buckets_i6deeb;

grant select on program_item_values to aggregate_sms_data_mn21ig;

grant select on program_item_values to aggregate_campaign_category_sales_ni8ghd;

grant select on program_item_values to aggregate_member_opt_outs_5i1m3o;

grant select on program_item_values to aggregate_transaction_details_for_ads_7bkbd4;

grant select on program_item_values to update_visit_details_brands_8db5bk;

grant select on program_item_values to update_merchant_member_counts_bj3dm9;

grant select on program_item_values to messaging_reporting;

grant select on program_item_values to rails_gd75ob;

grant select on program_item_values to t_tnegri_hefdl9;

grant select on program_item_values to inteq_user_jl95l5;

grant select on program_item_values to gdion_94lj0n;

grant select on program_item_values to reporting_y4mc58das_ho8o3n;

grant select on program_item_values to ghuppert_m8e4d7;

grant select on program_item_values to aggregate_push_data_9lmlb8;

grant select on program_item_values to aggregate_push_data_dfb2c9;

grant select on program_item_values to aggregate_transaction_details_5nhkkg;

grant select on program_item_values to autoconnects_cache_builder_7h8n39;

grant select on program_item_values to aggregate_sms_data_fdif4h;

grant select on program_item_values to t_jdavis;

grant select on program_item_values to analytics_process_incoming_events_oa32mf;

grant select on program_item_values to glue_admin_a99j6d;

grant select on program_item_values to glue_admin_d3a7h2;

grant select on program_item_values to aggregate_campaign_redemptions_c81425;

grant select on program_item_values to redshift_data_copy_l799nl;

grant select on program_item_values to bbwoika;

grant delete, insert, select, update on program_item_values to lambda_production_redshift;

grant select on program_item_values to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on program_item_values to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on program_item_values to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on program_item_values to "awsidc:ypark@springbig.com";

grant select on program_item_values to "awsidc:mvizcaino@springbig.com";

grant select on program_item_values to "awsidc:aonulak@springbig.com";

grant select on program_item_values to group readonly;

grant insert, references, select, update on program_item_values to group redshift_api_svc_dbgroup;

create table if not exists shortened_urls
(
    id             bigint      not null encode az64 distkey
        constraint "shortened_urls_pk_shortened__1626205887_335 "
            primary key,
    owner_id       integer encode az64,
    owner_type     varchar(60),
    url            varchar(32768),
    unique_key     varchar(48) not null,
    label          varchar(765),
    string         varchar(765),
    use_count      integer     not null encode az64,
    expires_at     timestamp encode az64,
    created_at     timestamp encode az64,
    updated_at     timestamp encode az64,
    shortened_urls varchar(765),
    category       varchar(765),
    action_count   integer encode az64,
    member_id      integer encode az64,
    merchant_id    integer encode az64
)
    diststyle key
    sortkey (id);

alter table shortened_urls
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on shortened_urls to email_collector_1cf3j6;

grant select on shortened_urls to update_other_carrier_8ecfg9;

grant select on shortened_urls to pos_integrations_alerts_cijf3e;

grant select on shortened_urls to redshift_lag_check_bjjncc;

grant select on shortened_urls to aggregate_campaign_brand_sales_imbodm;

grant select on shortened_urls to aggregate_campaign_spend_buckets_i6deeb;

grant select on shortened_urls to aggregate_sms_data_mn21ig;

grant select on shortened_urls to aggregate_campaign_category_sales_ni8ghd;

grant select on shortened_urls to aggregate_member_opt_outs_5i1m3o;

grant select on shortened_urls to aggregate_transaction_details_for_ads_7bkbd4;

grant select on shortened_urls to update_visit_details_brands_8db5bk;

grant select on shortened_urls to update_merchant_member_counts_bj3dm9;

grant select on shortened_urls to messaging_reporting;

grant select on shortened_urls to rails_gd75ob;

grant select on shortened_urls to t_tnegri_hefdl9;

grant select on shortened_urls to inteq_user_jl95l5;

grant select on shortened_urls to gdion_94lj0n;

grant select on shortened_urls to reporting_y4mc58das_ho8o3n;

grant select on shortened_urls to ghuppert_m8e4d7;

grant select on shortened_urls to aggregate_push_data_9lmlb8;

grant select on shortened_urls to aggregate_push_data_dfb2c9;

grant select on shortened_urls to aggregate_transaction_details_5nhkkg;

grant select on shortened_urls to autoconnects_cache_builder_7h8n39;

grant select on shortened_urls to aggregate_sms_data_fdif4h;

grant select on shortened_urls to t_jdavis;

grant select on shortened_urls to analytics_process_incoming_events_oa32mf;

grant select on shortened_urls to glue_admin_a99j6d;

grant select on shortened_urls to glue_admin_d3a7h2;

grant select on shortened_urls to aggregate_campaign_redemptions_c81425;

grant select on shortened_urls to redshift_data_copy_l799nl;

grant select on shortened_urls to bbwoika;

grant delete, insert, select, update on shortened_urls to lambda_production_redshift;

grant select on shortened_urls to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on shortened_urls to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on shortened_urls to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on shortened_urls to "awsidc:ypark@springbig.com";

grant select on shortened_urls to "awsidc:mvizcaino@springbig.com";

grant select on shortened_urls to "awsidc:aonulak@springbig.com";

grant select on shortened_urls to group readonly;

grant insert, references, select, update on shortened_urls to group redshift_api_svc_dbgroup;

create table if not exists sms_logs
(
    id                   bigint    not null encode az64
        constraint "sms_logs_pk_sms_logs_1626580430_0 "
            primary key,
    recipient_id         integer encode az64 distkey,
    process_id           integer encode az64,
    created_at           timestamp not null encode az64,
    updated_at           timestamp not null encode az64,
    msg_reference        varchar(64512),
    receipt_receive_time timestamp encode az64,
    mt_type              varchar(765),
    batch_id             integer encode az64,
    reason               integer encode az64,
    status               varchar(765),
    mobile_subscriber_id integer encode az64,
    request_response     varchar(765),
    result_response      varchar(765),
    subscriber_response  varchar(765),
    short_code           varchar(45),
    recipient_type       varchar(765),
    process_type         varchar(765),
    data                 varchar(64512),
    merchant_id          integer encode az64,
    credits              integer encode az64,
    sender_id            varchar(765),
    _type                integer encode az64,
    media_url            varchar(765)
)
    diststyle key;

alter table sms_logs
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on sms_logs to email_collector_1cf3j6;

grant select on sms_logs to update_other_carrier_8ecfg9;

grant select on sms_logs to pos_integrations_alerts_cijf3e;

grant select on sms_logs to redshift_lag_check_bjjncc;

grant select on sms_logs to aggregate_campaign_brand_sales_imbodm;

grant select on sms_logs to aggregate_campaign_spend_buckets_i6deeb;

grant select on sms_logs to aggregate_sms_data_mn21ig;

grant select on sms_logs to aggregate_campaign_category_sales_ni8ghd;

grant select on sms_logs to aggregate_member_opt_outs_5i1m3o;

grant select on sms_logs to aggregate_transaction_details_for_ads_7bkbd4;

grant select on sms_logs to update_visit_details_brands_8db5bk;

grant select on sms_logs to update_merchant_member_counts_bj3dm9;

grant select on sms_logs to messaging_reporting;

grant select on sms_logs to rails_gd75ob;

grant select on sms_logs to t_tnegri_hefdl9;

grant select on sms_logs to inteq_user_jl95l5;

grant select on sms_logs to gdion_94lj0n;

grant select on sms_logs to reporting_y4mc58das_ho8o3n;

grant select on sms_logs to ghuppert_m8e4d7;

grant select on sms_logs to aggregate_push_data_9lmlb8;

grant select on sms_logs to aggregate_push_data_dfb2c9;

grant select on sms_logs to aggregate_transaction_details_5nhkkg;

grant select on sms_logs to autoconnects_cache_builder_7h8n39;

grant select on sms_logs to aggregate_sms_data_fdif4h;

grant select on sms_logs to t_jdavis;

grant select on sms_logs to analytics_process_incoming_events_oa32mf;

grant select on sms_logs to glue_admin_a99j6d;

grant select on sms_logs to glue_admin_d3a7h2;

grant select on sms_logs to aggregate_campaign_redemptions_c81425;

grant select on sms_logs to redshift_data_copy_l799nl;

grant select on sms_logs to bbwoika;

grant delete, insert, select, update on sms_logs to lambda_production_redshift;

grant select on sms_logs to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on sms_logs to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on sms_logs to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on sms_logs to "awsidc:ypark@springbig.com";

grant select on sms_logs to "awsidc:mvizcaino@springbig.com";

grant select on sms_logs to "awsidc:aonulak@springbig.com";

grant select on sms_logs to group readonly;

grant insert, references, select, update on sms_logs to group redshift_api_svc_dbgroup;

create table if not exists taggings
(
    id            bigint not null encode az64 distkey
        constraint "taggings_pk_taggings_1626208883_358 "
            primary key,
    tag_id        integer encode az64,
    taggable_id   integer encode az64,
    taggable_type varchar(765),
    tagger_id     integer encode az64,
    tagger_type   varchar(765),
    context       varchar(384),
    created_at    timestamp encode az64,
    title         varchar(765),
    description   varchar(765),
    member_count  integer encode az64,
    tenant        varchar(48)
)
    diststyle key;

alter table taggings
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on taggings to email_collector_1cf3j6;

grant select on taggings to update_other_carrier_8ecfg9;

grant select on taggings to pos_integrations_alerts_cijf3e;

grant select on taggings to redshift_lag_check_bjjncc;

grant select on taggings to aggregate_campaign_brand_sales_imbodm;

grant select on taggings to aggregate_campaign_spend_buckets_i6deeb;

grant select on taggings to aggregate_sms_data_mn21ig;

grant select on taggings to aggregate_campaign_category_sales_ni8ghd;

grant select on taggings to aggregate_member_opt_outs_5i1m3o;

grant select on taggings to aggregate_transaction_details_for_ads_7bkbd4;

grant select on taggings to update_visit_details_brands_8db5bk;

grant select on taggings to update_merchant_member_counts_bj3dm9;

grant select on taggings to messaging_reporting;

grant select on taggings to rails_gd75ob;

grant select on taggings to t_tnegri_hefdl9;

grant select on taggings to inteq_user_jl95l5;

grant select on taggings to gdion_94lj0n;

grant select on taggings to reporting_y4mc58das_ho8o3n;

grant select on taggings to ghuppert_m8e4d7;

grant select on taggings to aggregate_push_data_9lmlb8;

grant select on taggings to aggregate_push_data_dfb2c9;

grant select on taggings to aggregate_transaction_details_5nhkkg;

grant select on taggings to autoconnects_cache_builder_7h8n39;

grant select on taggings to aggregate_sms_data_fdif4h;

grant select on taggings to t_jdavis;

grant select on taggings to analytics_process_incoming_events_oa32mf;

grant select on taggings to glue_admin_a99j6d;

grant select on taggings to glue_admin_d3a7h2;

grant select on taggings to aggregate_campaign_redemptions_c81425;

grant select on taggings to redshift_data_copy_l799nl;

grant select on taggings to bbwoika;

grant delete, insert, select, update on taggings to lambda_production_redshift;

grant select on taggings to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on taggings to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on taggings to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on taggings to "awsidc:ypark@springbig.com";

grant select on taggings to "awsidc:mvizcaino@springbig.com";

grant select on taggings to "awsidc:aonulak@springbig.com";

grant select on taggings to group readonly;

grant insert, references, select, update on taggings to group redshift_api_svc_dbgroup;

create table if not exists tags
(
    id             bigint not null encode az64 distkey
        constraint "tags_pk_tags_1626212948_369 "
            primary key,
    name           varchar(765),
    taggings_count integer encode az64
)
    diststyle key;

alter table tags
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on tags to email_collector_1cf3j6;

grant select on tags to update_other_carrier_8ecfg9;

grant select on tags to pos_integrations_alerts_cijf3e;

grant select on tags to redshift_lag_check_bjjncc;

grant select on tags to aggregate_campaign_brand_sales_imbodm;

grant select on tags to aggregate_campaign_spend_buckets_i6deeb;

grant select on tags to aggregate_sms_data_mn21ig;

grant select on tags to aggregate_campaign_category_sales_ni8ghd;

grant select on tags to aggregate_member_opt_outs_5i1m3o;

grant select on tags to aggregate_transaction_details_for_ads_7bkbd4;

grant select on tags to update_visit_details_brands_8db5bk;

grant select on tags to update_merchant_member_counts_bj3dm9;

grant select on tags to messaging_reporting;

grant select on tags to rails_gd75ob;

grant select on tags to t_tnegri_hefdl9;

grant select on tags to inteq_user_jl95l5;

grant select on tags to gdion_94lj0n;

grant select on tags to reporting_y4mc58das_ho8o3n;

grant select on tags to ghuppert_m8e4d7;

grant select on tags to aggregate_push_data_9lmlb8;

grant select on tags to aggregate_push_data_dfb2c9;

grant select on tags to aggregate_transaction_details_5nhkkg;

grant select on tags to autoconnects_cache_builder_7h8n39;

grant select on tags to aggregate_sms_data_fdif4h;

grant select on tags to t_jdavis;

grant select on tags to analytics_process_incoming_events_oa32mf;

grant select on tags to glue_admin_a99j6d;

grant select on tags to glue_admin_d3a7h2;

grant select on tags to aggregate_campaign_redemptions_c81425;

grant select on tags to redshift_data_copy_l799nl;

grant select on tags to bbwoika;

grant delete, insert, select, update on tags to lambda_production_redshift;

grant select on tags to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on tags to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on tags to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on tags to "awsidc:ypark@springbig.com";

grant select on tags to "awsidc:mvizcaino@springbig.com";

grant select on tags to "awsidc:aonulak@springbig.com";

grant select on tags to group readonly;

grant insert, references, select, update on tags to group redshift_api_svc_dbgroup;

create table if not exists ten_dlc_campaigns
(
    id                 bigint       not null encode az64 distkey
        primary key,
    ten_dlc_brand_id   bigint       not null encode az64,
    name               varchar(765) not null,
    messages_per_month integer encode az64,
    created_at         timestamp    not null encode az64,
    updated_at         timestamp    not null encode az64,
    reference_id       varchar(765)
);

alter table ten_dlc_campaigns
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on ten_dlc_campaigns to email_collector_1cf3j6;

grant select on ten_dlc_campaigns to update_other_carrier_8ecfg9;

grant select on ten_dlc_campaigns to pos_integrations_alerts_cijf3e;

grant select on ten_dlc_campaigns to redshift_lag_check_bjjncc;

grant select on ten_dlc_campaigns to aggregate_campaign_brand_sales_imbodm;

grant select on ten_dlc_campaigns to aggregate_campaign_spend_buckets_i6deeb;

grant select on ten_dlc_campaigns to aggregate_sms_data_mn21ig;

grant select on ten_dlc_campaigns to aggregate_campaign_category_sales_ni8ghd;

grant select on ten_dlc_campaigns to aggregate_member_opt_outs_5i1m3o;

grant select on ten_dlc_campaigns to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ten_dlc_campaigns to update_visit_details_brands_8db5bk;

grant select on ten_dlc_campaigns to update_merchant_member_counts_bj3dm9;

grant select on ten_dlc_campaigns to messaging_reporting;

grant select on ten_dlc_campaigns to rails_gd75ob;

grant select on ten_dlc_campaigns to t_tnegri_hefdl9;

grant select on ten_dlc_campaigns to inteq_user_jl95l5;

grant select on ten_dlc_campaigns to gdion_94lj0n;

grant select on ten_dlc_campaigns to reporting_y4mc58das_ho8o3n;

grant select on ten_dlc_campaigns to ghuppert_m8e4d7;

grant select on ten_dlc_campaigns to aggregate_push_data_9lmlb8;

grant select on ten_dlc_campaigns to aggregate_push_data_dfb2c9;

grant select on ten_dlc_campaigns to aggregate_transaction_details_5nhkkg;

grant select on ten_dlc_campaigns to autoconnects_cache_builder_7h8n39;

grant select on ten_dlc_campaigns to aggregate_sms_data_fdif4h;

grant select on ten_dlc_campaigns to t_jdavis;

grant select on ten_dlc_campaigns to analytics_process_incoming_events_oa32mf;

grant select on ten_dlc_campaigns to glue_admin_a99j6d;

grant select on ten_dlc_campaigns to glue_admin_d3a7h2;

grant select on ten_dlc_campaigns to aggregate_campaign_redemptions_c81425;

grant select on ten_dlc_campaigns to redshift_data_copy_l799nl;

grant select on ten_dlc_campaigns to bbwoika;

grant delete, insert, select, update on ten_dlc_campaigns to lambda_production_redshift;

grant select on ten_dlc_campaigns to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on ten_dlc_campaigns to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on ten_dlc_campaigns to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on ten_dlc_campaigns to "awsidc:ypark@springbig.com";

grant select on ten_dlc_campaigns to "awsidc:mvizcaino@springbig.com";

grant select on ten_dlc_campaigns to "awsidc:aonulak@springbig.com";

grant select on ten_dlc_campaigns to group readonly;

grant insert, references, select, update on ten_dlc_campaigns to group redshift_api_svc_dbgroup;

create table if not exists transaction_details
(
    id                          bigint    not null distkey
        primary key,
    merchant_id                 integer   not null encode az64,
    member_id                   integer encode az64,
    transaction_total           double precision,
    transaction_date            timestamp encode az64,
    transaction_time            time encode az64,
    points_earned               integer encode az64,
    points_available            integer encode az64,
    created_at                  timestamp not null encode az64,
    updated_at                  timestamp not null encode az64,
    bonus_info                  varchar(255),
    reward_grant_id             integer encode az64,
    pos_type                    varchar(255),
    pos_id                      varchar(255),
    pos_user                    varchar(255),
    location                    varchar(255),
    z_send_notification_boolean boolean,
    is_milestone_boolean        boolean,
    real_boolean                boolean,
    order_source                integer encode az64,
    member_referral_id          integer encode az64,
    send_notification           integer encode az64,
    payment_method              integer encode az64,
    z_send_notification         varchar(15),
    is_milestone                varchar(15),
    real                        varchar(15)
)
    sortkey (id);

alter table transaction_details
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on transaction_details to email_collector_1cf3j6;

grant select on transaction_details to update_other_carrier_8ecfg9;

grant select on transaction_details to pos_integrations_alerts_cijf3e;

grant select on transaction_details to redshift_lag_check_bjjncc;

grant select on transaction_details to aggregate_campaign_brand_sales_imbodm;

grant select on transaction_details to aggregate_campaign_spend_buckets_i6deeb;

grant select on transaction_details to aggregate_sms_data_mn21ig;

grant select on transaction_details to aggregate_campaign_category_sales_ni8ghd;

grant select on transaction_details to aggregate_member_opt_outs_5i1m3o;

grant select on transaction_details to aggregate_transaction_details_for_ads_7bkbd4;

grant select on transaction_details to update_visit_details_brands_8db5bk;

grant select on transaction_details to update_merchant_member_counts_bj3dm9;

grant select on transaction_details to messaging_reporting;

grant select on transaction_details to rails_gd75ob;

grant select on transaction_details to t_tnegri_hefdl9;

grant select on transaction_details to inteq_user_jl95l5;

grant select on transaction_details to gdion_94lj0n;

grant select on transaction_details to reporting_y4mc58das_ho8o3n;

grant select on transaction_details to ghuppert_m8e4d7;

grant select on transaction_details to aggregate_push_data_9lmlb8;

grant select on transaction_details to aggregate_push_data_dfb2c9;

grant select on transaction_details to aggregate_transaction_details_5nhkkg;

grant select on transaction_details to autoconnects_cache_builder_7h8n39;

grant select on transaction_details to aggregate_sms_data_fdif4h;

grant select on transaction_details to t_jdavis;

grant select on transaction_details to analytics_process_incoming_events_oa32mf;

grant select on transaction_details to glue_admin_a99j6d;

grant select on transaction_details to glue_admin_d3a7h2;

grant select on transaction_details to aggregate_campaign_redemptions_c81425;

grant select on transaction_details to redshift_data_copy_l799nl;

grant select on transaction_details to bbwoika;

grant delete, insert, select, update on transaction_details to lambda_production_redshift;

grant select on transaction_details to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on transaction_details to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on transaction_details to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on transaction_details to "awsidc:ypark@springbig.com";

grant select on transaction_details to "awsidc:mvizcaino@springbig.com";

grant select on transaction_details to "awsidc:aonulak@springbig.com";

grant select on transaction_details to group readonly;

grant insert, references, select, update on transaction_details to group redshift_api_svc_dbgroup;

create table if not exists transaction_reward_redemptions
(
    id                    bigint    not null encode az64 distkey
        constraint "transaction_reward_redemptions_pk_transactio_1626213239_373 "
            primary key,
    merchant_id           integer   not null encode az64,
    member_id             integer   not null encode az64,
    reward_id             integer encode az64,
    created_at            timestamp not null encode az64,
    updated_at            timestamp not null encode az64,
    transaction_detail_id integer encode az64,
    rewards_count         integer encode az64,
    item_value            numeric(15, 2) encode az64,
    reward_type           varchar(765),
    reward_name           varchar(765),
    reward_grant_id       integer encode az64,
    _type                 integer encode az64,
    pos_id                varchar(765)
)
    diststyle key
    sortkey (id);

alter table transaction_reward_redemptions
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on transaction_reward_redemptions to email_collector_1cf3j6;

grant select on transaction_reward_redemptions to update_other_carrier_8ecfg9;

grant select on transaction_reward_redemptions to pos_integrations_alerts_cijf3e;

grant select on transaction_reward_redemptions to redshift_lag_check_bjjncc;

grant select on transaction_reward_redemptions to aggregate_campaign_brand_sales_imbodm;

grant select on transaction_reward_redemptions to aggregate_campaign_spend_buckets_i6deeb;

grant select on transaction_reward_redemptions to aggregate_sms_data_mn21ig;

grant select on transaction_reward_redemptions to aggregate_campaign_category_sales_ni8ghd;

grant select on transaction_reward_redemptions to aggregate_member_opt_outs_5i1m3o;

grant select on transaction_reward_redemptions to aggregate_transaction_details_for_ads_7bkbd4;

grant select on transaction_reward_redemptions to update_visit_details_brands_8db5bk;

grant select on transaction_reward_redemptions to update_merchant_member_counts_bj3dm9;

grant select on transaction_reward_redemptions to messaging_reporting;

grant select on transaction_reward_redemptions to rails_gd75ob;

grant select on transaction_reward_redemptions to t_tnegri_hefdl9;

grant select on transaction_reward_redemptions to inteq_user_jl95l5;

grant select on transaction_reward_redemptions to gdion_94lj0n;

grant select on transaction_reward_redemptions to reporting_y4mc58das_ho8o3n;

grant select on transaction_reward_redemptions to ghuppert_m8e4d7;

grant select on transaction_reward_redemptions to aggregate_push_data_9lmlb8;

grant select on transaction_reward_redemptions to aggregate_push_data_dfb2c9;

grant select on transaction_reward_redemptions to aggregate_transaction_details_5nhkkg;

grant select on transaction_reward_redemptions to autoconnects_cache_builder_7h8n39;

grant select on transaction_reward_redemptions to aggregate_sms_data_fdif4h;

grant select on transaction_reward_redemptions to t_jdavis;

grant select on transaction_reward_redemptions to analytics_process_incoming_events_oa32mf;

grant select on transaction_reward_redemptions to glue_admin_a99j6d;

grant select on transaction_reward_redemptions to glue_admin_d3a7h2;

grant select on transaction_reward_redemptions to aggregate_campaign_redemptions_c81425;

grant select on transaction_reward_redemptions to redshift_data_copy_l799nl;

grant select on transaction_reward_redemptions to bbwoika;

grant delete, insert, select, update on transaction_reward_redemptions to lambda_production_redshift;

grant select on transaction_reward_redemptions to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on transaction_reward_redemptions to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on transaction_reward_redemptions to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on transaction_reward_redemptions to "awsidc:ypark@springbig.com";

grant select on transaction_reward_redemptions to "awsidc:mvizcaino@springbig.com";

grant select on transaction_reward_redemptions to "awsidc:aonulak@springbig.com";

grant select on transaction_reward_redemptions to group readonly;

grant insert, references, select, update on transaction_reward_redemptions to group redshift_api_svc_dbgroup;

create table if not exists visit_details
(
    id                     bigint    not null encode az64 distkey
        constraint "visit_details_pk_visit_deta_1626219711_405 "
            primary key,
    created_at             timestamp not null encode az64,
    updated_at             timestamp not null encode az64,
    visit_id               integer   not null encode az64,
    merchant_id            integer   not null encode az64,
    member_id              integer encode az64,
    sku                    varchar(765),
    price                  double precision,
    quantity               double precision,
    category               varchar(765),
    brand                  varchar(765),
    name                   varchar(765),
    discount               varchar(765),
    pos_id                 varchar(765),
    pos_product_id         integer encode az64,
    pos_product_lookup_key varchar(765)
)
    diststyle key;

alter table visit_details
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on visit_details to email_collector_1cf3j6;

grant select on visit_details to update_other_carrier_8ecfg9;

grant select on visit_details to pos_integrations_alerts_cijf3e;

grant select on visit_details to redshift_lag_check_bjjncc;

grant select on visit_details to aggregate_campaign_brand_sales_imbodm;

grant select on visit_details to aggregate_campaign_spend_buckets_i6deeb;

grant select on visit_details to aggregate_sms_data_mn21ig;

grant select on visit_details to aggregate_campaign_category_sales_ni8ghd;

grant select on visit_details to aggregate_member_opt_outs_5i1m3o;

grant select on visit_details to aggregate_transaction_details_for_ads_7bkbd4;

grant select on visit_details to update_visit_details_brands_8db5bk;

grant select on visit_details to update_merchant_member_counts_bj3dm9;

grant select on visit_details to messaging_reporting;

grant select on visit_details to rails_gd75ob;

grant select on visit_details to t_tnegri_hefdl9;

grant select on visit_details to inteq_user_jl95l5;

grant select on visit_details to gdion_94lj0n;

grant select on visit_details to reporting_y4mc58das_ho8o3n;

grant select on visit_details to ghuppert_m8e4d7;

grant select on visit_details to aggregate_push_data_9lmlb8;

grant select on visit_details to aggregate_push_data_dfb2c9;

grant select on visit_details to aggregate_transaction_details_5nhkkg;

grant select on visit_details to autoconnects_cache_builder_7h8n39;

grant select on visit_details to aggregate_sms_data_fdif4h;

grant select on visit_details to t_jdavis;

grant select on visit_details to analytics_process_incoming_events_oa32mf;

grant select on visit_details to glue_admin_a99j6d;

grant select on visit_details to glue_admin_d3a7h2;

grant select on visit_details to aggregate_campaign_redemptions_c81425;

grant select on visit_details to redshift_data_copy_l799nl;

grant select on visit_details to bbwoika;

grant delete, insert, select, update on visit_details to lambda_production_redshift;

grant select on visit_details to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on visit_details to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on visit_details to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on visit_details to "awsidc:ypark@springbig.com";

grant select on visit_details to "awsidc:mvizcaino@springbig.com";

grant select on visit_details to "awsidc:aonulak@springbig.com";

grant select on visit_details to group readonly;

grant insert, references, select, update on visit_details to group redshift_api_svc_dbgroup;

create table if not exists ten_dlc_brands
(
    id           bigint       not null encode az64 distkey
        constraint "ten_dlc_brands_pk_ten_dlc_br_1626212949_370 "
            primary key,
    name         varchar(765) not null,
    mpd          integer encode az64,
    created_at   timestamp    not null encode az64,
    updated_at   timestamp    not null encode az64,
    reference_id varchar(255),
    provider     integer encode az64
);

alter table ten_dlc_brands
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on ten_dlc_brands to email_collector_1cf3j6;

grant select on ten_dlc_brands to update_other_carrier_8ecfg9;

grant select on ten_dlc_brands to pos_integrations_alerts_cijf3e;

grant select on ten_dlc_brands to redshift_lag_check_bjjncc;

grant select on ten_dlc_brands to aggregate_campaign_brand_sales_imbodm;

grant select on ten_dlc_brands to aggregate_campaign_spend_buckets_i6deeb;

grant select on ten_dlc_brands to aggregate_sms_data_mn21ig;

grant select on ten_dlc_brands to aggregate_campaign_category_sales_ni8ghd;

grant select on ten_dlc_brands to aggregate_member_opt_outs_5i1m3o;

grant select on ten_dlc_brands to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ten_dlc_brands to update_visit_details_brands_8db5bk;

grant select on ten_dlc_brands to update_merchant_member_counts_bj3dm9;

grant select on ten_dlc_brands to messaging_reporting;

grant select on ten_dlc_brands to rails_gd75ob;

grant select on ten_dlc_brands to t_tnegri_hefdl9;

grant select on ten_dlc_brands to inteq_user_jl95l5;

grant select on ten_dlc_brands to gdion_94lj0n;

grant select on ten_dlc_brands to reporting_y4mc58das_ho8o3n;

grant select on ten_dlc_brands to ghuppert_m8e4d7;

grant select on ten_dlc_brands to aggregate_push_data_9lmlb8;

grant select on ten_dlc_brands to aggregate_push_data_dfb2c9;

grant select on ten_dlc_brands to aggregate_transaction_details_5nhkkg;

grant select on ten_dlc_brands to autoconnects_cache_builder_7h8n39;

grant select on ten_dlc_brands to aggregate_sms_data_fdif4h;

grant select on ten_dlc_brands to t_jdavis;

grant select on ten_dlc_brands to analytics_process_incoming_events_oa32mf;

grant select on ten_dlc_brands to glue_admin_a99j6d;

grant select on ten_dlc_brands to glue_admin_d3a7h2;

grant select on ten_dlc_brands to aggregate_campaign_redemptions_c81425;

grant select on ten_dlc_brands to redshift_data_copy_l799nl;

grant select on ten_dlc_brands to bbwoika;

grant delete, insert, select, update on ten_dlc_brands to lambda_production_redshift;

grant select on ten_dlc_brands to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on ten_dlc_brands to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on ten_dlc_brands to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on ten_dlc_brands to "awsidc:ypark@springbig.com";

grant select on ten_dlc_brands to "awsidc:mvizcaino@springbig.com";

grant select on ten_dlc_brands to "awsidc:aonulak@springbig.com";

grant select on ten_dlc_brands to group readonly;

grant insert, references, select, update on ten_dlc_brands to group redshift_api_svc_dbgroup;

create table if not exists merchant_segments
(
    id              bigint    not null encode az64 distkey
        primary key,
    segment_id      integer encode az64,
    merchant_id     integer encode az64,
    values          varchar(65535),
    name            varchar(255),
    created_at      timestamp not null encode az64,
    updated_at      timestamp not null encode az64,
    title           varchar(255),
    engagement_type varchar(255),
    min             integer encode az64,
    max             integer encode az64,
    spend_min       integer encode az64
)
    sortkey (id);

alter table merchant_segments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on merchant_segments to rails_gd75ob;

grant select on merchant_segments to t_tnegri_hefdl9;

grant select on merchant_segments to gdion_94lj0n;

grant select on merchant_segments to reporting_y4mc58das_ho8o3n;

grant select on merchant_segments to ghuppert_m8e4d7;

grant select on merchant_segments to aggregate_sms_data_fdif4h;

grant select on merchant_segments to t_jdavis;

grant select on merchant_segments to analytics_process_incoming_events_oa32mf;

grant select on merchant_segments to glue_admin_a99j6d;

grant select on merchant_segments to glue_admin_d3a7h2;

grant select on merchant_segments to aggregate_campaign_redemptions_c81425;

grant select on merchant_segments to redshift_data_copy_l799nl;

grant select on merchant_segments to bbwoika;

grant delete, insert, select, update on merchant_segments to lambda_production_redshift;

grant select on merchant_segments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchant_segments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on merchant_segments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchant_segments to "awsidc:ypark@springbig.com";

grant select on merchant_segments to "awsidc:mvizcaino@springbig.com";

grant select on merchant_segments to "awsidc:aonulak@springbig.com";

grant select on merchant_segments to group readonly;

grant insert, references, select, update on merchant_segments to group redshift_api_svc_dbgroup;

create table if not exists segments
(
    id               bigint                not null encode az64 distkey
        primary key,
    name             varchar(256),
    query            varchar(65535),
    created_at       timestamp             not null encode az64,
    updated_at       timestamp             not null encode az64,
    segment_type     varchar(255),
    meta_name        varchar(255),
    description      varchar(65535),
    fields           varchar(65535),
    dynamic          boolean default false,
    label            varchar(255),
    query_postgresql varchar(65535),
    queries          varchar(65535),
    aggregated       boolean default false not null,
    "group"          varchar(256)
)
    sortkey (created_at);

alter table segments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on segments to rails_gd75ob;

grant select on segments to t_tnegri_hefdl9;

grant select on segments to gdion_94lj0n;

grant select on segments to reporting_y4mc58das_ho8o3n;

grant select on segments to ghuppert_m8e4d7;

grant select on segments to aggregate_sms_data_fdif4h;

grant select on segments to t_jdavis;

grant select on segments to analytics_process_incoming_events_oa32mf;

grant select on segments to glue_admin_a99j6d;

grant select on segments to glue_admin_d3a7h2;

grant select on segments to aggregate_campaign_redemptions_c81425;

grant select on segments to redshift_data_copy_l799nl;

grant select on segments to bbwoika;

grant delete, insert, select, update on segments to lambda_production_redshift;

grant select on segments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on segments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on segments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on segments to "awsidc:ypark@springbig.com";

grant select on segments to "awsidc:mvizcaino@springbig.com";

grant select on segments to "awsidc:aonulak@springbig.com";

grant select on segments to group readonly;

grant insert, references, select, update on segments to group redshift_api_svc_dbgroup;

create table if not exists reward_grants
(
    id               bigint not null encode az64 distkey
        primary key,
    created_at       timestamp encode az64,
    updated_at       timestamp encode az64,
    member_id        integer encode az64,
    reward_id        integer encode az64,
    active           boolean,
    expiration       timestamp encode az64,
    status           integer encode az64,
    _type            varchar(100),
    merchant_id      integer encode az64,
    unique_index_key varchar(128)
)
    diststyle key
    sortkey (created_at);

alter table reward_grants
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on reward_grants to email_collector_1cf3j6;

grant select on reward_grants to update_other_carrier_8ecfg9;

grant select on reward_grants to pos_integrations_alerts_cijf3e;

grant select on reward_grants to redshift_lag_check_bjjncc;

grant select on reward_grants to aggregate_campaign_brand_sales_imbodm;

grant select on reward_grants to aggregate_campaign_spend_buckets_i6deeb;

grant select on reward_grants to aggregate_sms_data_mn21ig;

grant select on reward_grants to aggregate_campaign_category_sales_ni8ghd;

grant select on reward_grants to aggregate_member_opt_outs_5i1m3o;

grant select on reward_grants to update_visit_details_brands_8db5bk;

grant select on reward_grants to update_merchant_member_counts_bj3dm9;

grant select on reward_grants to messaging_reporting;

grant select on reward_grants to rails_gd75ob;

grant select on reward_grants to t_tnegri_hefdl9;

grant select on reward_grants to inteq_user_jl95l5;

grant select on reward_grants to gdion_94lj0n;

grant select on reward_grants to reporting_y4mc58das_ho8o3n;

grant select on reward_grants to ghuppert_m8e4d7;

grant select on reward_grants to aggregate_push_data_9lmlb8;

grant select on reward_grants to aggregate_push_data_dfb2c9;

grant select on reward_grants to aggregate_transaction_details_5nhkkg;

grant select on reward_grants to autoconnects_cache_builder_7h8n39;

grant select on reward_grants to aggregate_sms_data_fdif4h;

grant select on reward_grants to t_jdavis;

grant select on reward_grants to analytics_process_incoming_events_oa32mf;

grant select on reward_grants to glue_admin_a99j6d;

grant select on reward_grants to glue_admin_d3a7h2;

grant select on reward_grants to aggregate_campaign_redemptions_c81425;

grant select on reward_grants to redshift_data_copy_l799nl;

grant select on reward_grants to bbwoika;

grant delete, insert, select, update on reward_grants to lambda_production_redshift;

grant select on reward_grants to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on reward_grants to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on reward_grants to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on reward_grants to "awsidc:ypark@springbig.com";

grant select on reward_grants to "awsidc:mvizcaino@springbig.com";

grant select on reward_grants to "awsidc:aonulak@springbig.com";

grant select on reward_grants to group readonly;

grant insert, references, select, update on reward_grants to group redshift_api_svc_dbgroup;

create table if not exists member_merchant_segments
(
    id                  bigint not null encode az64 distkey
        primary key,
    member_id           bigint encode az64,
    merchant_segment_id bigint encode az64,
    segment_type        varchar(50),
    created_at          timestamp encode az64,
    updated_at          timestamp encode az64
)
    sortkey (id);

alter table member_merchant_segments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on member_merchant_segments to email_collector_1cf3j6;

grant select on member_merchant_segments to update_other_carrier_8ecfg9;

grant select on member_merchant_segments to pos_integrations_alerts_cijf3e;

grant select on member_merchant_segments to redshift_lag_check_bjjncc;

grant select on member_merchant_segments to aggregate_campaign_brand_sales_imbodm;

grant select on member_merchant_segments to aggregate_campaign_spend_buckets_i6deeb;

grant select on member_merchant_segments to aggregate_sms_data_mn21ig;

grant select on member_merchant_segments to aggregate_campaign_category_sales_ni8ghd;

grant select on member_merchant_segments to aggregate_member_opt_outs_5i1m3o;

grant select on member_merchant_segments to update_visit_details_brands_8db5bk;

grant select on member_merchant_segments to update_merchant_member_counts_bj3dm9;

grant select on member_merchant_segments to messaging_reporting;

grant select on member_merchant_segments to rails_gd75ob;

grant select on member_merchant_segments to t_tnegri_hefdl9;

grant select on member_merchant_segments to inteq_user_jl95l5;

grant select on member_merchant_segments to gdion_94lj0n;

grant select on member_merchant_segments to reporting_y4mc58das_ho8o3n;

grant select on member_merchant_segments to ghuppert_m8e4d7;

grant select on member_merchant_segments to aggregate_push_data_9lmlb8;

grant select on member_merchant_segments to aggregate_push_data_dfb2c9;

grant select on member_merchant_segments to aggregate_transaction_details_5nhkkg;

grant select on member_merchant_segments to autoconnects_cache_builder_7h8n39;

grant select on member_merchant_segments to aggregate_sms_data_fdif4h;

grant select on member_merchant_segments to t_jdavis;

grant select on member_merchant_segments to analytics_process_incoming_events_oa32mf;

grant select on member_merchant_segments to glue_admin_a99j6d;

grant select on member_merchant_segments to glue_admin_d3a7h2;

grant select on member_merchant_segments to aggregate_campaign_redemptions_c81425;

grant select on member_merchant_segments to redshift_data_copy_l799nl;

grant select on member_merchant_segments to bbwoika;

grant delete, insert, select, update on member_merchant_segments to lambda_production_redshift;

grant select on member_merchant_segments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on member_merchant_segments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on member_merchant_segments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on member_merchant_segments to "awsidc:ypark@springbig.com";

grant select on member_merchant_segments to "awsidc:mvizcaino@springbig.com";

grant select on member_merchant_segments to "awsidc:aonulak@springbig.com";

grant select on member_merchant_segments to group readonly;

grant insert, references, select, update on member_merchant_segments to group redshift_api_svc_dbgroup;

create table if not exists merchant_visit_reasons
(
    id          bigint    not null encode az64 distkey
        primary key,
    created_at  timestamp not null encode az64,
    updated_at  timestamp not null encode az64,
    merchant_id bigint encode az64,
    name        varchar(255),
    "default"   boolean   not null,
    status      integer   not null encode az64
)
    diststyle key;

alter table merchant_visit_reasons
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on merchant_visit_reasons to email_collector_1cf3j6;

grant select on merchant_visit_reasons to update_other_carrier_8ecfg9;

grant select on merchant_visit_reasons to pos_integrations_alerts_cijf3e;

grant select on merchant_visit_reasons to redshift_lag_check_bjjncc;

grant select on merchant_visit_reasons to aggregate_campaign_brand_sales_imbodm;

grant select on merchant_visit_reasons to aggregate_campaign_spend_buckets_i6deeb;

grant select on merchant_visit_reasons to aggregate_sms_data_mn21ig;

grant select on merchant_visit_reasons to aggregate_campaign_category_sales_ni8ghd;

grant select on merchant_visit_reasons to aggregate_member_opt_outs_5i1m3o;

grant select on merchant_visit_reasons to aggregate_transaction_details_for_ads_7bkbd4;

grant select on merchant_visit_reasons to update_visit_details_brands_8db5bk;

grant select on merchant_visit_reasons to update_merchant_member_counts_bj3dm9;

grant select on merchant_visit_reasons to messaging_reporting;

grant select on merchant_visit_reasons to rails_gd75ob;

grant select on merchant_visit_reasons to t_tnegri_hefdl9;

grant select on merchant_visit_reasons to inteq_user_jl95l5;

grant select on merchant_visit_reasons to gdion_94lj0n;

grant select on merchant_visit_reasons to reporting_y4mc58das_ho8o3n;

grant select on merchant_visit_reasons to ghuppert_m8e4d7;

grant select on merchant_visit_reasons to aggregate_push_data_9lmlb8;

grant select on merchant_visit_reasons to aggregate_push_data_dfb2c9;

grant select on merchant_visit_reasons to aggregate_transaction_details_5nhkkg;

grant select on merchant_visit_reasons to autoconnects_cache_builder_7h8n39;

grant select on merchant_visit_reasons to aggregate_sms_data_fdif4h;

grant select on merchant_visit_reasons to t_jdavis;

grant select on merchant_visit_reasons to analytics_process_incoming_events_oa32mf;

grant select on merchant_visit_reasons to glue_admin_a99j6d;

grant select on merchant_visit_reasons to glue_admin_d3a7h2;

grant select on merchant_visit_reasons to aggregate_campaign_redemptions_c81425;

grant select on merchant_visit_reasons to redshift_data_copy_l799nl;

grant select on merchant_visit_reasons to bbwoika;

grant delete, insert, select, update on merchant_visit_reasons to lambda_production_redshift;

grant select on merchant_visit_reasons to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on merchant_visit_reasons to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on merchant_visit_reasons to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on merchant_visit_reasons to "awsidc:ypark@springbig.com";

grant select on merchant_visit_reasons to "awsidc:mvizcaino@springbig.com";

grant select on merchant_visit_reasons to "awsidc:aonulak@springbig.com";

grant select on merchant_visit_reasons to group readonly;

grant insert, references, select, update on merchant_visit_reasons to group redshift_api_svc_dbgroup;

create table if not exists brand_map
(
    brand              varchar(765),
    brand_norm         varchar(765),
    sum_grp_inst_count bigint encode az64
);

alter table brand_map
    owner to rails_gd75ob;

grant select on brand_map to email_collector_1cf3j6;

grant select on brand_map to update_other_carrier_8ecfg9;

grant select on brand_map to pos_integrations_alerts_cijf3e;

grant select on brand_map to redshift_lag_check_bjjncc;

grant select on brand_map to aggregate_campaign_brand_sales_imbodm;

grant select on brand_map to aggregate_campaign_spend_buckets_i6deeb;

grant select on brand_map to aggregate_sms_data_mn21ig;

grant select on brand_map to aggregate_campaign_category_sales_ni8ghd;

grant select on brand_map to aggregate_member_opt_outs_5i1m3o;

grant select on brand_map to update_visit_details_brands_8db5bk;

grant select on brand_map to update_merchant_member_counts_bj3dm9;

grant select on brand_map to messaging_reporting;

grant select on brand_map to inteq_user_jl95l5;

grant select on brand_map to gdion_94lj0n;

grant select on brand_map to reporting_y4mc58das_ho8o3n;

grant select on brand_map to ghuppert_m8e4d7;

grant select on brand_map to aggregate_push_data_9lmlb8;

grant select on brand_map to aggregate_push_data_dfb2c9;

grant select on brand_map to aggregate_transaction_details_5nhkkg;

grant select on brand_map to autoconnects_cache_builder_7h8n39;

grant select on brand_map to aggregate_sms_data_fdif4h;

grant select on brand_map to t_jdavis;

grant select on brand_map to analytics_process_incoming_events_oa32mf;

grant select on brand_map to glue_admin_a99j6d;

grant select on brand_map to glue_admin_d3a7h2;

grant select on brand_map to aggregate_campaign_redemptions_c81425;

grant select on brand_map to redshift_data_copy_l799nl;

grant select on brand_map to bbwoika;

grant delete, insert, select, update on brand_map to lambda_production_redshift;

grant select on brand_map to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on brand_map to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on brand_map to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on brand_map to "awsidc:ypark@springbig.com";

grant select on brand_map to "awsidc:mvizcaino@springbig.com";

grant select on brand_map to "awsidc:aonulak@springbig.com";

grant select on brand_map to group readonly;

grant insert, references, select, update on brand_map to group redshift_api_svc_dbgroup;

create table if not exists brand_map_reversed
(
    brand_norm_id      bigint encode az64,
    brand_norm         varchar(765),
    sum_grp_inst_count bigint encode az64
);

alter table brand_map_reversed
    owner to rails_gd75ob;

grant select on brand_map_reversed to email_collector_1cf3j6;

grant select on brand_map_reversed to update_other_carrier_8ecfg9;

grant select on brand_map_reversed to pos_integrations_alerts_cijf3e;

grant select on brand_map_reversed to redshift_lag_check_bjjncc;

grant select on brand_map_reversed to aggregate_campaign_brand_sales_imbodm;

grant select on brand_map_reversed to aggregate_campaign_spend_buckets_i6deeb;

grant select on brand_map_reversed to aggregate_sms_data_mn21ig;

grant select on brand_map_reversed to aggregate_campaign_category_sales_ni8ghd;

grant select on brand_map_reversed to aggregate_member_opt_outs_5i1m3o;

grant select on brand_map_reversed to update_visit_details_brands_8db5bk;

grant select on brand_map_reversed to update_merchant_member_counts_bj3dm9;

grant select on brand_map_reversed to messaging_reporting;

grant select on brand_map_reversed to inteq_user_jl95l5;

grant select on brand_map_reversed to gdion_94lj0n;

grant select on brand_map_reversed to reporting_y4mc58das_ho8o3n;

grant select on brand_map_reversed to ghuppert_m8e4d7;

grant select on brand_map_reversed to aggregate_push_data_9lmlb8;

grant select on brand_map_reversed to aggregate_push_data_dfb2c9;

grant select on brand_map_reversed to aggregate_transaction_details_5nhkkg;

grant select on brand_map_reversed to autoconnects_cache_builder_7h8n39;

grant select on brand_map_reversed to aggregate_sms_data_fdif4h;

grant select on brand_map_reversed to t_jdavis;

grant select on brand_map_reversed to analytics_process_incoming_events_oa32mf;

grant select on brand_map_reversed to glue_admin_a99j6d;

grant select on brand_map_reversed to glue_admin_d3a7h2;

grant select on brand_map_reversed to aggregate_campaign_redemptions_c81425;

grant select on brand_map_reversed to redshift_data_copy_l799nl;

grant select on brand_map_reversed to bbwoika;

grant delete, insert, select, update on brand_map_reversed to lambda_production_redshift;

grant select on brand_map_reversed to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on brand_map_reversed to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on brand_map_reversed to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on brand_map_reversed to "awsidc:ypark@springbig.com";

grant select on brand_map_reversed to "awsidc:mvizcaino@springbig.com";

grant select on brand_map_reversed to "awsidc:aonulak@springbig.com";

grant select on brand_map_reversed to group readonly;

grant insert, references, select, update on brand_map_reversed to group redshift_api_svc_dbgroup;

create table if not exists invoices
(
    id                bigint    not null distkey
        primary key,
    merchant_id       integer   not null encode az64,
    created_at        timestamp not null encode az64,
    updated_at        timestamp not null encode az64,
    amount            numeric(8, 2) encode az64,
    generation        integer encode az64,
    status            integer encode az64,
    date_start        date encode az64,
    date_end          date encode az64,
    data              varchar(65535),
    send_email_status integer encode az64,
    currency          integer   not null encode az64
)
    sortkey (id);

alter table invoices
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on invoices to email_collector_1cf3j6;

grant select on invoices to update_other_carrier_8ecfg9;

grant select on invoices to pos_integrations_alerts_cijf3e;

grant select on invoices to redshift_lag_check_bjjncc;

grant select on invoices to aggregate_campaign_brand_sales_imbodm;

grant select on invoices to aggregate_campaign_spend_buckets_i6deeb;

grant select on invoices to aggregate_sms_data_mn21ig;

grant select on invoices to aggregate_campaign_category_sales_ni8ghd;

grant select on invoices to aggregate_member_opt_outs_5i1m3o;

grant select on invoices to update_visit_details_brands_8db5bk;

grant select on invoices to update_merchant_member_counts_bj3dm9;

grant select on invoices to messaging_reporting;

grant select on invoices to rails_gd75ob;

grant select on invoices to t_tnegri_hefdl9;

grant select on invoices to inteq_user_jl95l5;

grant select on invoices to gdion_94lj0n;

grant select on invoices to reporting_y4mc58das_ho8o3n;

grant select on invoices to ghuppert_m8e4d7;

grant select on invoices to aggregate_push_data_9lmlb8;

grant select on invoices to aggregate_push_data_dfb2c9;

grant select on invoices to aggregate_transaction_details_5nhkkg;

grant select on invoices to autoconnects_cache_builder_7h8n39;

grant select on invoices to aggregate_sms_data_fdif4h;

grant select on invoices to t_jdavis;

grant select on invoices to analytics_process_incoming_events_oa32mf;

grant select on invoices to glue_admin_a99j6d;

grant select on invoices to glue_admin_d3a7h2;

grant select on invoices to aggregate_campaign_redemptions_c81425;

grant select on invoices to redshift_data_copy_l799nl;

grant select on invoices to bbwoika;

grant delete, insert, select, update on invoices to lambda_production_redshift;

grant select on invoices to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on invoices to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on invoices to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on invoices to "awsidc:ypark@springbig.com";

grant select on invoices to "awsidc:mvizcaino@springbig.com";

grant select on invoices to "awsidc:aonulak@springbig.com";

grant select on invoices to group readonly;

grant insert, references, select, update on invoices to group redshift_api_svc_dbgroup;

create table if not exists invoice_items
(
    id                 bigint    not null distkey
        primary key,
    merchant_id        integer   not null encode az64,
    transaction_date   date encode az64,
    billing_cycle      integer encode az64,
    transaction_amount numeric(8, 2) encode az64,
    created_at         timestamp not null encode az64,
    updated_at         timestamp not null encode az64,
    description        varchar(256),
    invoice_id         integer encode az64,
    item_type          varchar(255),
    item_id            integer encode az64,
    item_value         double precision,
    currency           integer   not null encode az64
)
    sortkey (id);

alter table invoice_items
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on invoice_items to email_collector_1cf3j6;

grant select on invoice_items to update_other_carrier_8ecfg9;

grant select on invoice_items to pos_integrations_alerts_cijf3e;

grant select on invoice_items to redshift_lag_check_bjjncc;

grant select on invoice_items to aggregate_campaign_brand_sales_imbodm;

grant select on invoice_items to aggregate_campaign_spend_buckets_i6deeb;

grant select on invoice_items to aggregate_sms_data_mn21ig;

grant select on invoice_items to aggregate_campaign_category_sales_ni8ghd;

grant select on invoice_items to aggregate_member_opt_outs_5i1m3o;

grant select on invoice_items to update_visit_details_brands_8db5bk;

grant select on invoice_items to update_merchant_member_counts_bj3dm9;

grant select on invoice_items to messaging_reporting;

grant select on invoice_items to rails_gd75ob;

grant select on invoice_items to t_tnegri_hefdl9;

grant select on invoice_items to inteq_user_jl95l5;

grant select on invoice_items to gdion_94lj0n;

grant select on invoice_items to reporting_y4mc58das_ho8o3n;

grant select on invoice_items to ghuppert_m8e4d7;

grant select on invoice_items to aggregate_push_data_9lmlb8;

grant select on invoice_items to aggregate_push_data_dfb2c9;

grant select on invoice_items to aggregate_transaction_details_5nhkkg;

grant select on invoice_items to autoconnects_cache_builder_7h8n39;

grant select on invoice_items to aggregate_sms_data_fdif4h;

grant select on invoice_items to t_jdavis;

grant select on invoice_items to analytics_process_incoming_events_oa32mf;

grant select on invoice_items to glue_admin_a99j6d;

grant select on invoice_items to glue_admin_d3a7h2;

grant select on invoice_items to aggregate_campaign_redemptions_c81425;

grant select on invoice_items to redshift_data_copy_l799nl;

grant select on invoice_items to bbwoika;

grant delete, insert, select, update on invoice_items to lambda_production_redshift;

grant select on invoice_items to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on invoice_items to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on invoice_items to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on invoice_items to "awsidc:ypark@springbig.com";

grant select on invoice_items to "awsidc:mvizcaino@springbig.com";

grant select on invoice_items to "awsidc:aonulak@springbig.com";

grant select on invoice_items to group readonly;

grant insert, references, select, update on invoice_items to group redshift_api_svc_dbgroup;

create table if not exists users_advertisers
(
    id                              bigint not null encode az64 distkey
        primary key,
    created_at                      timestamp encode az64,
    updated_at                      timestamp encode az64,
    user_id                         integer encode az64,
    advertiser_id                   integer encode az64,
    receive_inventory_request_email boolean,
    receive_sponsor_request_email   boolean
)
    diststyle key;

alter table users_advertisers
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on users_advertisers to gdion_94lj0n;

grant select on users_advertisers to ghuppert_m8e4d7;

grant select on users_advertisers to analytics_process_incoming_events_oa32mf;

grant select on users_advertisers to glue_admin_a99j6d;

grant select on users_advertisers to glue_admin_d3a7h2;

grant select on users_advertisers to aggregate_campaign_redemptions_c81425;

grant select on users_advertisers to redshift_data_copy_l799nl;

grant select on users_advertisers to bbwoika;

grant delete, insert, select, update on users_advertisers to lambda_production_redshift;

grant select on users_advertisers to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on users_advertisers to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on users_advertisers to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on users_advertisers to "awsidc:ypark@springbig.com";

grant select on users_advertisers to "awsidc:mvizcaino@springbig.com";

grant select on users_advertisers to "awsidc:aonulak@springbig.com";

grant select on users_advertisers to group readonly;

grant insert, references, select, update on users_advertisers to group redshift_api_svc_dbgroup;

create table if not exists users
(
    id                                       bigint not null encode az64 distkey
        primary key,
    email                                    varchar(255),
    crypted_password                         varchar(255),
    salt                                     varchar(255),
    created_at                               timestamp encode az64,
    updated_at                               timestamp encode az64,
    remember_me_token                        varchar(255),
    remember_me_token_expires_at             timestamp encode az64,
    reset_password_token                     varchar(255),
    reset_password_token_expires_at          timestamp encode az64,
    reset_password_email_sent_at             timestamp encode az64,
    last_login_at                            timestamp encode az64,
    last_logout_at                           timestamp encode az64,
    last_activity_at                         timestamp encode az64,
    last_login_from_ip_address               varchar(255),
    admin_permissions                        bigint encode az64,
    sales_organization_id                    integer encode az64,
    sales_organization_permissions           integer encode az64,
    token                                    varchar(255),
    failed_logins_count                      integer encode az64,
    lock_expires_at                          timestamp encode az64,
    unlock_token                             varchar(255),
    last_updated_password_at                 timestamp encode az64,
    password_history                         varchar(65535),
    name                                     varchar(255),
    phone_number                             varchar(255),
    avatar_attachment_id                     integer encode az64,
    enabled_service_providers                integer encode az64,
    checked_dont_show_text_marketing_warning boolean
)
    diststyle key;

alter table users
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on users to gdion_94lj0n;

grant select on users to ghuppert_m8e4d7;

grant select on users to analytics_process_incoming_events_oa32mf;

grant select on users to glue_admin_a99j6d;

grant select on users to glue_admin_d3a7h2;

grant select on users to aggregate_campaign_redemptions_c81425;

grant select on users to redshift_data_copy_l799nl;

grant select on users to bbwoika;

grant delete, insert, select, update on users to lambda_production_redshift;

grant select on users to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on users to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on users to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on users to "awsidc:ypark@springbig.com";

grant select on users to "awsidc:mvizcaino@springbig.com";

grant select on users to "awsidc:aonulak@springbig.com";

grant select on users to group readonly;

grant insert, references, select, update on users to group redshift_api_svc_dbgroup;

create table if not exists campaign_merchant_segments
(
    id                  bigint  not null encode az64 distkey
        primary key,
    segmentable_id      integer encode az64,
    segmentable_type    varchar(255),
    merchant_segment_id integer not null encode az64,
    created_at          timestamp encode az64,
    updated_at          timestamp encode az64,
    values              varchar(65535)
)
    diststyle key;

alter table campaign_merchant_segments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaign_merchant_segments to email_collector_1cf3j6;

grant select on campaign_merchant_segments to pos_integrations_alerts_cijf3e;

grant select on campaign_merchant_segments to redshift_lag_check_bjjncc;

grant select on campaign_merchant_segments to messaging_reporting;

grant select on campaign_merchant_segments to rails_gd75ob;

grant select on campaign_merchant_segments to t_tnegri_hefdl9;

grant select on campaign_merchant_segments to inteq_user_jl95l5;

grant select on campaign_merchant_segments to gdion_94lj0n;

grant select on campaign_merchant_segments to reporting_y4mc58das_ho8o3n;

grant select on campaign_merchant_segments to ghuppert_m8e4d7;

grant select on campaign_merchant_segments to t_jdavis;

grant select on campaign_merchant_segments to analytics_process_incoming_events_oa32mf;

grant select on campaign_merchant_segments to glue_admin_a99j6d;

grant select on campaign_merchant_segments to glue_admin_d3a7h2;

grant select on campaign_merchant_segments to aggregate_campaign_redemptions_c81425;

grant select on campaign_merchant_segments to redshift_data_copy_l799nl;

grant select on campaign_merchant_segments to bbwoika;

grant delete, insert, select, update on campaign_merchant_segments to lambda_production_redshift;

grant select on campaign_merchant_segments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on campaign_merchant_segments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on campaign_merchant_segments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on campaign_merchant_segments to "awsidc:ypark@springbig.com";

grant select on campaign_merchant_segments to "awsidc:mvizcaino@springbig.com";

grant select on campaign_merchant_segments to "awsidc:aonulak@springbig.com";

grant select on campaign_merchant_segments to group readonly;

grant insert, references, select, update on campaign_merchant_segments to group redshift_api_svc_dbgroup;

create table if not exists check_in_reason_assignments
(
    id                       bigint    not null encode az64 distkey
        primary key,
    created_at               timestamp not null encode az64,
    updated_at               timestamp not null encode az64,
    merchant_visit_reason_id bigint encode az64,
    transaction_detail_id    bigint encode az64
)
    diststyle key
    sortkey (created_at);

alter table check_in_reason_assignments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on check_in_reason_assignments to email_collector_1cf3j6;

grant select on check_in_reason_assignments to update_other_carrier_8ecfg9;

grant select on check_in_reason_assignments to pos_integrations_alerts_cijf3e;

grant select on check_in_reason_assignments to redshift_lag_check_bjjncc;

grant select on check_in_reason_assignments to aggregate_campaign_brand_sales_imbodm;

grant select on check_in_reason_assignments to aggregate_campaign_spend_buckets_i6deeb;

grant select on check_in_reason_assignments to aggregate_sms_data_mn21ig;

grant select on check_in_reason_assignments to aggregate_campaign_category_sales_ni8ghd;

grant select on check_in_reason_assignments to aggregate_member_opt_outs_5i1m3o;

grant select on check_in_reason_assignments to update_visit_details_brands_8db5bk;

grant select on check_in_reason_assignments to update_merchant_member_counts_bj3dm9;

grant select on check_in_reason_assignments to messaging_reporting;

grant select on check_in_reason_assignments to rails_gd75ob;

grant select on check_in_reason_assignments to t_tnegri_hefdl9;

grant select on check_in_reason_assignments to inteq_user_jl95l5;

grant select on check_in_reason_assignments to gdion_94lj0n;

grant select on check_in_reason_assignments to reporting_y4mc58das_ho8o3n;

grant select on check_in_reason_assignments to ghuppert_m8e4d7;

grant select on check_in_reason_assignments to aggregate_push_data_9lmlb8;

grant select on check_in_reason_assignments to aggregate_push_data_dfb2c9;

grant select on check_in_reason_assignments to aggregate_transaction_details_5nhkkg;

grant select on check_in_reason_assignments to autoconnects_cache_builder_7h8n39;

grant select on check_in_reason_assignments to aggregate_sms_data_fdif4h;

grant select on check_in_reason_assignments to t_jdavis;

grant select on check_in_reason_assignments to analytics_process_incoming_events_oa32mf;

grant select on check_in_reason_assignments to glue_admin_a99j6d;

grant select on check_in_reason_assignments to glue_admin_d3a7h2;

grant select on check_in_reason_assignments to aggregate_campaign_redemptions_c81425;

grant select on check_in_reason_assignments to redshift_data_copy_l799nl;

grant select on check_in_reason_assignments to bbwoika;

grant delete, insert, select, update on check_in_reason_assignments to lambda_production_redshift;

grant select on check_in_reason_assignments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on check_in_reason_assignments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on check_in_reason_assignments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on check_in_reason_assignments to "awsidc:ypark@springbig.com";

grant select on check_in_reason_assignments to "awsidc:mvizcaino@springbig.com";

grant select on check_in_reason_assignments to "awsidc:aonulak@springbig.com";

grant select on check_in_reason_assignments to group readonly;

grant insert, references, select, update on check_in_reason_assignments to group redshift_api_svc_dbgroup;

create table if not exists invoice_payments
(
    id                         bigint  not null distkey
        primary key,
    merchant_id                integer not null encode az64,
    transaction_id             varchar(255),
    created_at                 timestamp encode az64,
    updated_at                 timestamp encode az64,
    amount                     numeric(8, 2) encode az64,
    action_type                varchar(255),
    avs_response               varchar(255),
    response                   numeric(3) encode az64,
    response_code              numeric(5) encode az64,
    response_text              varchar(255),
    condition                  varchar(255),
    response_text_after_settle varchar(255),
    action_type_after_settle   varchar(255),
    billing_address_id         integer encode az64,
    invoice_id                 integer encode az64
)
    sortkey (id);

alter table invoice_payments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on invoice_payments to email_collector_1cf3j6;

grant select on invoice_payments to update_other_carrier_8ecfg9;

grant select on invoice_payments to pos_integrations_alerts_cijf3e;

grant select on invoice_payments to redshift_lag_check_bjjncc;

grant select on invoice_payments to aggregate_campaign_brand_sales_imbodm;

grant select on invoice_payments to aggregate_campaign_spend_buckets_i6deeb;

grant select on invoice_payments to aggregate_sms_data_mn21ig;

grant select on invoice_payments to aggregate_campaign_category_sales_ni8ghd;

grant select on invoice_payments to aggregate_member_opt_outs_5i1m3o;

grant select on invoice_payments to update_visit_details_brands_8db5bk;

grant select on invoice_payments to update_merchant_member_counts_bj3dm9;

grant select on invoice_payments to messaging_reporting;

grant select on invoice_payments to rails_gd75ob;

grant select on invoice_payments to t_tnegri_hefdl9;

grant select on invoice_payments to inteq_user_jl95l5;

grant select on invoice_payments to gdion_94lj0n;

grant select on invoice_payments to reporting_y4mc58das_ho8o3n;

grant select on invoice_payments to ghuppert_m8e4d7;

grant select on invoice_payments to aggregate_push_data_9lmlb8;

grant select on invoice_payments to aggregate_push_data_dfb2c9;

grant select on invoice_payments to aggregate_transaction_details_5nhkkg;

grant select on invoice_payments to autoconnects_cache_builder_7h8n39;

grant select on invoice_payments to aggregate_sms_data_fdif4h;

grant select on invoice_payments to t_jdavis;

grant select on invoice_payments to analytics_process_incoming_events_oa32mf;

grant select on invoice_payments to glue_admin_a99j6d;

grant select on invoice_payments to glue_admin_d3a7h2;

grant select on invoice_payments to aggregate_campaign_redemptions_c81425;

grant select on invoice_payments to redshift_data_copy_l799nl;

grant select on invoice_payments to bbwoika;

grant delete, insert, select, update on invoice_payments to lambda_production_redshift;

grant select on invoice_payments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on invoice_payments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on invoice_payments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on invoice_payments to "awsidc:ypark@springbig.com";

grant select on invoice_payments to "awsidc:mvizcaino@springbig.com";

grant select on invoice_payments to "awsidc:aonulak@springbig.com";

grant select on invoice_payments to group readonly;

grant insert, references, select, update on invoice_payments to group redshift_api_svc_dbgroup;

create table if not exists campaigns
(
    id                        bigint      not null encode az64 distkey
        constraint campaigns_primary_campaigns
            primary key,
    merchant_id               integer     not null encode az64,
    parent_id                 varchar(765),
    created_at                timestamp   not null encode az64,
    updated_at                timestamp   not null encode az64,
    status                    varchar(15) not null,
    segment_id                integer encode az64,
    cancelled_at              timestamp encode az64,
    generation                integer     not null encode az64,
    send_at                   timestamp encode az64,
    sent_at                   timestamp,
    all_locations             varchar(15),
    all_segments              varchar(15),
    sms_send                  varchar(15) not null,
    sms_content               varchar(64512),
    email_send                varchar(15) not null,
    sms_sent                  integer encode az64,
    sms_confirmed             integer encode az64,
    email_sent                integer encode az64,
    email_opened              integer encode az64,
    send_at_local             timestamp encode az64,
    email_subject             varchar(765),
    all_interests             varchar(15),
    send_now                  varchar(15),
    _type                     integer     not null encode az64,
    external_url              varchar(64512),
    _type_options             varchar(765),
    ad_id                     integer encode az64,
    watermarked_attachment_id integer encode az64,
    unique_code               integer encode az64,
    has_blacklisted_words     varchar(15),
    ad_type                   integer     not null encode az64,
    not_spam                  varchar(15),
    sent_as_spam              varchar(15),
    credits_used              integer encode az64,
    review_status             integer     not null encode az64,
    created_by_user_id        integer encode az64,
    reviewed_by_user_id       integer encode az64,
    rejection_reason          varchar(64512),
    suggested_changes         varchar(64512),
    review_status_changed_at  timestamp encode az64,
    cancelled_ad_id           integer encode az64,
    cancelled_by_id           integer encode az64,
    cancelled_via             integer encode az64,
    template_id               integer encode az64,
    classic_campaign          varchar(15),
    url_count                 integer     not null encode az64,
    clicked_count             integer     not null encode az64,
    template_image_id         integer encode az64,
    stashboard_views_count    integer     not null encode az64,
    push_content              varchar(64512),
    push_notification_content varchar(24000),
    push_send                 varchar(15) not null,
    use_same_content          varchar(15) not null,
    original_sms_size         integer encode az64,
    resent_info               varchar(64512),
    push_sent                 integer encode az64,
    send_method               integer encode az64,
    send_priorities           varchar(64512)
)
    sortkey (sent_at);

alter table campaigns
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaigns to email_collector_1cf3j6;

grant select on campaigns to update_other_carrier_8ecfg9;

grant select on campaigns to pos_integrations_alerts_cijf3e;

grant select on campaigns to redshift_lag_check_bjjncc;

grant select on campaigns to aggregate_campaign_brand_sales_imbodm;

grant select on campaigns to aggregate_campaign_spend_buckets_i6deeb;

grant select on campaigns to aggregate_sms_data_mn21ig;

grant select on campaigns to aggregate_campaign_category_sales_ni8ghd;

grant select on campaigns to aggregate_member_opt_outs_5i1m3o;

grant select on campaigns to aggregate_transaction_details_for_ads_7bkbd4;

grant select on campaigns to update_visit_details_brands_8db5bk;

grant select on campaigns to update_merchant_member_counts_bj3dm9;

grant select on campaigns to rails_gd75ob;

grant select on campaigns to t_tnegri_hefdl9;

grant select on campaigns to inteq_user_jl95l5;

grant select on campaigns to gdion_94lj0n;

grant select on campaigns to reporting_y4mc58das_ho8o3n;

grant select on campaigns to ghuppert_m8e4d7;

grant select on campaigns to aggregate_push_data_9lmlb8;

grant select on campaigns to aggregate_push_data_dfb2c9;

grant select on campaigns to aggregate_transaction_details_5nhkkg;

grant select on campaigns to autoconnects_cache_builder_7h8n39;

grant select on campaigns to aggregate_sms_data_fdif4h;

grant select on campaigns to analytics_process_incoming_events_oa32mf;

grant select on campaigns to glue_admin_a99j6d;

grant select on campaigns to glue_admin_d3a7h2;

grant select on campaigns to aggregate_campaign_redemptions_c81425;

grant select on campaigns to redshift_data_copy_l799nl;

grant select on campaigns to lambda_production_redshift;

grant select on campaigns to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on campaigns to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on campaigns to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on campaigns to "awsidc:ypark@springbig.com";

grant select on campaigns to "awsidc:mvizcaino@springbig.com";

grant select on campaigns to "awsidc:aonulak@springbig.com";

grant select on campaigns to group readonly;

grant insert, references, select, update on campaigns to group redshift_api_svc_dbgroup;

create table if not exists mobile_subscribers
(
    id                       bigint      not null distkey
        constraint mobile_subscribers_primary_mobile_subscribers
            primary key,
    subscriber_number        varchar(48) not null,
    operator                 varchar(15),
    unroutable               varchar(15),
    created_at               timestamp   not null encode az64,
    updated_at               timestamp   not null encode az64,
    token                    varchar(48),
    unroutable_sms_log_id    integer encode az64,
    carrier_id               bigint encode az64,
    encrypted_token          varchar(765),
    encrypted_token_iv       varchar(765),
    firebase_token           varchar(765),
    allow_push_notifications varchar(15),
    last_looked_up           timestamp encode az64,
    carrier_history          varchar(64512)
)
    sortkey (id);

alter table mobile_subscribers
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on mobile_subscribers to email_collector_1cf3j6;

grant select on mobile_subscribers to update_other_carrier_8ecfg9;

grant select on mobile_subscribers to pos_integrations_alerts_cijf3e;

grant select on mobile_subscribers to redshift_lag_check_bjjncc;

grant select on mobile_subscribers to aggregate_campaign_brand_sales_imbodm;

grant select on mobile_subscribers to aggregate_campaign_spend_buckets_i6deeb;

grant select on mobile_subscribers to aggregate_sms_data_mn21ig;

grant select on mobile_subscribers to aggregate_campaign_category_sales_ni8ghd;

grant select on mobile_subscribers to aggregate_member_opt_outs_5i1m3o;

grant select on mobile_subscribers to aggregate_transaction_details_for_ads_7bkbd4;

grant select on mobile_subscribers to update_visit_details_brands_8db5bk;

grant select on mobile_subscribers to update_merchant_member_counts_bj3dm9;

grant select on mobile_subscribers to rails_gd75ob;

grant select on mobile_subscribers to t_tnegri_hefdl9;

grant select on mobile_subscribers to inteq_user_jl95l5;

grant select on mobile_subscribers to gdion_94lj0n;

grant select on mobile_subscribers to reporting_y4mc58das_ho8o3n;

grant select on mobile_subscribers to ghuppert_m8e4d7;

grant select on mobile_subscribers to aggregate_push_data_9lmlb8;

grant select on mobile_subscribers to aggregate_push_data_dfb2c9;

grant select on mobile_subscribers to aggregate_transaction_details_5nhkkg;

grant select on mobile_subscribers to autoconnects_cache_builder_7h8n39;

grant select on mobile_subscribers to aggregate_sms_data_fdif4h;

grant select on mobile_subscribers to analytics_process_incoming_events_oa32mf;

grant select on mobile_subscribers to glue_admin_a99j6d;

grant select on mobile_subscribers to glue_admin_d3a7h2;

grant select on mobile_subscribers to aggregate_campaign_redemptions_c81425;

grant select on mobile_subscribers to redshift_data_copy_l799nl;

grant select on mobile_subscribers to lambda_production_redshift;

grant select on mobile_subscribers to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on mobile_subscribers to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on mobile_subscribers to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on mobile_subscribers to "awsidc:ypark@springbig.com";

grant select on mobile_subscribers to "awsidc:mvizcaino@springbig.com";

grant select on mobile_subscribers to "awsidc:aonulak@springbig.com";

grant select on mobile_subscribers to group readonly;

grant insert, references, select, update on mobile_subscribers to group redshift_api_svc_dbgroup;

create table if not exists carriers
(
    id             bigint    not null encode az64 distkey
        constraint carriers_primary_carriers
            primary key,
    created_at     timestamp not null,
    updated_at     timestamp not null encode az64,
    mcc            integer encode az64,
    mnc            integer encode az64,
    name           varchar(765),
    service_type   varchar(765),
    country        varchar(765),
    major_provider integer encode az64
)
    sortkey (created_at);

alter table carriers
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on carriers to email_collector_1cf3j6;

grant select on carriers to update_other_carrier_8ecfg9;

grant select on carriers to pos_integrations_alerts_cijf3e;

grant select on carriers to redshift_lag_check_bjjncc;

grant select on carriers to aggregate_campaign_brand_sales_imbodm;

grant select on carriers to aggregate_campaign_spend_buckets_i6deeb;

grant select on carriers to aggregate_sms_data_mn21ig;

grant select on carriers to aggregate_campaign_category_sales_ni8ghd;

grant select on carriers to aggregate_member_opt_outs_5i1m3o;

grant select on carriers to aggregate_transaction_details_for_ads_7bkbd4;

grant select on carriers to update_visit_details_brands_8db5bk;

grant select on carriers to update_merchant_member_counts_bj3dm9;

grant select on carriers to rails_gd75ob;

grant select on carriers to t_tnegri_hefdl9;

grant select on carriers to inteq_user_jl95l5;

grant select on carriers to gdion_94lj0n;

grant select on carriers to reporting_y4mc58das_ho8o3n;

grant select on carriers to ghuppert_m8e4d7;

grant select on carriers to aggregate_push_data_9lmlb8;

grant select on carriers to aggregate_push_data_dfb2c9;

grant select on carriers to aggregate_transaction_details_5nhkkg;

grant select on carriers to autoconnects_cache_builder_7h8n39;

grant select on carriers to aggregate_sms_data_fdif4h;

grant select on carriers to analytics_process_incoming_events_oa32mf;

grant select on carriers to glue_admin_a99j6d;

grant select on carriers to glue_admin_d3a7h2;

grant select on carriers to aggregate_campaign_redemptions_c81425;

grant select on carriers to redshift_data_copy_l799nl;

grant select on carriers to lambda_production_redshift;

grant select on carriers to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on carriers to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on carriers to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on carriers to "awsidc:ypark@springbig.com";

grant select on carriers to "awsidc:mvizcaino@springbig.com";

grant select on carriers to "awsidc:aonulak@springbig.com";

grant select on carriers to group readonly;

grant insert, references, select, update on carriers to group redshift_api_svc_dbgroup;

create table if not exists members
(
    id                                   bigint      not null encode az64
        constraint members_primary_members
            primary key,
    phone_carrier                        varchar(765),
    recreational                         varchar(15),
    medical                              varchar(15),
    email                                varchar(765),
    _type                                integer encode az64,
    last_visit_date                      timestamp encode az64,
    first_name                           varchar(765),
    last_name                            varchar(765),
    address1                             varchar(765),
    address2                             varchar(765),
    city                                 varchar(765),
    state_id                             integer encode az64,
    zip                                  varchar(96),
    allowed_sms                          varchar(15),
    allowed_email                        varchar(15),
    allowed_loyalty                      varchar(15),
    referred_by_id                       integer encode az64,
    prefer_comm_method                   varchar(765),
    member_join_date                     date encode az64,
    member_join_time                     varchar(20),
    merchant_id                          integer     not null,
    created_at                           timestamp   not null encode az64,
    updated_at                           timestamp   not null encode az64,
    last_sms_sent_date                   timestamp encode az64,
    last_email_sent_date                 timestamp encode az64,
    last_auto_campaign_sms_date          timestamp encode az64,
    opt_out_date                         timestamp encode az64,
    z_send_priority                      varchar(15),
    mobile_subscriber_id                 integer encode az64 distkey,
    twitter_follow                       timestamp encode az64,
    facebook_follow                      timestamp encode az64,
    twilio_merchant_phone_number_id      integer encode az64,
    enrolled_via                         varchar(765),
    region                               varchar(765),
    member_import_id                     integer encode az64,
    balance                              integer     not null encode az64,
    birthday                             date encode az64,
    merchant_phone_number_id             integer encode az64,
    pos_type                             varchar(765),
    pos_user                             varchar(765),
    primary_location                     varchar(765),
    gender                               integer encode az64,
    second_to_last_visit_date            timestamp encode az64,
    hubspot_vid                          integer encode az64,
    encrypted_password                   varchar(765),
    encrypted_password_salt              varchar(765),
    encrypted_password_iv                varchar(765),
    out_of_state_recreational            varchar(15),
    phone_number                         varchar(48),
    last_confirmation_message_sent_at    timestamp encode az64,
    medical_card_expiration_old          timestamp encode az64,
    country                              varchar(765),
    address_type                         varchar(765),
    medical_card_expiration              date encode az64,
    payment_method                       integer encode az64,
    allow_push_notifications             varchar(15),
    firebase_token                       varchar(765),
    hipaa_acknowledged                   varchar(15),
    hipaa_acknowledged_date              timestamp encode az64,
    primary_location_changed_manually_at timestamp encode az64,
    email_opt_in_date                    timestamp encode az64,
    email_opt_out_date                   timestamp encode az64,
    has_firebase_token                   varchar(15) not null,
    referral_source                      integer encode az64
)
    sortkey (merchant_id);

alter table members
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on members to email_collector_1cf3j6;

grant select on members to update_other_carrier_8ecfg9;

grant select on members to pos_integrations_alerts_cijf3e;

grant select on members to redshift_lag_check_bjjncc;

grant select on members to aggregate_campaign_brand_sales_imbodm;

grant select on members to aggregate_campaign_spend_buckets_i6deeb;

grant select on members to aggregate_sms_data_mn21ig;

grant select on members to aggregate_campaign_category_sales_ni8ghd;

grant select on members to aggregate_member_opt_outs_5i1m3o;

grant select on members to aggregate_transaction_details_for_ads_7bkbd4;

grant select on members to update_visit_details_brands_8db5bk;

grant select on members to update_merchant_member_counts_bj3dm9;

grant select on members to rails_gd75ob;

grant select on members to t_tnegri_hefdl9;

grant select on members to inteq_user_jl95l5;

grant select on members to gdion_94lj0n;

grant select on members to reporting_y4mc58das_ho8o3n;

grant select on members to ghuppert_m8e4d7;

grant select on members to aggregate_push_data_9lmlb8;

grant select on members to aggregate_push_data_dfb2c9;

grant select on members to aggregate_transaction_details_5nhkkg;

grant select on members to autoconnects_cache_builder_7h8n39;

grant select on members to aggregate_sms_data_fdif4h;

grant select on members to analytics_process_incoming_events_oa32mf;

grant select on members to glue_admin_a99j6d;

grant select on members to glue_admin_d3a7h2;

grant select on members to aggregate_campaign_redemptions_c81425;

grant select on members to redshift_data_copy_l799nl;

grant select on members to lambda_production_redshift;

grant select on members to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on members to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on members to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on members to "awsidc:ypark@springbig.com";

grant select on members to "awsidc:mvizcaino@springbig.com";

grant select on members to "awsidc:aonulak@springbig.com";

grant select on members to group readonly;

grant insert, references, select, update on members to group redshift_api_svc_dbgroup;

create table if not exists lookup_aggregate_data_process_types
(
    id           bigint       not null encode az64
        primary key,
    created_at   timestamp    not null encode az64,
    updated_at   timestamp    not null encode az64,
    process_type varchar(256) not null
);

alter table lookup_aggregate_data_process_types
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on lookup_aggregate_data_process_types to email_collector_1cf3j6;

grant select on lookup_aggregate_data_process_types to update_other_carrier_8ecfg9;

grant select on lookup_aggregate_data_process_types to pos_integrations_alerts_cijf3e;

grant select on lookup_aggregate_data_process_types to redshift_lag_check_bjjncc;

grant select on lookup_aggregate_data_process_types to aggregate_campaign_brand_sales_imbodm;

grant select on lookup_aggregate_data_process_types to aggregate_campaign_spend_buckets_i6deeb;

grant select on lookup_aggregate_data_process_types to aggregate_sms_data_mn21ig;

grant select on lookup_aggregate_data_process_types to aggregate_campaign_category_sales_ni8ghd;

grant select on lookup_aggregate_data_process_types to aggregate_member_opt_outs_5i1m3o;

grant select on lookup_aggregate_data_process_types to aggregate_transaction_details_for_ads_7bkbd4;

grant select on lookup_aggregate_data_process_types to update_visit_details_brands_8db5bk;

grant select on lookup_aggregate_data_process_types to update_merchant_member_counts_bj3dm9;

grant select on lookup_aggregate_data_process_types to messaging_reporting;

grant select on lookup_aggregate_data_process_types to rails_gd75ob;

grant select on lookup_aggregate_data_process_types to t_tnegri_hefdl9;

grant select on lookup_aggregate_data_process_types to inteq_user_jl95l5;

grant select on lookup_aggregate_data_process_types to gdion_94lj0n;

grant select on lookup_aggregate_data_process_types to reporting_y4mc58das_ho8o3n;

grant select on lookup_aggregate_data_process_types to ghuppert_m8e4d7;

grant select on lookup_aggregate_data_process_types to aggregate_push_data_9lmlb8;

grant select on lookup_aggregate_data_process_types to aggregate_push_data_dfb2c9;

grant select on lookup_aggregate_data_process_types to aggregate_transaction_details_5nhkkg;

grant select on lookup_aggregate_data_process_types to autoconnects_cache_builder_7h8n39;

grant select on lookup_aggregate_data_process_types to aggregate_sms_data_fdif4h;

grant select on lookup_aggregate_data_process_types to t_jdavis;

grant select on lookup_aggregate_data_process_types to analytics_process_incoming_events_oa32mf;

grant select on lookup_aggregate_data_process_types to glue_admin_a99j6d;

grant select on lookup_aggregate_data_process_types to glue_admin_d3a7h2;

grant select on lookup_aggregate_data_process_types to aggregate_campaign_redemptions_c81425;

grant select on lookup_aggregate_data_process_types to redshift_data_copy_l799nl;

grant select on lookup_aggregate_data_process_types to bbwoika;

grant delete, insert, select, update on lookup_aggregate_data_process_types to lambda_production_redshift;

grant select on lookup_aggregate_data_process_types to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on lookup_aggregate_data_process_types to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on lookup_aggregate_data_process_types to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on lookup_aggregate_data_process_types to "awsidc:ypark@springbig.com";

grant select on lookup_aggregate_data_process_types to "awsidc:mvizcaino@springbig.com";

grant select on lookup_aggregate_data_process_types to "awsidc:aonulak@springbig.com";

grant select on lookup_aggregate_data_process_types to group readonly;

grant insert, references, select, update on lookup_aggregate_data_process_types to group redshift_api_svc_dbgroup;

create table if not exists campaign_follow_up_segments
(
    id                   bigint    not null encode az64
        constraint campaign_follow_up_segments_campaign_follow_up_segments_pkey
            primary key,
    created_at           timestamp not null encode az64,
    updated_at           timestamp not null encode az64,
    campaign_id          bigint encode az64,
    follow_up_segment_id bigint encode az64
);

alter table campaign_follow_up_segments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on campaign_follow_up_segments to email_collector_1cf3j6;

grant select on campaign_follow_up_segments to update_other_carrier_8ecfg9;

grant select on campaign_follow_up_segments to pos_integrations_alerts_cijf3e;

grant select on campaign_follow_up_segments to redshift_lag_check_bjjncc;

grant select on campaign_follow_up_segments to aggregate_campaign_brand_sales_imbodm;

grant select on campaign_follow_up_segments to aggregate_campaign_spend_buckets_i6deeb;

grant select on campaign_follow_up_segments to aggregate_sms_data_mn21ig;

grant select on campaign_follow_up_segments to aggregate_campaign_category_sales_ni8ghd;

grant select on campaign_follow_up_segments to aggregate_member_opt_outs_5i1m3o;

grant select on campaign_follow_up_segments to aggregate_transaction_details_for_ads_7bkbd4;

grant select on campaign_follow_up_segments to update_visit_details_brands_8db5bk;

grant select on campaign_follow_up_segments to update_merchant_member_counts_bj3dm9;

grant select on campaign_follow_up_segments to rails_gd75ob;

grant select on campaign_follow_up_segments to t_tnegri_hefdl9;

grant select on campaign_follow_up_segments to inteq_user_jl95l5;

grant select on campaign_follow_up_segments to gdion_94lj0n;

grant select on campaign_follow_up_segments to reporting_y4mc58das_ho8o3n;

grant select on campaign_follow_up_segments to ghuppert_m8e4d7;

grant select on campaign_follow_up_segments to aggregate_push_data_9lmlb8;

grant select on campaign_follow_up_segments to aggregate_push_data_dfb2c9;

grant select on campaign_follow_up_segments to aggregate_transaction_details_5nhkkg;

grant select on campaign_follow_up_segments to autoconnects_cache_builder_7h8n39;

grant select on campaign_follow_up_segments to aggregate_sms_data_fdif4h;

grant select on campaign_follow_up_segments to analytics_process_incoming_events_oa32mf;

grant select on campaign_follow_up_segments to glue_admin_a99j6d;

grant select on campaign_follow_up_segments to glue_admin_d3a7h2;

grant select on campaign_follow_up_segments to aggregate_campaign_redemptions_c81425;

grant select on campaign_follow_up_segments to redshift_data_copy_l799nl;

grant select on campaign_follow_up_segments to "IAMR:AWSReservedSSO_hover_users_448172345061fed8";

grant select on campaign_follow_up_segments to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on campaign_follow_up_segments to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on campaign_follow_up_segments to "awsidc:ypark@springbig.com";

grant select on campaign_follow_up_segments to "awsidc:mvizcaino@springbig.com";

grant select on campaign_follow_up_segments to "awsidc:aonulak@springbig.com";

grant select on campaign_follow_up_segments to group readonly;

grant insert, references, select, update on campaign_follow_up_segments to group redshift_api_svc_dbgroup;

create table if not exists greenline_test
(
    id       integer encode az64,
    name     varchar(255),
    quantity integer encode az64
);

alter table greenline_test
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on greenline_test to email_collector_1cf3j6;

grant select on greenline_test to update_other_carrier_8ecfg9;

grant select on greenline_test to pos_integrations_alerts_cijf3e;

grant select on greenline_test to redshift_lag_check_bjjncc;

grant select on greenline_test to aggregate_campaign_brand_sales_imbodm;

grant select on greenline_test to aggregate_campaign_spend_buckets_i6deeb;

grant select on greenline_test to aggregate_sms_data_mn21ig;

grant select on greenline_test to aggregate_campaign_category_sales_ni8ghd;

grant select on greenline_test to aggregate_member_opt_outs_5i1m3o;

grant select on greenline_test to aggregate_transaction_details_for_ads_7bkbd4;

grant select on greenline_test to update_visit_details_brands_8db5bk;

grant select on greenline_test to update_merchant_member_counts_bj3dm9;

grant select on greenline_test to rails_gd75ob;

grant select on greenline_test to t_tnegri_hefdl9;

grant select on greenline_test to inteq_user_jl95l5;

grant select on greenline_test to gdion_94lj0n;

grant select on greenline_test to reporting_y4mc58das_ho8o3n;

grant select on greenline_test to ghuppert_m8e4d7;

grant select on greenline_test to aggregate_push_data_9lmlb8;

grant select on greenline_test to aggregate_push_data_dfb2c9;

grant select on greenline_test to aggregate_transaction_details_5nhkkg;

grant select on greenline_test to autoconnects_cache_builder_7h8n39;

grant select on greenline_test to aggregate_sms_data_fdif4h;

grant select on greenline_test to analytics_process_incoming_events_oa32mf;

grant select on greenline_test to glue_admin_a99j6d;

grant select on greenline_test to glue_admin_d3a7h2;

grant select on greenline_test to aggregate_campaign_redemptions_c81425;

grant select on greenline_test to redshift_data_copy_l799nl;

grant select on greenline_test to "IAMR:AWSReservedSSO_Dataco_Redshift_User_9c3fb4366223d201";

grant select on greenline_test to "IAMR:AWSReservedSSO_RedshiftDatabaseReadUser_c0c02968d07490c9";

grant select on greenline_test to "awsidc:ypark@springbig.com";

grant select on greenline_test to "awsidc:mvizcaino@springbig.com";

grant select on greenline_test to "awsidc:aonulak@springbig.com";

grant insert, references, select, update on greenline_test to group redshift_api_svc_dbgroup;

create table if not exists active_admin_comments
(
    id             bigint       not null encode az64
        constraint active_admin_comments_primary_active_admin_comments
            primary key,
    resource_id    varchar(765) not null,
    resource_type  varchar(765) not null,
    author_id      integer encode az64,
    author_type    varchar(765),
    body           varchar(32768),
    created_at     timestamp    not null encode az64,
    updated_at     timestamp    not null encode az64,
    namespace      varchar(765),
    available_at   timestamp encode az64,
    workflow_id    integer encode az64,
    disposition_id integer encode az64
);

alter table active_admin_comments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on active_admin_comments to email_collector_1cf3j6;

grant select on active_admin_comments to update_other_carrier_8ecfg9;

grant select on active_admin_comments to pos_integrations_alerts_cijf3e;

grant select on active_admin_comments to redshift_lag_check_bjjncc;

grant select on active_admin_comments to aggregate_campaign_brand_sales_imbodm;

grant select on active_admin_comments to aggregate_campaign_spend_buckets_i6deeb;

grant select on active_admin_comments to aggregate_sms_data_mn21ig;

grant select on active_admin_comments to aggregate_campaign_category_sales_ni8ghd;

grant select on active_admin_comments to aggregate_member_opt_outs_5i1m3o;

grant select on active_admin_comments to aggregate_transaction_details_for_ads_7bkbd4;

grant select on active_admin_comments to update_visit_details_brands_8db5bk;

grant select on active_admin_comments to update_merchant_member_counts_bj3dm9;

grant select on active_admin_comments to rails_gd75ob;

grant select on active_admin_comments to t_tnegri_hefdl9;

grant select on active_admin_comments to inteq_user_jl95l5;

grant select on active_admin_comments to gdion_94lj0n;

grant select on active_admin_comments to reporting_y4mc58das_ho8o3n;

grant select on active_admin_comments to ghuppert_m8e4d7;

grant select on active_admin_comments to aggregate_push_data_9lmlb8;

grant select on active_admin_comments to aggregate_push_data_dfb2c9;

grant select on active_admin_comments to aggregate_transaction_details_5nhkkg;

grant select on active_admin_comments to autoconnects_cache_builder_7h8n39;

grant select on active_admin_comments to aggregate_sms_data_fdif4h;

grant select on active_admin_comments to analytics_process_incoming_events_oa32mf;

grant select on active_admin_comments to glue_admin_a99j6d;

grant select on active_admin_comments to glue_admin_d3a7h2;

grant select on active_admin_comments to aggregate_campaign_redemptions_c81425;

grant select on active_admin_comments to redshift_data_copy_l799nl;

grant select on active_admin_comments to "awsidc:ypark@springbig.com";

grant select on active_admin_comments to "awsidc:mvizcaino@springbig.com";

create table if not exists ads
(
    id                                   bigint      not null encode az64 distkey
        constraint ads_primary_ads
            primary key,
    created_at                           timestamp   not null encode az64,
    updated_at                           timestamp   not null encode az64,
    name                                 varchar(765),
    advertiser_id                        integer     not null encode az64,
    send_at_start                        timestamp encode az64,
    send_at_end                          timestamp encode az64,
    credits                              integer encode az64,
    send_once                            varchar(15),
    tracking_hours                       integer     not null encode az64,
    status                               integer encode az64,
    cost_per_message                     double precision,
    suggested_text                       varchar(32768),
    time_range_start                     varchar(20),
    time_range_end                       varchar(20),
    marketplace_sponsor_request_id       integer encode az64,
    viewed_by_user_ids                   varchar(32768),
    fulfilled_sponsor_request_email_sent varchar(15) not null
)
    sortkey (id);

alter table ads
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on ads to email_collector_1cf3j6;

grant select on ads to update_other_carrier_8ecfg9;

grant select on ads to pos_integrations_alerts_cijf3e;

grant select on ads to redshift_lag_check_bjjncc;

grant select on ads to aggregate_campaign_brand_sales_imbodm;

grant select on ads to aggregate_campaign_spend_buckets_i6deeb;

grant select on ads to aggregate_sms_data_mn21ig;

grant select on ads to aggregate_campaign_category_sales_ni8ghd;

grant select on ads to aggregate_member_opt_outs_5i1m3o;

grant select on ads to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ads to update_visit_details_brands_8db5bk;

grant select on ads to update_merchant_member_counts_bj3dm9;

grant select on ads to rails_gd75ob;

grant select on ads to t_tnegri_hefdl9;

grant select on ads to inteq_user_jl95l5;

grant select on ads to gdion_94lj0n;

grant select on ads to reporting_y4mc58das_ho8o3n;

grant select on ads to ghuppert_m8e4d7;

grant select on ads to aggregate_push_data_9lmlb8;

grant select on ads to aggregate_push_data_dfb2c9;

grant select on ads to aggregate_transaction_details_5nhkkg;

grant select on ads to autoconnects_cache_builder_7h8n39;

grant select on ads to aggregate_sms_data_fdif4h;

grant select on ads to analytics_process_incoming_events_oa32mf;

grant select on ads to glue_admin_a99j6d;

grant select on ads to glue_admin_d3a7h2;

grant select on ads to aggregate_campaign_redemptions_c81425;

grant select on ads to redshift_data_copy_l799nl;

grant select on ads to "awsidc:ypark@springbig.com";

grant select on ads to "awsidc:mvizcaino@springbig.com";

create table if not exists ads_merchants
(
    id                            bigint    not null encode az64 distkey
        constraint ads_merchants_primary_ads_merchants
            primary key,
    created_at                    timestamp not null encode az64,
    updated_at                    timestamp not null encode az64,
    ad_id                         integer   not null encode az64,
    merchant_id                   integer   not null encode az64,
    selected_merchant_segment_ids varchar(24000)
)
    sortkey (id);

alter table ads_merchants
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on ads_merchants to email_collector_1cf3j6;

grant select on ads_merchants to update_other_carrier_8ecfg9;

grant select on ads_merchants to pos_integrations_alerts_cijf3e;

grant select on ads_merchants to redshift_lag_check_bjjncc;

grant select on ads_merchants to aggregate_campaign_brand_sales_imbodm;

grant select on ads_merchants to aggregate_campaign_spend_buckets_i6deeb;

grant select on ads_merchants to aggregate_sms_data_mn21ig;

grant select on ads_merchants to aggregate_campaign_category_sales_ni8ghd;

grant select on ads_merchants to aggregate_member_opt_outs_5i1m3o;

grant select on ads_merchants to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ads_merchants to update_visit_details_brands_8db5bk;

grant select on ads_merchants to update_merchant_member_counts_bj3dm9;

grant select on ads_merchants to rails_gd75ob;

grant select on ads_merchants to t_tnegri_hefdl9;

grant select on ads_merchants to inteq_user_jl95l5;

grant select on ads_merchants to gdion_94lj0n;

grant select on ads_merchants to reporting_y4mc58das_ho8o3n;

grant select on ads_merchants to ghuppert_m8e4d7;

grant select on ads_merchants to aggregate_push_data_9lmlb8;

grant select on ads_merchants to aggregate_push_data_dfb2c9;

grant select on ads_merchants to aggregate_transaction_details_5nhkkg;

grant select on ads_merchants to autoconnects_cache_builder_7h8n39;

grant select on ads_merchants to aggregate_sms_data_fdif4h;

grant select on ads_merchants to analytics_process_incoming_events_oa32mf;

grant select on ads_merchants to glue_admin_a99j6d;

grant select on ads_merchants to glue_admin_d3a7h2;

grant select on ads_merchants to aggregate_campaign_redemptions_c81425;

grant select on ads_merchants to redshift_data_copy_l799nl;

grant select on ads_merchants to "awsidc:ypark@springbig.com";

grant select on ads_merchants to "awsidc:mvizcaino@springbig.com";

create table if not exists advertiser_marketplace_analyses
(
    id                               bigint        not null encode az64
        constraint advertiser_marketplace_analyses_advertiser_marketplace_analyses_pkey
            primary key,
    created_at                       timestamp     not null encode az64,
    updated_at                       timestamp     not null encode az64,
    advertiser_id                    integer       not null encode az64,
    region                           varchar(765),
    avg_visits_week                  numeric(8, 2) not null encode az64,
    max_visits_week                  numeric(8, 2) not null encode az64,
    min_visits_week                  numeric(8, 2) not null encode az64,
    standard_deviation_visits_week   numeric(8, 2) not null encode az64,
    avg_visit_time                   numeric(8, 2) not null encode az64,
    max_visit_time                   numeric(8, 2) not null encode az64,
    min_visit_time                   numeric(8, 2) not null encode az64,
    standard_deviation_visit_time    numeric(8, 2) not null encode az64,
    avg_ticket                       numeric(8, 2) not null encode az64,
    max_ticket                       numeric(8, 2) not null encode az64,
    min_ticket                       numeric(8, 2) not null encode az64,
    standard_deviation_ticket        numeric(8, 2) not null encode az64,
    avg_age                          numeric(8, 2) not null encode az64,
    max_age                          numeric(8, 2) not null encode az64,
    min_age                          numeric(8, 2) not null encode az64,
    standard_deviation_age           numeric(8, 2) not null encode az64,
    avg_ticket_q1                    numeric(8, 2) not null encode az64,
    avg_ticket_q2                    numeric(8, 2) not null encode az64,
    avg_ticket_q3                    numeric(8, 2) not null encode az64,
    avg_ticket_q4                    numeric(8, 2) not null encode az64,
    avg_visits_week_q1               numeric(8, 2) not null encode az64,
    avg_visits_week_q2               numeric(8, 2) not null encode az64,
    avg_visits_week_q3               numeric(8, 2) not null encode az64,
    avg_visits_week_q4               numeric(8, 2) not null encode az64,
    avg_visit_time_q1                numeric(8, 2) not null encode az64,
    avg_visit_time_q2                numeric(8, 2) not null encode az64,
    avg_visit_time_q3                numeric(8, 2) not null encode az64,
    avg_visit_time_q4                numeric(8, 2) not null encode az64,
    avg_age_q1                       numeric(8, 2) not null encode az64,
    avg_age_q2                       numeric(8, 2) not null encode az64,
    avg_age_q3                       numeric(8, 2) not null encode az64,
    avg_age_q4                       numeric(8, 2) not null encode az64,
    avg_online_visits                numeric(8, 2) not null encode az64,
    max_online_visits                numeric(8, 2) not null encode az64,
    min_online_visits                numeric(8, 2) not null encode az64,
    standard_deviation_online_visits numeric(8, 2) not null encode az64,
    avg_online_visits_q1             numeric(8, 2) not null encode az64,
    avg_online_visits_q2             numeric(8, 2) not null encode az64,
    avg_online_visits_q3             numeric(8, 2) not null encode az64,
    avg_online_visits_q4             numeric(8, 2) not null encode az64
);

alter table advertiser_marketplace_analyses
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on advertiser_marketplace_analyses to email_collector_1cf3j6;

grant select on advertiser_marketplace_analyses to update_other_carrier_8ecfg9;

grant select on advertiser_marketplace_analyses to pos_integrations_alerts_cijf3e;

grant select on advertiser_marketplace_analyses to redshift_lag_check_bjjncc;

grant select on advertiser_marketplace_analyses to aggregate_campaign_brand_sales_imbodm;

grant select on advertiser_marketplace_analyses to aggregate_campaign_spend_buckets_i6deeb;

grant select on advertiser_marketplace_analyses to aggregate_sms_data_mn21ig;

grant select on advertiser_marketplace_analyses to aggregate_campaign_category_sales_ni8ghd;

grant select on advertiser_marketplace_analyses to aggregate_member_opt_outs_5i1m3o;

grant select on advertiser_marketplace_analyses to aggregate_transaction_details_for_ads_7bkbd4;

grant select on advertiser_marketplace_analyses to update_visit_details_brands_8db5bk;

grant select on advertiser_marketplace_analyses to update_merchant_member_counts_bj3dm9;

grant select on advertiser_marketplace_analyses to rails_gd75ob;

grant select on advertiser_marketplace_analyses to t_tnegri_hefdl9;

grant select on advertiser_marketplace_analyses to inteq_user_jl95l5;

grant select on advertiser_marketplace_analyses to gdion_94lj0n;

grant select on advertiser_marketplace_analyses to reporting_y4mc58das_ho8o3n;

grant select on advertiser_marketplace_analyses to ghuppert_m8e4d7;

grant select on advertiser_marketplace_analyses to aggregate_push_data_9lmlb8;

grant select on advertiser_marketplace_analyses to aggregate_push_data_dfb2c9;

grant select on advertiser_marketplace_analyses to aggregate_transaction_details_5nhkkg;

grant select on advertiser_marketplace_analyses to autoconnects_cache_builder_7h8n39;

grant select on advertiser_marketplace_analyses to aggregate_sms_data_fdif4h;

grant select on advertiser_marketplace_analyses to analytics_process_incoming_events_oa32mf;

grant select on advertiser_marketplace_analyses to glue_admin_a99j6d;

grant select on advertiser_marketplace_analyses to glue_admin_d3a7h2;

grant select on advertiser_marketplace_analyses to aggregate_campaign_redemptions_c81425;

grant select on advertiser_marketplace_analyses to redshift_data_copy_l799nl;

grant select on advertiser_marketplace_analyses to "awsidc:ypark@springbig.com";

grant select on advertiser_marketplace_analyses to "awsidc:mvizcaino@springbig.com";

create table if not exists advertiser_normalized_brand_names
(
    id                    bigint         not null encode az64 distkey
        constraint advertiser_normalized_brand_names_advertiser_normalized_brand_names_pkey
            primary key,
    created_at            timestamp      not null encode az64,
    updated_at            timestamp      not null encode az64,
    advertiser_id         integer        not null encode az64,
    normalized_brand_name varchar(24000) not null,
    region                varchar(24000)
)
    sortkey (id);

alter table advertiser_normalized_brand_names
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on advertiser_normalized_brand_names to email_collector_1cf3j6;

grant select on advertiser_normalized_brand_names to update_other_carrier_8ecfg9;

grant select on advertiser_normalized_brand_names to pos_integrations_alerts_cijf3e;

grant select on advertiser_normalized_brand_names to redshift_lag_check_bjjncc;

grant select on advertiser_normalized_brand_names to aggregate_campaign_brand_sales_imbodm;

grant select on advertiser_normalized_brand_names to aggregate_campaign_spend_buckets_i6deeb;

grant select on advertiser_normalized_brand_names to aggregate_sms_data_mn21ig;

grant select on advertiser_normalized_brand_names to aggregate_campaign_category_sales_ni8ghd;

grant select on advertiser_normalized_brand_names to aggregate_member_opt_outs_5i1m3o;

grant select on advertiser_normalized_brand_names to aggregate_transaction_details_for_ads_7bkbd4;

grant select on advertiser_normalized_brand_names to update_visit_details_brands_8db5bk;

grant select on advertiser_normalized_brand_names to update_merchant_member_counts_bj3dm9;

grant select on advertiser_normalized_brand_names to rails_gd75ob;

grant select on advertiser_normalized_brand_names to t_tnegri_hefdl9;

grant select on advertiser_normalized_brand_names to inteq_user_jl95l5;

grant select on advertiser_normalized_brand_names to gdion_94lj0n;

grant select on advertiser_normalized_brand_names to reporting_y4mc58das_ho8o3n;

grant select on advertiser_normalized_brand_names to ghuppert_m8e4d7;

grant select on advertiser_normalized_brand_names to aggregate_push_data_9lmlb8;

grant select on advertiser_normalized_brand_names to aggregate_push_data_dfb2c9;

grant select on advertiser_normalized_brand_names to aggregate_transaction_details_5nhkkg;

grant select on advertiser_normalized_brand_names to autoconnects_cache_builder_7h8n39;

grant select on advertiser_normalized_brand_names to aggregate_sms_data_fdif4h;

grant select on advertiser_normalized_brand_names to analytics_process_incoming_events_oa32mf;

grant select on advertiser_normalized_brand_names to glue_admin_a99j6d;

grant select on advertiser_normalized_brand_names to glue_admin_d3a7h2;

grant select on advertiser_normalized_brand_names to aggregate_campaign_redemptions_c81425;

grant select on advertiser_normalized_brand_names to redshift_data_copy_l799nl;

grant select on advertiser_normalized_brand_names to "awsidc:ypark@springbig.com";

grant select on advertiser_normalized_brand_names to "awsidc:mvizcaino@springbig.com";

create table if not exists advertiser_organizations
(
    id                    bigint    not null encode az64
        constraint advertiser_organizations_primary_advertiser_organizations
            primary key,
    name                  varchar(765),
    contact_email         varchar(765),
    contact_phone         varchar(765),
    contract_renewal_date date encode az64,
    platform_fee          numeric(8, 2) encode az64,
    cost_per_message      numeric(10, 4) encode az64,
    created_at            timestamp not null encode az64,
    updated_at            timestamp not null encode az64,
    credit_allotment      integer encode az64,
    billing_type          integer encode az64,
    account_manager_id    integer encode az64,
    sales_agent_id        integer encode az64,
    state                 varchar(765),
    digital_catalog_fee   numeric(10, 4) encode az64,
    billing_email         varchar(765),
    quickbooks_id         integer encode az64,
    billing_start_date    date encode az64,
    billing_end_date      date encode az64,
    demo_account          varchar(15)
);

alter table advertiser_organizations
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on advertiser_organizations to email_collector_1cf3j6;

grant select on advertiser_organizations to update_other_carrier_8ecfg9;

grant select on advertiser_organizations to pos_integrations_alerts_cijf3e;

grant select on advertiser_organizations to redshift_lag_check_bjjncc;

grant select on advertiser_organizations to aggregate_campaign_brand_sales_imbodm;

grant select on advertiser_organizations to aggregate_campaign_spend_buckets_i6deeb;

grant select on advertiser_organizations to aggregate_sms_data_mn21ig;

grant select on advertiser_organizations to aggregate_campaign_category_sales_ni8ghd;

grant select on advertiser_organizations to aggregate_member_opt_outs_5i1m3o;

grant select on advertiser_organizations to aggregate_transaction_details_for_ads_7bkbd4;

grant select on advertiser_organizations to update_visit_details_brands_8db5bk;

grant select on advertiser_organizations to update_merchant_member_counts_bj3dm9;

grant select on advertiser_organizations to rails_gd75ob;

grant select on advertiser_organizations to t_tnegri_hefdl9;

grant select on advertiser_organizations to inteq_user_jl95l5;

grant select on advertiser_organizations to gdion_94lj0n;

grant select on advertiser_organizations to reporting_y4mc58das_ho8o3n;

grant select on advertiser_organizations to ghuppert_m8e4d7;

grant select on advertiser_organizations to aggregate_push_data_9lmlb8;

grant select on advertiser_organizations to aggregate_push_data_dfb2c9;

grant select on advertiser_organizations to aggregate_transaction_details_5nhkkg;

grant select on advertiser_organizations to autoconnects_cache_builder_7h8n39;

grant select on advertiser_organizations to aggregate_sms_data_fdif4h;

grant select on advertiser_organizations to analytics_process_incoming_events_oa32mf;

grant select on advertiser_organizations to glue_admin_a99j6d;

grant select on advertiser_organizations to glue_admin_d3a7h2;

grant select on advertiser_organizations to aggregate_campaign_redemptions_c81425;

grant select on advertiser_organizations to redshift_data_copy_l799nl;

grant select on advertiser_organizations to "awsidc:ypark@springbig.com";

grant select on advertiser_organizations to "awsidc:mvizcaino@springbig.com";

create table if not exists advertisers
(
    id                         bigint           not null encode az64 distkey
        constraint advertisers_primary_advertisers
            primary key,
    created_at                 timestamp        not null encode az64,
    updated_at                 timestamp        not null encode az64,
    name                       varchar(765)     not null,
    email                      varchar(765)     not null,
    contact_name               varchar(765)     not null,
    contact_phone              varchar(30)      not null,
    business_phone             varchar(30)      not null,
    address                    varchar(765)     not null,
    city                       varchar(765)     not null,
    state                      varchar(765)     not null,
    postal                     varchar(30)      not null,
    time_zone                  varchar(765)     not null,
    states_with_license        varchar(32768)   not null,
    meta_data                  varchar(32768),
    status                     integer encode az64,
    cost_per_message           double precision not null,
    advertiser_organization_id integer          not null encode az64,
    monthly_credits            integer          not null encode az64,
    contract_expiration        date encode az64,
    account_manager_id         integer encode az64,
    key_terms                  varchar(32768),
    name_alias                 varchar(765),
    artificial                 varchar(15)      not null
)
    sortkey (id);

alter table advertisers
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on advertisers to email_collector_1cf3j6;

grant select on advertisers to update_other_carrier_8ecfg9;

grant select on advertisers to pos_integrations_alerts_cijf3e;

grant select on advertisers to redshift_lag_check_bjjncc;

grant select on advertisers to aggregate_campaign_brand_sales_imbodm;

grant select on advertisers to aggregate_campaign_spend_buckets_i6deeb;

grant select on advertisers to aggregate_sms_data_mn21ig;

grant select on advertisers to aggregate_campaign_category_sales_ni8ghd;

grant select on advertisers to aggregate_member_opt_outs_5i1m3o;

grant select on advertisers to aggregate_transaction_details_for_ads_7bkbd4;

grant select on advertisers to update_visit_details_brands_8db5bk;

grant select on advertisers to update_merchant_member_counts_bj3dm9;

grant select on advertisers to rails_gd75ob;

grant select on advertisers to t_tnegri_hefdl9;

grant select on advertisers to inteq_user_jl95l5;

grant select on advertisers to gdion_94lj0n;

grant select on advertisers to reporting_y4mc58das_ho8o3n;

grant select on advertisers to ghuppert_m8e4d7;

grant select on advertisers to aggregate_push_data_9lmlb8;

grant select on advertisers to aggregate_push_data_dfb2c9;

grant select on advertisers to aggregate_transaction_details_5nhkkg;

grant select on advertisers to autoconnects_cache_builder_7h8n39;

grant select on advertisers to aggregate_sms_data_fdif4h;

grant select on advertisers to analytics_process_incoming_events_oa32mf;

grant select on advertisers to glue_admin_a99j6d;

grant select on advertisers to glue_admin_d3a7h2;

grant select on advertisers to aggregate_campaign_redemptions_c81425;

grant select on advertisers to redshift_data_copy_l799nl;

grant select on advertisers to "awsidc:ypark@springbig.com";

grant select on advertisers to "awsidc:mvizcaino@springbig.com";

create table if not exists advertisers_brands_terms
(
    id                bigint         not null encode az64 distkey
        constraint advertisers_brands_terms_advertisers_brands_terms_pkey
            primary key,
    created_at        timestamp      not null encode az64,
    updated_at        timestamp      not null encode az64,
    advertiser_id     integer        not null encode az64,
    brand_term        varchar(24000) not null,
    brand_term_region varchar(24000) not null,
    approved          varchar(15)    not null
)
    sortkey (id);

alter table advertisers_brands_terms
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on advertisers_brands_terms to email_collector_1cf3j6;

grant select on advertisers_brands_terms to update_other_carrier_8ecfg9;

grant select on advertisers_brands_terms to pos_integrations_alerts_cijf3e;

grant select on advertisers_brands_terms to redshift_lag_check_bjjncc;

grant select on advertisers_brands_terms to aggregate_campaign_brand_sales_imbodm;

grant select on advertisers_brands_terms to aggregate_campaign_spend_buckets_i6deeb;

grant select on advertisers_brands_terms to aggregate_sms_data_mn21ig;

grant select on advertisers_brands_terms to aggregate_campaign_category_sales_ni8ghd;

grant select on advertisers_brands_terms to aggregate_member_opt_outs_5i1m3o;

grant select on advertisers_brands_terms to aggregate_transaction_details_for_ads_7bkbd4;

grant select on advertisers_brands_terms to update_visit_details_brands_8db5bk;

grant select on advertisers_brands_terms to update_merchant_member_counts_bj3dm9;

grant select on advertisers_brands_terms to rails_gd75ob;

grant select on advertisers_brands_terms to t_tnegri_hefdl9;

grant select on advertisers_brands_terms to inteq_user_jl95l5;

grant select on advertisers_brands_terms to gdion_94lj0n;

grant select on advertisers_brands_terms to reporting_y4mc58das_ho8o3n;

grant select on advertisers_brands_terms to ghuppert_m8e4d7;

grant select on advertisers_brands_terms to aggregate_push_data_9lmlb8;

grant select on advertisers_brands_terms to aggregate_push_data_dfb2c9;

grant select on advertisers_brands_terms to aggregate_transaction_details_5nhkkg;

grant select on advertisers_brands_terms to autoconnects_cache_builder_7h8n39;

grant select on advertisers_brands_terms to aggregate_sms_data_fdif4h;

grant select on advertisers_brands_terms to analytics_process_incoming_events_oa32mf;

grant select on advertisers_brands_terms to glue_admin_a99j6d;

grant select on advertisers_brands_terms to glue_admin_d3a7h2;

grant select on advertisers_brands_terms to aggregate_campaign_redemptions_c81425;

grant select on advertisers_brands_terms to redshift_data_copy_l799nl;

grant select on advertisers_brands_terms to "awsidc:ypark@springbig.com";

grant select on advertisers_brands_terms to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data
(
    id           bigint    not null distkey
        constraint aggregate_data_primary_aggregate_data
            primary key,
    created_at   timestamp encode az64,
    updated_at   timestamp encode az64,
    merchant_id  integer encode az64,
    date_hour    timestamp not null encode az64,
    sms_sent     integer   not null encode az64,
    sms_credits  integer   not null encode az64,
    _type        integer encode az64,
    process_type varchar(765)
)
    sortkey (id);

alter table aggregate_data
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data to email_collector_1cf3j6;

grant select on aggregate_data to update_other_carrier_8ecfg9;

grant select on aggregate_data to pos_integrations_alerts_cijf3e;

grant select on aggregate_data to redshift_lag_check_bjjncc;

grant select on aggregate_data to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data to aggregate_sms_data_mn21ig;

grant select on aggregate_data to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data to update_visit_details_brands_8db5bk;

grant select on aggregate_data to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data to rails_gd75ob;

grant select on aggregate_data to t_tnegri_hefdl9;

grant select on aggregate_data to inteq_user_jl95l5;

grant select on aggregate_data to gdion_94lj0n;

grant select on aggregate_data to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data to ghuppert_m8e4d7;

grant select on aggregate_data to aggregate_push_data_9lmlb8;

grant select on aggregate_data to aggregate_push_data_dfb2c9;

grant select on aggregate_data to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data to aggregate_sms_data_fdif4h;

grant select on aggregate_data to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data to glue_admin_a99j6d;

grant select on aggregate_data to glue_admin_d3a7h2;

grant select on aggregate_data to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data to redshift_data_copy_l799nl;

grant select on aggregate_data to "awsidc:ypark@springbig.com";

grant select on aggregate_data to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_campaign_brand_sales
(
    id                               bigint       not null encode az64
        constraint aggregate_data_campaign_brand_sales_primary_aggregate_data_campaign_brand_sales
            primary key,
    date_hour                        timestamp    not null encode az64,
    merchant_id                      integer      not null encode az64,
    campaign_id                      integer      not null encode az64,
    campaign_brand_transaction_count integer      not null encode az64,
    brand                            varchar(765) not null,
    brand_transaction_count          integer      not null encode az64,
    brand_spend                      integer      not null encode az64,
    created_at                       timestamp    not null encode az64,
    updated_at                       timestamp    not null encode az64
);

alter table aggregate_data_campaign_brand_sales
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_campaign_brand_sales to email_collector_1cf3j6;

grant select on aggregate_data_campaign_brand_sales to update_other_carrier_8ecfg9;

grant select on aggregate_data_campaign_brand_sales to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_campaign_brand_sales to redshift_lag_check_bjjncc;

grant select on aggregate_data_campaign_brand_sales to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_campaign_brand_sales to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_campaign_brand_sales to aggregate_sms_data_mn21ig;

grant select on aggregate_data_campaign_brand_sales to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_campaign_brand_sales to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_campaign_brand_sales to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_campaign_brand_sales to update_visit_details_brands_8db5bk;

grant select on aggregate_data_campaign_brand_sales to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_campaign_brand_sales to rails_gd75ob;

grant select on aggregate_data_campaign_brand_sales to t_tnegri_hefdl9;

grant select on aggregate_data_campaign_brand_sales to inteq_user_jl95l5;

grant select on aggregate_data_campaign_brand_sales to gdion_94lj0n;

grant select on aggregate_data_campaign_brand_sales to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_campaign_brand_sales to ghuppert_m8e4d7;

grant select on aggregate_data_campaign_brand_sales to aggregate_push_data_9lmlb8;

grant select on aggregate_data_campaign_brand_sales to aggregate_push_data_dfb2c9;

grant select on aggregate_data_campaign_brand_sales to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_campaign_brand_sales to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_campaign_brand_sales to aggregate_sms_data_fdif4h;

grant select on aggregate_data_campaign_brand_sales to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_campaign_brand_sales to glue_admin_a99j6d;

grant select on aggregate_data_campaign_brand_sales to glue_admin_d3a7h2;

grant select on aggregate_data_campaign_brand_sales to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_campaign_brand_sales to redshift_data_copy_l799nl;

grant select on aggregate_data_campaign_brand_sales to "awsidc:ypark@springbig.com";

grant select on aggregate_data_campaign_brand_sales to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_campaign_redemptions
(
    id               bigint    not null encode az64 distkey
        constraint aggregate_data_campaign_redemptions_aggregate_data_campaign_redemptions_pkey
            primary key,
    created_at       timestamp not null encode az64,
    updated_at       timestamp not null encode az64,
    date_hour        timestamp not null encode az64,
    merchant_id      integer   not null encode az64,
    process_id       integer   not null encode az64,
    process_type_id  integer   not null encode az64,
    redemption_count integer   not null encode az64
)
    sortkey (id);

alter table aggregate_data_campaign_redemptions
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_campaign_redemptions to email_collector_1cf3j6;

grant select on aggregate_data_campaign_redemptions to update_other_carrier_8ecfg9;

grant select on aggregate_data_campaign_redemptions to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_campaign_redemptions to redshift_lag_check_bjjncc;

grant select on aggregate_data_campaign_redemptions to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_campaign_redemptions to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_campaign_redemptions to aggregate_sms_data_mn21ig;

grant select on aggregate_data_campaign_redemptions to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_campaign_redemptions to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_campaign_redemptions to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_campaign_redemptions to update_visit_details_brands_8db5bk;

grant select on aggregate_data_campaign_redemptions to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_campaign_redemptions to rails_gd75ob;

grant select on aggregate_data_campaign_redemptions to t_tnegri_hefdl9;

grant select on aggregate_data_campaign_redemptions to inteq_user_jl95l5;

grant select on aggregate_data_campaign_redemptions to gdion_94lj0n;

grant select on aggregate_data_campaign_redemptions to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_campaign_redemptions to ghuppert_m8e4d7;

grant select on aggregate_data_campaign_redemptions to aggregate_push_data_9lmlb8;

grant select on aggregate_data_campaign_redemptions to aggregate_push_data_dfb2c9;

grant select on aggregate_data_campaign_redemptions to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_campaign_redemptions to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_campaign_redemptions to aggregate_sms_data_fdif4h;

grant select on aggregate_data_campaign_redemptions to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_campaign_redemptions to glue_admin_a99j6d;

grant select on aggregate_data_campaign_redemptions to glue_admin_d3a7h2;

grant select on aggregate_data_campaign_redemptions to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_campaign_redemptions to redshift_data_copy_l799nl;

grant select on aggregate_data_campaign_redemptions to "awsidc:ypark@springbig.com";

grant select on aggregate_data_campaign_redemptions to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_campaign_category_sales
(
    id                                  bigint       not null encode az64
        constraint aggregate_data_campaign_category_sales_primary_aggregate_data_campaign_category_sales
            primary key,
    date_hour                           timestamp    not null encode az64,
    merchant_id                         integer      not null encode az64,
    campaign_id                         integer      not null encode az64,
    campaign_category_transaction_count integer      not null encode az64,
    category                            varchar(765) not null,
    category_transaction_count          integer      not null encode az64,
    category_spend                      integer      not null encode az64,
    created_at                          timestamp    not null encode az64,
    updated_at                          timestamp    not null encode az64
);

alter table aggregate_data_campaign_category_sales
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_campaign_category_sales to email_collector_1cf3j6;

grant select on aggregate_data_campaign_category_sales to update_other_carrier_8ecfg9;

grant select on aggregate_data_campaign_category_sales to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_campaign_category_sales to redshift_lag_check_bjjncc;

grant select on aggregate_data_campaign_category_sales to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_campaign_category_sales to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_campaign_category_sales to aggregate_sms_data_mn21ig;

grant select on aggregate_data_campaign_category_sales to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_campaign_category_sales to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_campaign_category_sales to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_campaign_category_sales to update_visit_details_brands_8db5bk;

grant select on aggregate_data_campaign_category_sales to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_campaign_category_sales to rails_gd75ob;

grant select on aggregate_data_campaign_category_sales to t_tnegri_hefdl9;

grant select on aggregate_data_campaign_category_sales to inteq_user_jl95l5;

grant select on aggregate_data_campaign_category_sales to gdion_94lj0n;

grant select on aggregate_data_campaign_category_sales to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_campaign_category_sales to ghuppert_m8e4d7;

grant select on aggregate_data_campaign_category_sales to aggregate_push_data_9lmlb8;

grant select on aggregate_data_campaign_category_sales to aggregate_push_data_dfb2c9;

grant select on aggregate_data_campaign_category_sales to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_campaign_category_sales to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_campaign_category_sales to aggregate_sms_data_fdif4h;

grant select on aggregate_data_campaign_category_sales to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_campaign_category_sales to glue_admin_a99j6d;

grant select on aggregate_data_campaign_category_sales to glue_admin_d3a7h2;

grant select on aggregate_data_campaign_category_sales to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_campaign_category_sales to redshift_data_copy_l799nl;

grant select on aggregate_data_campaign_category_sales to "awsidc:ypark@springbig.com";

grant select on aggregate_data_campaign_category_sales to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_campaign_spend_buckets
(
    id                       bigint       not null encode az64
        constraint aggregate_data_campaign_spend_buckets_primary_aggregate_data_campaign_spend_buckets
            primary key,
    date_hour                timestamp    not null encode az64,
    merchant_id              integer      not null encode az64,
    campaign_id              integer      not null encode az64,
    spend_bucket             varchar(765) not null,
    bucket_transaction_count integer      not null encode az64,
    bucket_spend             integer      not null encode az64,
    created_at               timestamp    not null encode az64,
    updated_at               timestamp    not null encode az64
);

alter table aggregate_data_campaign_spend_buckets
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_campaign_spend_buckets to email_collector_1cf3j6;

grant select on aggregate_data_campaign_spend_buckets to update_other_carrier_8ecfg9;

grant select on aggregate_data_campaign_spend_buckets to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_campaign_spend_buckets to redshift_lag_check_bjjncc;

grant select on aggregate_data_campaign_spend_buckets to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_campaign_spend_buckets to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_campaign_spend_buckets to aggregate_sms_data_mn21ig;

grant select on aggregate_data_campaign_spend_buckets to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_campaign_spend_buckets to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_campaign_spend_buckets to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_campaign_spend_buckets to update_visit_details_brands_8db5bk;

grant select on aggregate_data_campaign_spend_buckets to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_campaign_spend_buckets to rails_gd75ob;

grant select on aggregate_data_campaign_spend_buckets to t_tnegri_hefdl9;

grant select on aggregate_data_campaign_spend_buckets to inteq_user_jl95l5;

grant select on aggregate_data_campaign_spend_buckets to gdion_94lj0n;

grant select on aggregate_data_campaign_spend_buckets to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_campaign_spend_buckets to ghuppert_m8e4d7;

grant select on aggregate_data_campaign_spend_buckets to aggregate_push_data_9lmlb8;

grant select on aggregate_data_campaign_spend_buckets to aggregate_push_data_dfb2c9;

grant select on aggregate_data_campaign_spend_buckets to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_campaign_spend_buckets to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_campaign_spend_buckets to aggregate_sms_data_fdif4h;

grant select on aggregate_data_campaign_spend_buckets to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_campaign_spend_buckets to glue_admin_a99j6d;

grant select on aggregate_data_campaign_spend_buckets to glue_admin_d3a7h2;

grant select on aggregate_data_campaign_spend_buckets to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_campaign_spend_buckets to redshift_data_copy_l799nl;

grant select on aggregate_data_campaign_spend_buckets to "awsidc:ypark@springbig.com";

grant select on aggregate_data_campaign_spend_buckets to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_campaign_web_clicks
(
    id              bigint    not null encode az64
        constraint aggregate_data_campaign_web_clicks_aggregate_data_campaign_web_clicks_pkey
            primary key,
    created_at      timestamp not null encode az64,
    updated_at      timestamp not null encode az64,
    date_hour       timestamp not null encode az64,
    merchant_id     integer   not null encode az64,
    process_id      integer   not null encode az64,
    process_type_id integer   not null encode az64,
    click_count     integer   not null encode az64
);

alter table aggregate_data_campaign_web_clicks
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_campaign_web_clicks to email_collector_1cf3j6;

grant select on aggregate_data_campaign_web_clicks to update_other_carrier_8ecfg9;

grant select on aggregate_data_campaign_web_clicks to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_campaign_web_clicks to redshift_lag_check_bjjncc;

grant select on aggregate_data_campaign_web_clicks to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_campaign_web_clicks to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_campaign_web_clicks to aggregate_sms_data_mn21ig;

grant select on aggregate_data_campaign_web_clicks to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_campaign_web_clicks to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_campaign_web_clicks to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_campaign_web_clicks to update_visit_details_brands_8db5bk;

grant select on aggregate_data_campaign_web_clicks to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_campaign_web_clicks to rails_gd75ob;

grant select on aggregate_data_campaign_web_clicks to t_tnegri_hefdl9;

grant select on aggregate_data_campaign_web_clicks to inteq_user_jl95l5;

grant select on aggregate_data_campaign_web_clicks to gdion_94lj0n;

grant select on aggregate_data_campaign_web_clicks to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_campaign_web_clicks to ghuppert_m8e4d7;

grant select on aggregate_data_campaign_web_clicks to aggregate_push_data_9lmlb8;

grant select on aggregate_data_campaign_web_clicks to aggregate_push_data_dfb2c9;

grant select on aggregate_data_campaign_web_clicks to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_campaign_web_clicks to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_campaign_web_clicks to aggregate_sms_data_fdif4h;

grant select on aggregate_data_campaign_web_clicks to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_campaign_web_clicks to glue_admin_a99j6d;

grant select on aggregate_data_campaign_web_clicks to glue_admin_d3a7h2;

grant select on aggregate_data_campaign_web_clicks to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_campaign_web_clicks to redshift_data_copy_l799nl;

grant select on aggregate_data_campaign_web_clicks to "awsidc:ypark@springbig.com";

grant select on aggregate_data_campaign_web_clicks to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_conversion_rate
(
    id          bigint       not null encode az64
        constraint aggregate_data_conversion_rate_primary_aggregate_data_conversion_rate
            primary key,
    source_type varchar(765) not null,
    source_id   integer      not null encode az64,
    merchant_id integer      not null encode az64,
    data_type   integer      not null encode az64,
    date_hour   timestamp    not null encode az64,
    count       integer encode az64,
    spend       double precision,
    created_at  timestamp    not null encode az64,
    updated_at  timestamp    not null encode az64,
    units       double precision
);

alter table aggregate_data_conversion_rate
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_conversion_rate to email_collector_1cf3j6;

grant select on aggregate_data_conversion_rate to update_other_carrier_8ecfg9;

grant select on aggregate_data_conversion_rate to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_conversion_rate to redshift_lag_check_bjjncc;

grant select on aggregate_data_conversion_rate to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_conversion_rate to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_conversion_rate to aggregate_sms_data_mn21ig;

grant select on aggregate_data_conversion_rate to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_conversion_rate to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_conversion_rate to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_conversion_rate to update_visit_details_brands_8db5bk;

grant select on aggregate_data_conversion_rate to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_conversion_rate to rails_gd75ob;

grant select on aggregate_data_conversion_rate to t_tnegri_hefdl9;

grant select on aggregate_data_conversion_rate to inteq_user_jl95l5;

grant select on aggregate_data_conversion_rate to gdion_94lj0n;

grant select on aggregate_data_conversion_rate to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_conversion_rate to ghuppert_m8e4d7;

grant select on aggregate_data_conversion_rate to aggregate_push_data_9lmlb8;

grant select on aggregate_data_conversion_rate to aggregate_push_data_dfb2c9;

grant select on aggregate_data_conversion_rate to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_conversion_rate to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_conversion_rate to aggregate_sms_data_fdif4h;

grant select on aggregate_data_conversion_rate to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_conversion_rate to glue_admin_a99j6d;

grant select on aggregate_data_conversion_rate to glue_admin_d3a7h2;

grant select on aggregate_data_conversion_rate to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_conversion_rate to redshift_data_copy_l799nl;

grant select on aggregate_data_conversion_rate to "awsidc:ypark@springbig.com";

grant select on aggregate_data_conversion_rate to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_emails
(
    id           bigint       not null encode az64 distkey
        constraint aggregate_data_emails_primary_aggregate_data_emails
            primary key,
    created_at   timestamp    not null encode az64,
    updated_at   timestamp    not null encode az64,
    date_hour    timestamp    not null encode az64,
    merchant_id  integer      not null encode az64,
    process_type varchar(765) not null,
    sent         integer      not null encode az64,
    credits      integer      not null encode az64
)
    sortkey (id);

alter table aggregate_data_emails
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_emails to email_collector_1cf3j6;

grant select on aggregate_data_emails to update_other_carrier_8ecfg9;

grant select on aggregate_data_emails to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_emails to redshift_lag_check_bjjncc;

grant select on aggregate_data_emails to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_emails to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_emails to aggregate_sms_data_mn21ig;

grant select on aggregate_data_emails to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_emails to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_emails to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_emails to update_visit_details_brands_8db5bk;

grant select on aggregate_data_emails to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_emails to rails_gd75ob;

grant select on aggregate_data_emails to t_tnegri_hefdl9;

grant select on aggregate_data_emails to inteq_user_jl95l5;

grant select on aggregate_data_emails to gdion_94lj0n;

grant select on aggregate_data_emails to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_emails to ghuppert_m8e4d7;

grant select on aggregate_data_emails to aggregate_push_data_9lmlb8;

grant select on aggregate_data_emails to aggregate_push_data_dfb2c9;

grant select on aggregate_data_emails to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_emails to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_emails to aggregate_sms_data_fdif4h;

grant select on aggregate_data_emails to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_emails to glue_admin_a99j6d;

grant select on aggregate_data_emails to glue_admin_d3a7h2;

grant select on aggregate_data_emails to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_emails to redshift_data_copy_l799nl;

grant select on aggregate_data_emails to "awsidc:ypark@springbig.com";

grant select on aggregate_data_emails to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_member_optout_points
(
    id           bigint      not null encode az64 distkey
        constraint aggregate_data_member_optout_points_primary_aggregate_data_member_optout_points
            primary key,
    date_hour    timestamp   not null encode az64,
    merchant_id  integer     not null encode az64,
    point_count  integer     not null encode az64,
    member_count integer     not null encode az64,
    created_at   timestamp   not null encode az64,
    updated_at   timestamp   not null encode az64,
    source_type  varchar(90) not null,
    source_id    integer     not null encode az64
)
    sortkey (id);

alter table aggregate_data_member_optout_points
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_member_optout_points to email_collector_1cf3j6;

grant select on aggregate_data_member_optout_points to update_other_carrier_8ecfg9;

grant select on aggregate_data_member_optout_points to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_member_optout_points to redshift_lag_check_bjjncc;

grant select on aggregate_data_member_optout_points to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_member_optout_points to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_member_optout_points to aggregate_sms_data_mn21ig;

grant select on aggregate_data_member_optout_points to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_member_optout_points to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_member_optout_points to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_member_optout_points to update_visit_details_brands_8db5bk;

grant select on aggregate_data_member_optout_points to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_member_optout_points to rails_gd75ob;

grant select on aggregate_data_member_optout_points to t_tnegri_hefdl9;

grant select on aggregate_data_member_optout_points to inteq_user_jl95l5;

grant select on aggregate_data_member_optout_points to gdion_94lj0n;

grant select on aggregate_data_member_optout_points to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_member_optout_points to ghuppert_m8e4d7;

grant select on aggregate_data_member_optout_points to aggregate_push_data_9lmlb8;

grant select on aggregate_data_member_optout_points to aggregate_push_data_dfb2c9;

grant select on aggregate_data_member_optout_points to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_member_optout_points to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_member_optout_points to aggregate_sms_data_fdif4h;

grant select on aggregate_data_member_optout_points to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_member_optout_points to glue_admin_a99j6d;

grant select on aggregate_data_member_optout_points to glue_admin_d3a7h2;

grant select on aggregate_data_member_optout_points to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_member_optout_points to redshift_data_copy_l799nl;

grant select on aggregate_data_member_optout_points to "awsidc:ypark@springbig.com";

grant select on aggregate_data_member_optout_points to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_member_optout_visits
(
    id           bigint      not null encode az64 distkey
        constraint aggregate_data_member_optout_visits_primary_aggregate_data_member_optout_visits
            primary key,
    date_hour    timestamp   not null encode az64,
    merchant_id  integer     not null encode az64,
    visit_count  integer     not null encode az64,
    member_count integer     not null encode az64,
    created_at   timestamp   not null encode az64,
    updated_at   timestamp   not null encode az64,
    source_type  varchar(90) not null,
    source_id    integer     not null encode az64
)
    sortkey (id);

alter table aggregate_data_member_optout_visits
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_member_optout_visits to email_collector_1cf3j6;

grant select on aggregate_data_member_optout_visits to update_other_carrier_8ecfg9;

grant select on aggregate_data_member_optout_visits to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_member_optout_visits to redshift_lag_check_bjjncc;

grant select on aggregate_data_member_optout_visits to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_member_optout_visits to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_member_optout_visits to aggregate_sms_data_mn21ig;

grant select on aggregate_data_member_optout_visits to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_member_optout_visits to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_member_optout_visits to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_member_optout_visits to update_visit_details_brands_8db5bk;

grant select on aggregate_data_member_optout_visits to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_member_optout_visits to rails_gd75ob;

grant select on aggregate_data_member_optout_visits to t_tnegri_hefdl9;

grant select on aggregate_data_member_optout_visits to inteq_user_jl95l5;

grant select on aggregate_data_member_optout_visits to gdion_94lj0n;

grant select on aggregate_data_member_optout_visits to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_member_optout_visits to ghuppert_m8e4d7;

grant select on aggregate_data_member_optout_visits to aggregate_push_data_9lmlb8;

grant select on aggregate_data_member_optout_visits to aggregate_push_data_dfb2c9;

grant select on aggregate_data_member_optout_visits to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_member_optout_visits to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_member_optout_visits to aggregate_sms_data_fdif4h;

grant select on aggregate_data_member_optout_visits to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_member_optout_visits to glue_admin_a99j6d;

grant select on aggregate_data_member_optout_visits to glue_admin_d3a7h2;

grant select on aggregate_data_member_optout_visits to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_member_optout_visits to redshift_data_copy_l799nl;

grant select on aggregate_data_member_optout_visits to "awsidc:ypark@springbig.com";

grant select on aggregate_data_member_optout_visits to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_data_validate_emails
(
    id               bigint    not null encode az64
        constraint aggregate_data_validate_emails_aggregate_data_validate_emails_pkey
            primary key,
    created_at       timestamp not null encode az64,
    updated_at       timestamp not null encode az64,
    date_day         timestamp not null encode az64,
    merchant_id      integer   not null encode az64,
    validation_count integer   not null encode az64
);

alter table aggregate_data_validate_emails
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_data_validate_emails to email_collector_1cf3j6;

grant select on aggregate_data_validate_emails to update_other_carrier_8ecfg9;

grant select on aggregate_data_validate_emails to pos_integrations_alerts_cijf3e;

grant select on aggregate_data_validate_emails to redshift_lag_check_bjjncc;

grant select on aggregate_data_validate_emails to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_data_validate_emails to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_data_validate_emails to aggregate_sms_data_mn21ig;

grant select on aggregate_data_validate_emails to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_data_validate_emails to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_data_validate_emails to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_data_validate_emails to update_visit_details_brands_8db5bk;

grant select on aggregate_data_validate_emails to update_merchant_member_counts_bj3dm9;

grant select on aggregate_data_validate_emails to rails_gd75ob;

grant select on aggregate_data_validate_emails to t_tnegri_hefdl9;

grant select on aggregate_data_validate_emails to inteq_user_jl95l5;

grant select on aggregate_data_validate_emails to gdion_94lj0n;

grant select on aggregate_data_validate_emails to reporting_y4mc58das_ho8o3n;

grant select on aggregate_data_validate_emails to ghuppert_m8e4d7;

grant select on aggregate_data_validate_emails to aggregate_push_data_9lmlb8;

grant select on aggregate_data_validate_emails to aggregate_push_data_dfb2c9;

grant select on aggregate_data_validate_emails to aggregate_transaction_details_5nhkkg;

grant select on aggregate_data_validate_emails to autoconnects_cache_builder_7h8n39;

grant select on aggregate_data_validate_emails to aggregate_sms_data_fdif4h;

grant select on aggregate_data_validate_emails to analytics_process_incoming_events_oa32mf;

grant select on aggregate_data_validate_emails to glue_admin_a99j6d;

grant select on aggregate_data_validate_emails to glue_admin_d3a7h2;

grant select on aggregate_data_validate_emails to aggregate_campaign_redemptions_c81425;

grant select on aggregate_data_validate_emails to redshift_data_copy_l799nl;

grant select on aggregate_data_validate_emails to "awsidc:ypark@springbig.com";

grant select on aggregate_data_validate_emails to "awsidc:mvizcaino@springbig.com";

create table if not exists aggregate_tpds
(
    id               bigint    not null encode az64
        constraint aggregate_tpds_aggregate_tpds_pkey
            primary key,
    created_at       timestamp not null encode az64,
    updated_at       timestamp not null encode az64,
    date_hour        timestamp encode az64,
    parts_sent       integer encode az64,
    ten_dlc_brand_id integer encode az64,
    carrier_id       integer encode az64
);

alter table aggregate_tpds
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on aggregate_tpds to email_collector_1cf3j6;

grant select on aggregate_tpds to update_other_carrier_8ecfg9;

grant select on aggregate_tpds to pos_integrations_alerts_cijf3e;

grant select on aggregate_tpds to redshift_lag_check_bjjncc;

grant select on aggregate_tpds to aggregate_campaign_brand_sales_imbodm;

grant select on aggregate_tpds to aggregate_campaign_spend_buckets_i6deeb;

grant select on aggregate_tpds to aggregate_sms_data_mn21ig;

grant select on aggregate_tpds to aggregate_campaign_category_sales_ni8ghd;

grant select on aggregate_tpds to aggregate_member_opt_outs_5i1m3o;

grant select on aggregate_tpds to aggregate_transaction_details_for_ads_7bkbd4;

grant select on aggregate_tpds to update_visit_details_brands_8db5bk;

grant select on aggregate_tpds to update_merchant_member_counts_bj3dm9;

grant select on aggregate_tpds to rails_gd75ob;

grant select on aggregate_tpds to t_tnegri_hefdl9;

grant select on aggregate_tpds to inteq_user_jl95l5;

grant select on aggregate_tpds to gdion_94lj0n;

grant select on aggregate_tpds to reporting_y4mc58das_ho8o3n;

grant select on aggregate_tpds to ghuppert_m8e4d7;

grant select on aggregate_tpds to aggregate_push_data_9lmlb8;

grant select on aggregate_tpds to aggregate_push_data_dfb2c9;

grant select on aggregate_tpds to aggregate_transaction_details_5nhkkg;

grant select on aggregate_tpds to autoconnects_cache_builder_7h8n39;

grant select on aggregate_tpds to aggregate_sms_data_fdif4h;

grant select on aggregate_tpds to analytics_process_incoming_events_oa32mf;

grant select on aggregate_tpds to glue_admin_a99j6d;

grant select on aggregate_tpds to glue_admin_d3a7h2;

grant select on aggregate_tpds to aggregate_campaign_redemptions_c81425;

grant select on aggregate_tpds to redshift_data_copy_l799nl;

grant select on aggregate_tpds to "awsidc:ypark@springbig.com";

grant select on aggregate_tpds to "awsidc:mvizcaino@springbig.com";

create table if not exists ai_messages
(
    id                  bigint    not null encode az64 distkey
        constraint ai_messages_ai_messages_pkey
            primary key,
    created_at          timestamp not null encode az64,
    updated_at          timestamp not null encode az64,
    message_template_id bigint encode az64,
    content             varchar(24000),
    status              integer   not null encode az64
)
    sortkey (id);

alter table ai_messages
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on ai_messages to email_collector_1cf3j6;

grant select on ai_messages to update_other_carrier_8ecfg9;

grant select on ai_messages to pos_integrations_alerts_cijf3e;

grant select on ai_messages to redshift_lag_check_bjjncc;

grant select on ai_messages to aggregate_campaign_brand_sales_imbodm;

grant select on ai_messages to aggregate_campaign_spend_buckets_i6deeb;

grant select on ai_messages to aggregate_sms_data_mn21ig;

grant select on ai_messages to aggregate_campaign_category_sales_ni8ghd;

grant select on ai_messages to aggregate_member_opt_outs_5i1m3o;

grant select on ai_messages to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ai_messages to update_visit_details_brands_8db5bk;

grant select on ai_messages to update_merchant_member_counts_bj3dm9;

grant select on ai_messages to rails_gd75ob;

grant select on ai_messages to t_tnegri_hefdl9;

grant select on ai_messages to inteq_user_jl95l5;

grant select on ai_messages to gdion_94lj0n;

grant select on ai_messages to reporting_y4mc58das_ho8o3n;

grant select on ai_messages to ghuppert_m8e4d7;

grant select on ai_messages to aggregate_push_data_9lmlb8;

grant select on ai_messages to aggregate_push_data_dfb2c9;

grant select on ai_messages to aggregate_transaction_details_5nhkkg;

grant select on ai_messages to autoconnects_cache_builder_7h8n39;

grant select on ai_messages to aggregate_sms_data_fdif4h;

grant select on ai_messages to analytics_process_incoming_events_oa32mf;

grant select on ai_messages to glue_admin_a99j6d;

grant select on ai_messages to glue_admin_d3a7h2;

grant select on ai_messages to aggregate_campaign_redemptions_c81425;

grant select on ai_messages to redshift_data_copy_l799nl;

grant select on ai_messages to "awsidc:ypark@springbig.com";

grant select on ai_messages to "awsidc:mvizcaino@springbig.com";

create table if not exists alert_bubbles
(
    id            bigint    not null encode az64
        constraint alert_bubbles_primary_alert_bubbles
            primary key,
    created_at    timestamp not null encode az64,
    updated_at    timestamp not null encode az64,
    alert_type    varchar(765),
    start_at      timestamp encode az64,
    end_at        timestamp encode az64,
    header        varchar(765),
    content       varchar(32768),
    merchant_id   integer encode az64,
    page          varchar(765),
    platform      integer   not null encode az64,
    advertiser_id integer encode az64
);

alter table alert_bubbles
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on alert_bubbles to email_collector_1cf3j6;

grant select on alert_bubbles to update_other_carrier_8ecfg9;

grant select on alert_bubbles to pos_integrations_alerts_cijf3e;

grant select on alert_bubbles to redshift_lag_check_bjjncc;

grant select on alert_bubbles to aggregate_campaign_brand_sales_imbodm;

grant select on alert_bubbles to aggregate_campaign_spend_buckets_i6deeb;

grant select on alert_bubbles to aggregate_sms_data_mn21ig;

grant select on alert_bubbles to aggregate_campaign_category_sales_ni8ghd;

grant select on alert_bubbles to aggregate_member_opt_outs_5i1m3o;

grant select on alert_bubbles to aggregate_transaction_details_for_ads_7bkbd4;

grant select on alert_bubbles to update_visit_details_brands_8db5bk;

grant select on alert_bubbles to update_merchant_member_counts_bj3dm9;

grant select on alert_bubbles to rails_gd75ob;

grant select on alert_bubbles to t_tnegri_hefdl9;

grant select on alert_bubbles to inteq_user_jl95l5;

grant select on alert_bubbles to gdion_94lj0n;

grant select on alert_bubbles to reporting_y4mc58das_ho8o3n;

grant select on alert_bubbles to ghuppert_m8e4d7;

grant select on alert_bubbles to aggregate_push_data_9lmlb8;

grant select on alert_bubbles to aggregate_push_data_dfb2c9;

grant select on alert_bubbles to aggregate_transaction_details_5nhkkg;

grant select on alert_bubbles to autoconnects_cache_builder_7h8n39;

grant select on alert_bubbles to aggregate_sms_data_fdif4h;

grant select on alert_bubbles to analytics_process_incoming_events_oa32mf;

grant select on alert_bubbles to glue_admin_a99j6d;

grant select on alert_bubbles to glue_admin_d3a7h2;

grant select on alert_bubbles to aggregate_campaign_redemptions_c81425;

grant select on alert_bubbles to redshift_data_copy_l799nl;

grant select on alert_bubbles to "awsidc:ypark@springbig.com";

grant select on alert_bubbles to "awsidc:mvizcaino@springbig.com";

create table if not exists announcements
(
    id                bigint    not null encode az64
        constraint announcements_announcements_pkey
            primary key,
    start_at          timestamp encode az64,
    end_at            timestamp encode az64,
    name              varchar(24000),
    learn_more_url    varchar(24000),
    check_it_out_url  varchar(24000),
    notification_type integer encode az64,
    merchant_ids      varchar(32768),
    created_at        timestamp not null encode az64,
    updated_at        timestamp not null encode az64
);

alter table announcements
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on announcements to email_collector_1cf3j6;

grant select on announcements to update_other_carrier_8ecfg9;

grant select on announcements to pos_integrations_alerts_cijf3e;

grant select on announcements to redshift_lag_check_bjjncc;

grant select on announcements to aggregate_campaign_brand_sales_imbodm;

grant select on announcements to aggregate_campaign_spend_buckets_i6deeb;

grant select on announcements to aggregate_sms_data_mn21ig;

grant select on announcements to aggregate_campaign_category_sales_ni8ghd;

grant select on announcements to aggregate_member_opt_outs_5i1m3o;

grant select on announcements to aggregate_transaction_details_for_ads_7bkbd4;

grant select on announcements to update_visit_details_brands_8db5bk;

grant select on announcements to update_merchant_member_counts_bj3dm9;

grant select on announcements to rails_gd75ob;

grant select on announcements to t_tnegri_hefdl9;

grant select on announcements to inteq_user_jl95l5;

grant select on announcements to gdion_94lj0n;

grant select on announcements to reporting_y4mc58das_ho8o3n;

grant select on announcements to ghuppert_m8e4d7;

grant select on announcements to aggregate_push_data_9lmlb8;

grant select on announcements to aggregate_push_data_dfb2c9;

grant select on announcements to aggregate_transaction_details_5nhkkg;

grant select on announcements to autoconnects_cache_builder_7h8n39;

grant select on announcements to aggregate_sms_data_fdif4h;

grant select on announcements to analytics_process_incoming_events_oa32mf;

grant select on announcements to glue_admin_a99j6d;

grant select on announcements to glue_admin_d3a7h2;

grant select on announcements to aggregate_campaign_redemptions_c81425;

grant select on announcements to redshift_data_copy_l799nl;

grant select on announcements to "awsidc:ypark@springbig.com";

grant select on announcements to "awsidc:mvizcaino@springbig.com";

create table if not exists any_link_extensions
(
    id                    bigint         not null encode az64 distkey
        constraint any_link_extensions_primary_any_link_extensions
            primary key,
    created_at            timestamp      not null encode az64,
    updated_at            timestamp      not null encode az64,
    title                 varchar(765)   not null,
    url                   varchar(32768) not null,
    priority              integer        not null encode az64,
    merchant_id           bigint         not null encode az64,
    owner_type            varchar(765)   not null,
    owner_id              bigint         not null encode az64,
    communication_link_id bigint encode az64,
    original_id           bigint encode az64
)
    sortkey (id);

alter table any_link_extensions
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on any_link_extensions to email_collector_1cf3j6;

grant select on any_link_extensions to update_other_carrier_8ecfg9;

grant select on any_link_extensions to pos_integrations_alerts_cijf3e;

grant select on any_link_extensions to redshift_lag_check_bjjncc;

grant select on any_link_extensions to aggregate_campaign_brand_sales_imbodm;

grant select on any_link_extensions to aggregate_campaign_spend_buckets_i6deeb;

grant select on any_link_extensions to aggregate_sms_data_mn21ig;

grant select on any_link_extensions to aggregate_campaign_category_sales_ni8ghd;

grant select on any_link_extensions to aggregate_member_opt_outs_5i1m3o;

grant select on any_link_extensions to aggregate_transaction_details_for_ads_7bkbd4;

grant select on any_link_extensions to update_visit_details_brands_8db5bk;

grant select on any_link_extensions to update_merchant_member_counts_bj3dm9;

grant select on any_link_extensions to rails_gd75ob;

grant select on any_link_extensions to t_tnegri_hefdl9;

grant select on any_link_extensions to inteq_user_jl95l5;

grant select on any_link_extensions to gdion_94lj0n;

grant select on any_link_extensions to reporting_y4mc58das_ho8o3n;

grant select on any_link_extensions to ghuppert_m8e4d7;

grant select on any_link_extensions to aggregate_push_data_9lmlb8;

grant select on any_link_extensions to aggregate_push_data_dfb2c9;

grant select on any_link_extensions to aggregate_transaction_details_5nhkkg;

grant select on any_link_extensions to autoconnects_cache_builder_7h8n39;

grant select on any_link_extensions to aggregate_sms_data_fdif4h;

grant select on any_link_extensions to analytics_process_incoming_events_oa32mf;

grant select on any_link_extensions to glue_admin_a99j6d;

grant select on any_link_extensions to glue_admin_d3a7h2;

grant select on any_link_extensions to aggregate_campaign_redemptions_c81425;

grant select on any_link_extensions to redshift_data_copy_l799nl;

grant select on any_link_extensions to "awsidc:ypark@springbig.com";

grant select on any_link_extensions to "awsidc:mvizcaino@springbig.com";

create table if not exists ar_internal_metadata
(
    key        varchar(765) not null
        constraint ar_internal_metadata_primary_ar_internal_metadata
            primary key,
    value      varchar(765),
    created_at timestamp    not null encode az64,
    updated_at timestamp    not null encode az64
);

alter table ar_internal_metadata
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on ar_internal_metadata to email_collector_1cf3j6;

grant select on ar_internal_metadata to update_other_carrier_8ecfg9;

grant select on ar_internal_metadata to pos_integrations_alerts_cijf3e;

grant select on ar_internal_metadata to redshift_lag_check_bjjncc;

grant select on ar_internal_metadata to aggregate_campaign_brand_sales_imbodm;

grant select on ar_internal_metadata to aggregate_campaign_spend_buckets_i6deeb;

grant select on ar_internal_metadata to aggregate_sms_data_mn21ig;

grant select on ar_internal_metadata to aggregate_campaign_category_sales_ni8ghd;

grant select on ar_internal_metadata to aggregate_member_opt_outs_5i1m3o;

grant select on ar_internal_metadata to aggregate_transaction_details_for_ads_7bkbd4;

grant select on ar_internal_metadata to update_visit_details_brands_8db5bk;

grant select on ar_internal_metadata to update_merchant_member_counts_bj3dm9;

grant select on ar_internal_metadata to rails_gd75ob;

grant select on ar_internal_metadata to t_tnegri_hefdl9;

grant select on ar_internal_metadata to inteq_user_jl95l5;

grant select on ar_internal_metadata to gdion_94lj0n;

grant select on ar_internal_metadata to reporting_y4mc58das_ho8o3n;

grant select on ar_internal_metadata to ghuppert_m8e4d7;

grant select on ar_internal_metadata to aggregate_push_data_9lmlb8;

grant select on ar_internal_metadata to aggregate_push_data_dfb2c9;

grant select on ar_internal_metadata to aggregate_transaction_details_5nhkkg;

grant select on ar_internal_metadata to autoconnects_cache_builder_7h8n39;

grant select on ar_internal_metadata to aggregate_sms_data_fdif4h;

grant select on ar_internal_metadata to analytics_process_incoming_events_oa32mf;

grant select on ar_internal_metadata to glue_admin_a99j6d;

grant select on ar_internal_metadata to glue_admin_d3a7h2;

grant select on ar_internal_metadata to aggregate_campaign_redemptions_c81425;

grant select on ar_internal_metadata to redshift_data_copy_l799nl;

grant select on ar_internal_metadata to "awsidc:ypark@springbig.com";

grant select on ar_internal_metadata to "awsidc:mvizcaino@springbig.com";

create table if not exists attachments
(
    id                bigint       not null encode az64
        constraint attachments_primary_attachments
            primary key,
    created_at        timestamp encode az64,
    updated_at        timestamp encode az64,
    owner_type        varchar(765) not null,
    owner_id          integer      not null encode az64,
    uuid              varchar(765) not null,
    file_file_name    varchar(765),
    file_content_type varchar(765),
    file_file_size    integer encode az64,
    file_updated_at   timestamp encode az64,
    label             varchar(765),
    mms_text          varchar(32768),
    compress_status   integer encode az64,
    image_content     varchar(32768),
    url_count         integer      not null encode az64,
    clicked_count     integer      not null encode az64,
    media_type        integer      not null encode az64,
    permanent         varchar(15)  not null,
    original_id       bigint encode az64
);

alter table attachments
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on attachments to email_collector_1cf3j6;

grant select on attachments to update_other_carrier_8ecfg9;

grant select on attachments to pos_integrations_alerts_cijf3e;

grant select on attachments to redshift_lag_check_bjjncc;

grant select on attachments to aggregate_campaign_brand_sales_imbodm;

grant select on attachments to aggregate_campaign_spend_buckets_i6deeb;

grant select on attachments to aggregate_sms_data_mn21ig;

grant select on attachments to aggregate_campaign_category_sales_ni8ghd;

grant select on attachments to aggregate_member_opt_outs_5i1m3o;

grant select on attachments to aggregate_transaction_details_for_ads_7bkbd4;

grant select on attachments to update_visit_details_brands_8db5bk;

grant select on attachments to update_merchant_member_counts_bj3dm9;

grant select on attachments to rails_gd75ob;

grant select on attachments to t_tnegri_hefdl9;

grant select on attachments to inteq_user_jl95l5;

grant select on attachments to gdion_94lj0n;

grant select on attachments to reporting_y4mc58das_ho8o3n;

grant select on attachments to ghuppert_m8e4d7;

grant select on attachments to aggregate_push_data_9lmlb8;

grant select on attachments to aggregate_push_data_dfb2c9;

grant select on attachments to aggregate_transaction_details_5nhkkg;

grant select on attachments to autoconnects_cache_builder_7h8n39;

grant select on attachments to aggregate_sms_data_fdif4h;

grant select on attachments to analytics_process_incoming_events_oa32mf;

grant select on attachments to glue_admin_a99j6d;

grant select on attachments to glue_admin_d3a7h2;

grant select on attachments to aggregate_campaign_redemptions_c81425;

grant select on attachments to redshift_data_copy_l799nl;

grant select on attachments to "awsidc:ypark@springbig.com";

grant select on attachments to "awsidc:mvizcaino@springbig.com";

create table if not exists audience_conditions
(
    id               bigint         not null encode az64 distkey
        constraint audience_conditions_audience_conditions_pkey
            primary key,
    created_at       timestamp      not null encode az64,
    updated_at       timestamp      not null encode az64,
    audience_rule_id bigint         not null encode az64,
    "primary"        varchar(15)    not null,
    event_type       varchar(24000) not null,
    event_values     varchar(32768) not null,
    deleted_at       timestamp encode az64
)
    sortkey (id);

alter table audience_conditions
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on audience_conditions to email_collector_1cf3j6;

grant select on audience_conditions to update_other_carrier_8ecfg9;

grant select on audience_conditions to pos_integrations_alerts_cijf3e;

grant select on audience_conditions to redshift_lag_check_bjjncc;

grant select on audience_conditions to aggregate_campaign_brand_sales_imbodm;

grant select on audience_conditions to aggregate_campaign_spend_buckets_i6deeb;

grant select on audience_conditions to aggregate_sms_data_mn21ig;

grant select on audience_conditions to aggregate_campaign_category_sales_ni8ghd;

grant select on audience_conditions to aggregate_member_opt_outs_5i1m3o;

grant select on audience_conditions to aggregate_transaction_details_for_ads_7bkbd4;

grant select on audience_conditions to update_visit_details_brands_8db5bk;

grant select on audience_conditions to update_merchant_member_counts_bj3dm9;

grant select on audience_conditions to rails_gd75ob;

grant select on audience_conditions to t_tnegri_hefdl9;

grant select on audience_conditions to inteq_user_jl95l5;

grant select on audience_conditions to gdion_94lj0n;

grant select on audience_conditions to reporting_y4mc58das_ho8o3n;

grant select on audience_conditions to ghuppert_m8e4d7;

grant select on audience_conditions to aggregate_push_data_9lmlb8;

grant select on audience_conditions to aggregate_push_data_dfb2c9;

grant select on audience_conditions to aggregate_transaction_details_5nhkkg;

grant select on audience_conditions to autoconnects_cache_builder_7h8n39;

grant select on audience_conditions to aggregate_sms_data_fdif4h;

grant select on audience_conditions to analytics_process_incoming_events_oa32mf;

grant select on audience_conditions to glue_admin_a99j6d;

grant select on audience_conditions to glue_admin_d3a7h2;

grant select on audience_conditions to aggregate_campaign_redemptions_c81425;

grant select on audience_conditions to redshift_data_copy_l799nl;

grant select on audience_conditions to "awsidc:ypark@springbig.com";

grant select on audience_conditions to "awsidc:mvizcaino@springbig.com";

create table if not exists audience_kpis
(
    id                        bigint         not null encode az64
        constraint audience_kpis_audience_kpis_pkey
            primary key,
    created_at                timestamp      not null encode az64,
    updated_at                timestamp      not null encode az64,
    merchant_id               bigint         not null encode az64,
    audience_id               bigint         not null encode az64,
    date                      date           not null encode az64,
    visit_count               bigint         not null encode az64,
    total_visit_count         bigint         not null encode az64,
    visit_total_spend         numeric(16, 2) not null encode az64,
    member_count              bigint         not null encode az64,
    removed_member_count      bigint         not null encode az64,
    total_member_count        bigint         not null encode az64,
    redemption_count          bigint         not null encode az64,
    redemption_item_value_sum numeric(16, 2) not null encode az64,
    allowed_sms_count         bigint         not null encode az64,
    allowed_email_count       bigint         not null encode az64,
    allowed_push_count        bigint         not null encode az64,
    allowed_loyalty_count     bigint         not null encode az64,
    total_sms_sent            bigint         not null encode az64,
    total_emails_sent         bigint         not null encode az64,
    total_push_sent           bigint         not null encode az64,
    total_marketing_cost      numeric(16, 2) not null encode az64,
    referrals_generated       bigint         not null encode az64,
    referral_revenue          numeric(16, 2) not null encode az64,
    total_visit_spend         numeric(16, 2) not null encode az64,
    sms_sent                  bigint encode az64,
    emails_sent               bigint encode az64,
    push_sent                 bigint encode az64,
    marketing_cost            numeric(16, 2) not null encode az64
);

alter table audience_kpis
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on audience_kpis to email_collector_1cf3j6;

grant select on audience_kpis to update_other_carrier_8ecfg9;

grant select on audience_kpis to pos_integrations_alerts_cijf3e;

grant select on audience_kpis to redshift_lag_check_bjjncc;

grant select on audience_kpis to aggregate_campaign_brand_sales_imbodm;

grant select on audience_kpis to aggregate_campaign_spend_buckets_i6deeb;

grant select on audience_kpis to aggregate_sms_data_mn21ig;

grant select on audience_kpis to aggregate_campaign_category_sales_ni8ghd;

grant select on audience_kpis to aggregate_member_opt_outs_5i1m3o;

grant select on audience_kpis to aggregate_transaction_details_for_ads_7bkbd4;

grant select on audience_kpis to update_visit_details_brands_8db5bk;

grant select on audience_kpis to update_merchant_member_counts_bj3dm9;

grant select on audience_kpis to rails_gd75ob;

grant select on audience_kpis to t_tnegri_hefdl9;

grant select on audience_kpis to inteq_user_jl95l5;

grant select on audience_kpis to gdion_94lj0n;

grant select on audience_kpis to reporting_y4mc58das_ho8o3n;

grant select on audience_kpis to ghuppert_m8e4d7;

grant select on audience_kpis to aggregate_push_data_9lmlb8;

grant select on audience_kpis to aggregate_push_data_dfb2c9;

grant select on audience_kpis to aggregate_transaction_details_5nhkkg;

grant select on audience_kpis to autoconnects_cache_builder_7h8n39;

grant select on audience_kpis to aggregate_sms_data_fdif4h;

grant select on audience_kpis to analytics_process_incoming_events_oa32mf;

grant select on audience_kpis to glue_admin_a99j6d;

grant select on audience_kpis to glue_admin_d3a7h2;

grant select on audience_kpis to aggregate_campaign_redemptions_c81425;

grant select on audience_kpis to redshift_data_copy_l799nl;

grant select on audience_kpis to "awsidc:ypark@springbig.com";

grant select on audience_kpis to "awsidc:mvizcaino@springbig.com";

create table if not exists staging_table
(
    id                 bigint encode az64,
    created_at         timestamp encode az64,
    updated_at         timestamp encode az64,
    merchant_id        integer encode az64,
    content_hash       varchar(256),
    email_template_id  integer encode az64,
    from_email         varchar(256),
    from_name          varchar(256),
    subject            varchar(256),
    layout_html        varchar(65535),
    template_variables varchar(65535)
)
    sortkey (created_at);

alter table staging_table
    owner to sjh38djgslkcb6390ndlge6laj3057fh;

grant select on staging_table to email_collector_1cf3j6;

grant select on staging_table to update_other_carrier_8ecfg9;

grant select on staging_table to pos_integrations_alerts_cijf3e;

grant select on staging_table to redshift_lag_check_bjjncc;

grant select on staging_table to aggregate_campaign_brand_sales_imbodm;

grant select on staging_table to aggregate_campaign_spend_buckets_i6deeb;

grant select on staging_table to aggregate_sms_data_mn21ig;

grant select on staging_table to aggregate_campaign_category_sales_ni8ghd;

grant select on staging_table to aggregate_member_opt_outs_5i1m3o;

grant select on staging_table to aggregate_transaction_details_for_ads_7bkbd4;

grant select on staging_table to update_visit_details_brands_8db5bk;

grant select on staging_table to update_merchant_member_counts_bj3dm9;

grant select on staging_table to rails_gd75ob;

grant select on staging_table to t_tnegri_hefdl9;

grant select on staging_table to jledgard_c3kakb;

grant select on staging_table to inteq_user_jl95l5;

grant select on staging_table to gdion_94lj0n;

grant select on staging_table to reporting_y4mc58das_ho8o3n;

grant select on staging_table to ghuppert_m8e4d7;

grant select on staging_table to aggregate_push_data_9lmlb8;

grant select on staging_table to aggregate_push_data_dfb2c9;

grant select on staging_table to aggregate_transaction_details_5nhkkg;

grant select on staging_table to autoconnects_cache_builder_7h8n39;

grant select on staging_table to aggregate_sms_data_fdif4h;

grant select on staging_table to analytics_process_incoming_events_oa32mf;

grant select on staging_table to glue_admin_a99j6d;

grant select on staging_table to glue_admin_d3a7h2;

grant select on staging_table to aggregate_campaign_redemptions_c81425;

grant select on staging_table to redshift_data_copy_l799nl;

grant select on staging_table to "awsidc:ypark@springbig.com";

grant select on staging_table to "awsidc:mvizcaino@springbig.com";

create or replace function via_discount(character varying) returns double precision
    immutable
    language sql
as
$$
   select
    case
        when $1 like '%\\%' then 0.01*cast(left($1, len($1) - 1) as double precision)
        else cast(coalesce(nullif($1, ''), '0') as double precision)
    end
$$;

create or replace function via_expr_0(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * $2 $$;

create or replace function via_expr_1(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * sign($2) $$;

create or replace function via_expr_2(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 $$;

create or replace function via_expr_3(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select ($1 - via_discount($3)) * $2 $$;

create or replace function via_expr_4(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select ($1 - via_discount($3)) * sign($2) $$;

create or replace function via_expr_5(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * $2 - via_discount($3) $$;

create or replace function via_expr_6(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * sign($2) - via_discount($3) $$;

create or replace function via_expr_7(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 - via_discount($3) $$;

create or replace function via_expr_8(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select ($1 - 0.01*via_discount($3)) * $2 $$;

create or replace function via_expr_9(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select ($1 - 0.01*via_discount($3)) * sign($2) $$;

create or replace function via_expr_10(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select ($1 - via_discount($3) * $1) * $2 $$;

create or replace function via_expr_11(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select ($1 - via_discount($3) * $1) * sign($2) $$;

create or replace function via_expr_12(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * $2 * (1.0 - via_discount($3)) $$;

create or replace function via_expr_13(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * sign($2) * (1.0 - via_discount($3)) $$;

create or replace function via_expr_14(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select $1 * (1.0 - via_discount($3)) $$;

create or replace function via_expr_15(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * $2, 2) $$;

create or replace function via_expr_16(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * sign($2), 2) $$;

create or replace function via_expr_17(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1, 2) $$;

create or replace function via_expr_18(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round(($1 - via_discount($3)) * $2, 2) $$;

create or replace function via_expr_19(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round(($1 - via_discount($3)) * sign($2), 2) $$;

create or replace function via_expr_20(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * $2 - via_discount($3), 2) $$;

create or replace function via_expr_21(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * sign($2) - via_discount($3), 2) $$;

create or replace function via_expr_22(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 - via_discount($3), 2) $$;

create or replace function via_expr_23(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round(($1 - 0.01*via_discount($3)) * $2, 2) $$;

create or replace function via_expr_24(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round(($1 - 0.01*via_discount($3)) * sign($2), 2) $$;

create or replace function via_expr_25(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round(($1 - via_discount($3) * $1) * $2, 2) $$;

create or replace function via_expr_26(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round(($1 - via_discount($3) * $1) * sign($2), 2) $$;

create or replace function via_expr_27(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * $2 * (1.0 - via_discount($3)), 2) $$;

create or replace function via_expr_28(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * sign($2) * (1.0 - via_discount($3)), 2) $$;

create or replace function via_expr_29(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select round($1 * (1.0 - via_discount($3)), 2) $$;

create or replace function via_expr_30(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select 0.2 * $1 * $2 $$;

create or replace function via_expr_31(price double precision, quantity double precision, discount character varying) returns double precision
    immutable
    language sql
as
$$ select 0.4 * $1 * $2 $$;

create or replace procedure pop_brand_map_tmp()
    language plpgsql
as
$$
declare
    curr_id bigint;
begin
    --Note that the brand_norm_id is in the order of len(brand_norm) desc, so that larger patterns are matched before smaller one.
    --If this was not the case, some small patterns will prevent larger ones from being applied.
    curr_id = (select min(brand_norm_id) from springbig_production.brand_map_reversed);
    while curr_id is not null
    loop
        insert into springbig_production.recon_brand_map_tmp
        select detail_id, (select brand_norm
                       from springbig_production.brand_map_reversed
                       where brand_norm_id = curr_id)
        from springbig_production.recon_b_c_n_tmp c
        where brand_norm is null
        and brand is null
        and name like (select '%'||brand_norm||'%'
                       from springbig_production.brand_map_reversed
                       where brand_norm_id = curr_id);

        curr_id = (select min(brand_norm_id) from springbig_production.brand_map_reversed where brand_norm_id > curr_id);
    end loop;
end;
$$;

