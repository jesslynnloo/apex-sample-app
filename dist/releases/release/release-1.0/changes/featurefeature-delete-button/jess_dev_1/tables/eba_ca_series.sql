-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763749199 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\tables\eba_ca_series.sql
-- sqlcl_snapshot src/database/jess_dev_1/tables/eba_ca_series.sql:null:1ac7183aa342458130c3de35b030c0e413485402:create

create table eba_ca_series (
    series_id       number not null enable,
    start_date      timestamp(6) with time zone not null enable,
    end_date        timestamp(6) with time zone not null enable,
    recur_freq      varchar2(10 byte) not null enable,
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_series
    add constraint eba_ca_series_pk primary key ( series_id )
        using index enable;

