COMMENT ON SCHEMA 
    arp_laermempfindlichkeitsstufen_mgdm 
IS 
    'Staging-Schema für den Export der Lärmempfindlichkeitsstufen gemäss MGDM in geodienste.ch. Kontakt: stefan.ziegler@bd.so.ch'
;
CREATE ROLE arp_laermempfindlichkeitsstufen_mgdm_read
;
GRANT USAGE ON SCHEMA arp_laermempfindlichkeitsstufen_mgdm TO arp_laermempfindlichkeitsstufen_mgdm_read, gretl
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA arp_laermempfindlichkeitsstufen_mgdm TO gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA arp_laermempfindlichkeitsstufen_mgdm TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA arp_laermempfindlichkeitsstufen_mgdm TO arp_laermempfindlichkeitsstufen_mgdm_read
;
GRANT arp_laermempfindlichkeitsstufen_mgdm_read to bjsvw
;