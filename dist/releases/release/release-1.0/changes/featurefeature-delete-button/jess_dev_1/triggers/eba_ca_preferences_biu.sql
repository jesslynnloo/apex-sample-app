-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763756040 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\triggers\eba_ca_preferences_biu.sql
-- sqlcl_snapshot src/database/jess_dev_1/triggers/eba_ca_preferences_biu.sql:null:603de3f9c81bbf34e1e97c33207816693c65f2a4:create

create or replace editionable trigger eba_ca_preferences_biu before
    insert or update on eba_ca_preferences
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        :new.id := eba_ca.gen_id();
    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created_on := current_timestamp;
    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated_on := current_timestamp;
    end if;

    :new.preference_name := upper(:new.preference_name);
end;
/

alter trigger eba_ca_preferences_biu enable;

