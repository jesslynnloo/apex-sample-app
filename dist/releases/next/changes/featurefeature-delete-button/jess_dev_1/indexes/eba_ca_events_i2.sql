-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763736462 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_events_i2.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_events_i2.sql:null:665140ac67d8f7773ea19d3b38f54f67ae575394:create

create index eba_ca_events_i2 on
    eba_ca_events (
        series_id
    );

