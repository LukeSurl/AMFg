#!/bin/bash
bsub -q $1 -n 1 -o $2 -W 2:00 amf.run<<EOF
$3
$4
$5
$6
$7
$8
$9
$10
$11
$12
$13
$14
$15
EOF




