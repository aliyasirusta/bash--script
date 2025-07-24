#!/bin/bash

if [ "$#" -eq 0 ]; then

dizin=$(pwd)


else

dizin=$1

fi

dizin_boyutu=$(du -sh $dizin)
dosya_sayisi=$(ls -A $dizin | wc -l)
en_buyuk_dosya=$(du -h -a  $dizin | sort -r -h | head -2 | tail -1)
en_kucuk_dosya=$(du -h -a  $dizin | sort -h | head -1)
klasor_sayisi=$(find $dizin -type d | wc -l)
dizin_sahibi=$(stat -c '%U' $dizin )
uzantilar=$(find $dizin -type f -name "*.*" | sed -n 's/.*\.//p' | sort | uniq)


echo ""
echo "Dizin:             $dizin"
echo "Dizin Boyutu:      $dizin_boyutu"
echo "Dosya Sayısı:      $dosya_sayisi"
echo "En Büyük Dosya:    $en_buyuk_dosya "
echo "En Küçük Dosya:    $en_kucuk_dosya "
echo "Klasör Sayısı:     $klasor_sayisi"
echo "Dizin Sahibi:      $dizin_sahibi"
echo "Dosya Uzantıları:  $uzantilar"

