-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763742547 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\ref_constraints\eba_ca_files.eba_ca_events.sql
-- sqlcl_snapshot src/database/jess_dev_1/ref_constraints/eba_ca_files.eba_ca_events.sql:null:8d6b01e6d7591349aa1d214296f059dd76ede6df:create

alter table eba_ca_files
    add
        foreign key ( event_id )
            references eba_ca_events ( event_id )
                on delete cascade
        enable;

