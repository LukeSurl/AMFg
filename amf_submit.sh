#!/bin/bash
queue=$1
outfile=$2
ASCII_path=$3
dummyfile=$4
day=$5
TGfile=$6
aerofile=$7
TPfile=$8
outhcho=$9
shift
outwscat=$9
shift
outshape=$9
shift
outyear=$9
shift
outmonth=$9
shift
TG_type=$9
shift
FRESCOv5=$9

echo "bsub -q $queue -n 1 -o $outfile -W 2:00 ./amf.run $ASCII_path $dummyfile $day $TGfile $aerofile $TPfile $outhcho $outwscat $outshape $outyear $outmonth $TG_type $FRESCO_v5"

bsub -q $queue -n 1 -o $outfile -W 2:00 ./amf.run $ASCII_path $dummyfile $day $TGfile $aerofile $TPfile $outhcho $outwscat $outshape $outyear $outmonth $TG_type $FRESCO_v5
