#!/bin/bash
MKGMAPJAR="C:\MapTools\mkgmap-r4594\mkgmap.jar"
BOUNDS="C:\MapTools\bounds-latest"
SEA="C:\MapTools\sea-latest"
OPTIONS="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\opentopomap_options"
STYLEFILE="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\opentopomap"
TYPFILETXT="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\typ\opentopomap.txt"
TYPFILE="C:\Users\Reedyn\Projects\GarminMaps\OpenTopoMapGarmin\garmin\style\typ\opentopomap.typ"
DATA="images/6324*.pbf"

java -cp $MKGMAPJAR uk.me.parabola.mkgmap.main.TypCompiler $TYPFILETXT $TYPFILE
echo 'Compiled TYPFILE'
rm -r "output/*"
java -jar $MKGMAPJAR -c $OPTIONS --style-file=$STYLEFILE --family-name="Reedyn OSM Map ($(date +"%Y-%m-%d %H:%I"))" --precomp-sea=$SEA --output-dir=output --bounds=$BOUNDS $DATA $TYPFILE
cp "output/gmapsupp.img" "OSM_Sweden_Reedyn.img"
sleep 10
