
  INSERT INTO arp_npl_mgdm.geobasisdaten_typ_kt
    (
      acode,
      bezeichnung,
      abkuerzung,
      hauptnutzung_ch
    )
  SELECT
    substring(ilicode FROM 2 FOR 3) AS code, 
    replace(substring(ilicode FROM 6), '_', ' ') AS bezeichnung, 
    substring(ilicode FROM 1 FOR 4) AS abkuerzung,
    hauptnutzung.t_id AS hauptnutzung_ch
  FROM
    arp_npl.nutzungsplanung_np_typ_kanton_grundnutzung AS grundnutzung
    LEFT JOIN 
      arp_npl_mgdm.hauptnutzung_ch_hauptnutzung_ch AS hauptnutzung
      ON hauptnutzung.acode::text = substring(ilicode FROM 2 FOR 2)
;

INSERT INTO arp_npl_mgdm.geobasisdaten_typ 
    (
        t_id,
        acode,
        bezeichnung,
        abkuerzung,
        verbindlichkeit,
        nutzungsziffer,
        nutzungsziffer_art,
        bemerkungen,
        typ_kt 
    )
SELECT 
    typ.t_id,
    typ.code_kommunal AS acode,
    typ.bezeichnung,
    typ.abkuerzung,
    typ.verbindlichkeit,
    typ.nutzungsziffer,
    typ.nutzungsziffer_art,
    typ.bemerkungen,
    typ_kt.t_id
    
FROM
    arp_npl.nutzungsplanung_typ_grundnutzung AS typ
    LEFT JOIN arp_npl_mgdm.geobasisdaten_typ_kt AS typ_kt
    ON typ_kt.acode = substring(typ.typ_kt FROM 2 FOR 3)
;

INSERT INTO arp_npl_mgdm.geobasisdaten_grundnutzung_zonenflaeche 
    (
        t_id,
        geometrie,
        publiziertab,
        rechtsstatus,
        bemerkungen,
        typ
    )
SELECT 
    t_id,
    geometrie,
    publiziertab,
    rechtsstatus,
    bemerkungen,
    typ_grundnutzung
FROM 
    arp_npl.nutzungsplanung_grundnutzung AS grundnutzung
;