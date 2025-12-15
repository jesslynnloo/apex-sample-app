-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763751406 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\triggers\ai_eba_ca_events.sql
-- sqlcl_snapshot src/database/jess_dev_1/triggers/ai_eba_ca_events.sql:null:b194977ef7c3f2a9cebf82c7e3f13052dcd50290:create

create or replace editionable trigger ai_eba_ca_events after
    insert on eba_ca_events
    for each row
begin
    insert into eba_ca_history (
        table_name,
        component_rowkey,
        component_id,
        column_name,
        old_value,
        new_value
    ) values ( 'EVENTS',
               :new.row_key,
               :new.event_id,
               'Event Name ',
               null,
               :new.event_name );

end ai_eba_ca_events;
/

alter trigger ai_eba_ca_events enable;

