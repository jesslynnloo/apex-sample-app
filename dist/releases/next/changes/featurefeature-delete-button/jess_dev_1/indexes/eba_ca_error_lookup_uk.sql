-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763735552 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_error_lookup_uk.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_error_lookup_uk.sql:null:54fd5e5208d7a5fd7eefc89010ceab33f71c9ddd:create

create unique index eba_ca_error_lookup_uk on
    eba_ca_error_lookup (
        constraint_name,
        language_code
    );

