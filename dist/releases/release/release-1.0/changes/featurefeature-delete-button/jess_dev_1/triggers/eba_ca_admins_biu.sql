-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763754118 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\triggers\eba_ca_admins_biu.sql
-- sqlcl_snapshot src/database/jess_dev_1/triggers/eba_ca_admins_biu.sql:null:7bba7740c491df62c3cc390b60ea7ee606950d16:create

create or replace editionable trigger eba_ca_admins_biu before
    insert or update on eba_ca_admins
    for each row
begin
    if inserting then
        if :new.admin_id is null then
            :new.admin_id := eba_ca_api.gen_id;
        end if;

        :new.created_on := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.last_updated_on := current_timestamp;
        :new.last_updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger eba_ca_admins_biu enable;

