#!/bin/bash
# Turn Esri shapefile into JSON file
# per Mike Bostock http://bost.ocks.org/mike/map/

ogr2ogr \
  -f GeoJSON \
  -where "ISO_A2 = 'GB' AND SCALERANK < 8" \
  places.json \
  ne_10m_populated_places.shp

# The places’ properties are (somewhat arbitrarily) different, 
# so the where clause refers to ISO_A2 instead. 
# The SCALERANK filter further whittles the labels down to major cities.