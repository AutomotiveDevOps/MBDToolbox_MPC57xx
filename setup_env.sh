#!/usr/bin/env bash

if [ ! -d "MBDToolbox_MPC57xx" ]
then
unzip -o ${MBDTOOLBOX_ZIP}
mv fsroot MBDToolbox_MPC57xx
rm -rf \[Content_Types\].xml metadata/ _rels/
fi
