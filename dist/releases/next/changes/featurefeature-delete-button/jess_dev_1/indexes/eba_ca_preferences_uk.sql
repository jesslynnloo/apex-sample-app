-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763737793 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_preferences_uk.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_preferences_uk.sql:null:b91f750da9fdf45bf46be606a61e7455129e0fda:create

create unique index eba_ca_preferences_uk on
    eba_ca_preferences (
        preference_name
    );

