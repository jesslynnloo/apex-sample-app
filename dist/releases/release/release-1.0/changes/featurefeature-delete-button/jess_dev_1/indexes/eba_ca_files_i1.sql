-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763736961 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_files_i1.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_files_i1.sql:null:6909132a8f9c451309b414aa5dc718af64251f7b:create

create index eba_ca_files_i1 on
    eba_ca_files (
        event_id
    );

