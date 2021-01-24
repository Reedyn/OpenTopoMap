#!/bin/bash
MKGMAPJAR="C:\MapTools\mkgmap-r4594\mkgmap.jar"

java -cp $MKGMAPJAR uk.me.parabola.mkgmap.main.TypCompiler opentopomap.txt opentopomap.typ
echo 'Finished'
sleep 1
