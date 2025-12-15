-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763738033 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_users_acc_lvl_idx.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_users_acc_lvl_idx.sql:null:613a6eb698c7de37e62dd1fc70dab5aa233e98f3:create

create index eba_ca_users_acc_lvl_idx on
    eba_ca_users (
        access_level_id
    );

