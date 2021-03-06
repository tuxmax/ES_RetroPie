#!/bin/bash

pushd "/home/pi/RetroPie-Setup"

now=`date +%Y%m%d`
outputdir=$(pwd)/bin/$now
outputzip=$outputdir/cores-rpi-$now.zip

#git reset --hard HEAD
#git pull

./build_retropie.sh -u
./build_retropie.sh -b -name=a_retroarch,a_armsneslibretro,a_fbalibretro,a_fceunextlibretro,a_fmsxlibretro,a_gambattelibretro,a_genesislibretro,a_gpsplibretro,a_imamelibretro,a_mednafenpcefastlibretro,a_pcsx_rearmedlibretro,a_picodrivelibretro,a_pocketsneslibretro,a_prboomlibretro,a_snes9xnextlibretro,a_stellalibretro,a_virtualjaguarlibretro,a_yabauselibretro

zip ${outputzip} build_retropie.log -j $outputdir/*.so

popd
