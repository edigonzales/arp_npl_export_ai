# arp_npl_export_ai

## Laerm

```
java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar \
--dbschema arp_laermempfindlichkeitsstufen_mgdm --models Laermempfindlichkeitsstufen_LV95_V1_1 \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--idSeqMin 1000000000000 \
--createscript arp_laermempfindlichkeitsstufen_mgdm.sql
```






## NPL

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
--idSeqMin 1000000000000 \
--createscript arp_npl_mgdm.sql
```

```
java -jar /Users/stefan/apps/ilivalidator-1.11.9/ilivalidator-1.11.9.jar --config config.toml --allObjectsAccessible Hauptnutzung_CH_V1_1.xml ch.so.arp.npl.mgdm.xtf
```

Ueberlagernd Linie:
```
LINESTRING (2608685.764 1250628.214, 2608685.839 1250628.113, 2608685.916 1250628.013, 2608685.92 1250628.008, 2608685.939 1250627.984, 2608686.044 1250627.851, 2608686.105 1250627.777, 2608686.107 1250627.775, 2608686.115 1250627.766, 2608686.211 1250627.651, 2608686.229 1250627.631, 2608686.284 1250627.566, 2608686.288 1250627.562, 2608686.293 1250627.557, 2608686.396 1250627.44, 2608686.435 1250627.398, 2608686.47 1250627.36, 2608686.487 1250627.342, 2608686.574 1250627.249, 2608686.66 1250627.159, 2608686.77 1250627.048, 2608686.839 1250626.981, 2608686.842 1250626.978, 2608686.845 1250626.975, 2608686.866 1250626.956, 2608686.896 1250626.926, 2608686.974 1250626.852, 2608686.976 1250626.85, 2608686.981 1250626.846, 2608686.991 1250626.837, 2608687.025 1250626.805, 2608687.059 1250626.774, 2608687.066 1250626.767, 2608687.067 1250626.766, 2608687.069 1250626.764, 2608687.202 1250626.645, 2608687.265 1250626.59, 2608687.268 1250626.588, 2608687.275 1250626.582, NaN NaN, NaN NaN, NaN NaN, 2608687.342 1250626.525, NaN NaN, NaN NaN, NaN NaN, 2608687.409 1250626.468, 2608687.434 1250626.446, 2608687.459 1250626.426, 2608687.477 1250626.411, 2608687.481 1250626.408, 2608687.497 1250626.395, 2608687.524 1250626.373, 2608687.542 1250626.358, 2608687.618 1250626.298, 2608687.694 1250626.239, 2608687.9080984876 1250626.077783644, 2608688.12644805 1250625.9223733982, 2608688.348891276 1250625.7728813007, 2608688.575267802 1250625.6294151223, 2608688.80541443 1250625.49207829, 2608689.039165244 1250625.3609698126, 2608689.276351729 1250625.2361842077, 2608689.5168028935 1250625.1178114354, 2608689.7603453933 1250625.0059368322, 2608690.0068036537 1250624.9006410507, 2608690.256 1250624.802, 2608690.507725086 1250624.7100951844, 2608690.761826577 1250624.6249808727, 2608691.0181213315 1250624.5467184107, 2608691.276424625 1250624.475364206, 2608691.5365502867 1250624.4109696865, 2608691.7983108317 1250624.3535812644, 2608692.061517597 1250624.3032403023, 2608692.3259808784 1250624.2599830832, 2608692.5915100635 1250624.2238407847, 2608692.857913774 1250624.1948394561, 2608693.125 1250624.173, 2608693.129 1250624.173, 2608699.453 1250623.768, 2608702.866 1250623.094, 2608715.236 1250620.653, 2608720.42 1250618.913, 2608728.71 1250616.129, 2608728.711 1250616.129, 2608730.01 1250615.693, 2608741.571 1250611.261)
```

```
Error: Nutzungsplanung_LV95_V1_1.Geobasisdaten.Ueberlagernde_Festlegung.Geometrie: Intersection coord1 (2623722.431, 1236213.418), tids 50685, 50685
Error: Nutzungsplanung_LV95_V1_1.Geobasisdaten.Ueberlagernde_Festlegung.Geometrie: Overlay coord1 (2623722.429, 1236213.418), coord2 (2623722.430, 1236213.418), tids 50685, 50685
```