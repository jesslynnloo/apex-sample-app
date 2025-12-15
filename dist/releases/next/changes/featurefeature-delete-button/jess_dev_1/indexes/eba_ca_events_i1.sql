-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763736181 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_events_i1.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_events_i1.sql:null:37d5d6aafe47fc6d6cf95233aef666874125b659:create

create index eba_ca_events_i1 on
    eba_ca_events (
        type_id
    );

