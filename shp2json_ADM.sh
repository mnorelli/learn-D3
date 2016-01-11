#!/bin/bash
# Turn Esri shapefile into JSON file
# per Mike Bostock http://bost.ocks.org/mike/map/

ogr2ogr \
  -f GeoJSON \
  -where "ADM0_A3 IN ('GBR', 'IRL')" \
  subunits.json \
  ne_10m_admin_0_map_subunits.shp

# The -where argument implies a filter: only features whose ADM0_A3 property 
# equals "GBR" or "IRL" will be in the output GeoJSON. Here, ADM0 refers to Admin-0, 
# the highest level administrative boundaries, and A3 refers to ISO 3166-1 alpha-3 
# country codes. Despite mapping only the United Kingdom, we need all of Ireland to portray land accurately; 
# otherwise, we might give the mistaken impression that Northern Ireland is an island unto itself!