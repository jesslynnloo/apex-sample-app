-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763735404 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_email_group_mbrs_i1.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_email_group_mbrs_i1.sql:null:c47f557553fb30d9692090173b95e1fc4a672bf5:create

create index eba_ca_email_group_mbrs_i1 on
    eba_ca_email_group_mbrs (
        group_id
    );

