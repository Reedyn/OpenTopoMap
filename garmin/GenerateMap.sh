#!/bin/bash
MKGMAPJAR="C:\MapTools\mkgmap-r4594\mkgmap.jar"
BOUNDS="C:\MapTools\bounds-latest"
SEA="C:\MapTools\sea-latest"
OPTIONS="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\opentopomap_options"
STYLEFILE="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\opentopomap"
TYPFILETXT="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\typ\opentopomap.txt"
TYPFILE="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\typ\opentopomap.typ"
DATA="images/6324*.pbf"
rm -r output
java -jar $MKGMAPJAR -c $OPTIONS --style-file=$STYLEFILE --precomp-sea=$SEA --output-dir=output --bounds=$BOUNDS $DATA $TYPFILE
mv "output/gmapsupp.img" "opentopomap_sweden_reedyn.img"
rm -r output
sleep 5
