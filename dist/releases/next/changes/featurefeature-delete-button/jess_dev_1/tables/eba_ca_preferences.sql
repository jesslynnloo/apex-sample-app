-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763748852 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\tables\eba_ca_preferences.sql
-- sqlcl_snapshot src/database/jess_dev_1/tables/eba_ca_preferences.sql:null:4b15323a7d697dcc6bd156d482d2fd3cc1f3bf6d:create

create table eba_ca_preferences (
    id               number not null enable,
    preference_name  varchar2(255 byte) not null enable,
    preference_value varchar2(255 byte) not null enable,
    created_by       varchar2(255 byte) not null enable,
    created_on       timestamp(6) with time zone,
    updated_by       varchar2(255 byte),
    updated_on       timestamp(6) with time zone
);

alter table eba_ca_preferences
    add constraint eba_ca_preferences_pk primary key ( id )
        using index enable;

alter table eba_ca_preferences
    add constraint eba_ca_prefs_prefname_ck check ( upper(preference_name) = preference_name ) enable;

