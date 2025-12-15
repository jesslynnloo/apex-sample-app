-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763749747 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\tables\eba_ca_tags_sum.sql
-- sqlcl_snapshot src/database/jess_dev_1/tables/eba_ca_tags_sum.sql:null:fc192f6a3006cf551f0ddb1d82a51b5968feac65:create

create table eba_ca_tags_sum (
    tag       varchar2(255 byte),
    tag_count number
);

alter table eba_ca_tags_sum
    add constraint eba_ca_tags_sum_pk primary key ( tag )
        using index enable;

