-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763737592 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_notes_i1.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_notes_i1.sql:null:f055676b00b7eebe3b110a6fffba12b04189a418:create

create index eba_ca_notes_i1 on
    eba_ca_notes (
        event_id
    );

