#!/bin/bash
MKGMAPJAR="C:\MapTools\mkgmap-r4594\mkgmap.jar"
SPLITTERJAR="C:\MapTools\splitter-r597\splitter.jar"
BOUNDS="C:\MapTools\bounds-latest"
SEA="C:\MapTools\sea-latest\sea"
OPTIONS="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\opentopomap_options"
STYLEFILE="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\opentopomap"
TYPFILETXT="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\typ\opentopomap.txt"
TYPFILE="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\typ\opentopomap.typ"

rm -r "images"
mkdir images
cd images
java -jar $SPLITTERJAR --precomp-sea=$SEA "../sweden-latest.osm.pbf"

sleep 5
