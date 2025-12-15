-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763735862 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_event_types_cp_idx.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_event_types_cp_idx.sql:null:d17b3ea964d38fcb12c1e806aa9164fbeeb5a869:create

create index eba_ca_event_types_cp_idx on
    eba_ca_event_types (
        color_pref_id
    );

