-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763737367 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\indexes\eba_ca_note_uk.sql
-- sqlcl_snapshot src/database/jess_dev_1/indexes/eba_ca_note_uk.sql:null:c70ef5f5fa94589e44949d882db741d6b4cb6a75:create

create unique index eba_ca_note_uk on
    eba_ca_notifications (
        notification_name
    );

