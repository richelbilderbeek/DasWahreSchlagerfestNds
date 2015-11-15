#!/bin/bash

# Could not get grit to work
# cd gfx
# ~/devkitPro/devkitARM/bin/grit *.*
# mv *.h ../build
# mv *.s ../build
# cd ..

PICTTOCODE=~/bin/PicToCodeConsole

if [ ! -e $PICTTOCODE ]
then
  echo "FAIL: PicToCode executable not found at path: "$PICTTOCODE
  exit
fi

# Use PicToCode
cd gfx
$PICTTOCODE -f DasWahreSchlagerfestBeer32x32.png -t nds -e picbeer.h -c picbeer.cpp -n PicBeer
$PICTTOCODE -f DasWahreSchlagerfestBratwurst32x32.png -t nds -e picbratwurst.h -c picbratwurst.cpp -n PicBratwurst
$PICTTOCODE -f DasWahreSchlagerfestSmiley32x32.png -t nds -e picempty.h -c picempty.cpp -n PicEmpty
mv *.cpp ../source
mv *.h ../source
cd ..

cd source
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestcursor.h
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestcursor.cpp
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestdisplay.cpp
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestdisplay.h
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestkey.cpp
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestkey.h
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfesttile.h
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfesttile.cpp
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestwidget.cpp
ln -s ../../DasWahreSchlagerfest/daswahreschlagerfestwidget.h
cd ..

make

