-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763735710 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_errors_i1.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_errors_i1.sql:null:6a7b7bbd6f719f1e7aff918346ab10827d429700:create

create index eba_ca_errors_i1 on
    eba_ca_errors ( sys_extract_utc(err_time) );

