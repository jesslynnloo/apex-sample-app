-- liquibase formatted sql
-- changeset JESS_DEV_1:1765763741768 stripComments:false  logicalFilePath:featurefeature-delete-button\jess_dev_1\ref_constraints\eba_ca_et_cp_ck.sql
-- sqlcl_snapshot src/database/jess_dev_1/ref_constraints/eba_ca_et_cp_ck.sql:null:52abae8df72f97c861cfaea8ba3547a8fe8f78f1:create

alter table eba_ca_event_types
    add constraint eba_ca_et_cp_ck
        foreign key ( color_pref_id )
            references eba_ca_color_prefs ( id )
        enable;

