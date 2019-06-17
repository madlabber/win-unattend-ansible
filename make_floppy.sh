#!/bin/bash

mkdir unattend
cp autounattend.xml unattend
hdiutil create -size 1440k -fs "MS-DOS FAT12" -layout NONE -srcfolder unattend -format UDRW -ov floppy.dmg
mv floppy.dmg floppy.flp
