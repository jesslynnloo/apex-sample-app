-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763742751 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\ref_constraints\eba_ca_notes_fk.sql
-- sqlcl_snapshot src/database/jess_dev_1/ref_constraints/eba_ca_notes_fk.sql:null:b6954994629634c256be67307bf31c3feaeed7be:create

alter table eba_ca_notes
    add constraint eba_ca_notes_fk
        foreign key ( event_id )
            references eba_ca_events ( event_id )
                on delete cascade
        enable;

