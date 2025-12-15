-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763738305 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_users_uk.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_users_uk.sql:null:37947bbaec396eab930a5570481e4cc53e4e435a:create

create unique index eba_ca_users_uk on
    eba_ca_users (
        username
    );

