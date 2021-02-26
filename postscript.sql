COMMENT ON SCHEMA 
    arp_npl_mgdm 
IS 
    'Staging-Schema für den Export der Nutzungsplanung gemäss MGDM in geodienste.ch. Kontakt: stefan.ziegler@bd.so.ch'
;
CREATE ROLE arp_npl_mgdm_read
;
GRANT USAGE ON SCHEMA arp_npl_mgdm TO arp_npl_mgdm_read, gretl
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA arp_npl_mgdm TO gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA arp_npl_mgdm TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA arp_npl_mgdm TO arp_npl_mgdm_read
;
GRANT arp_npl_mgdm_read to bjsvw
;