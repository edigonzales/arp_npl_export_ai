# arp_npl_export_ai

```
java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar \
--dbschema arp_npl --models SO_Nutzungsplanung_20171118 \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--createBasketCol --createDatasetCol \
--createscript arp_npl.sql
```

```
java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar \
--dbschema arp_npl_mgdm --models "Nutzungsplanung_Hauptnutzung_V1_1;Nutzungsplanung_LV95_V1_1" \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--createscript arp_npl_mgdm.sql
```