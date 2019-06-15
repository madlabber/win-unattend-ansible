#!/bin/bash

# dd if=/dev/zero of=floppy.flp bs=1k count=1440
# dev=$(hdiutil attach -nomount floppy.dmg)
# newfs_msdos -f 1440 -v floppy $dev


# out=$(hdiutil mountvol $dev) 

# mnt=$(echo $out | cut -d' ' -f2)

# echo $dev
# echo $mnt
# cp autounattend.xml $mnt
# ls $mnt

# hdiutil detach $dev

# rm floppy.flp 
# mv floppy.dmg floppy.flp

mkdir unattend
cp autounattend.xml unattend
hdiutil create -size 1440k -fs "MS-DOS FAT12" -layout NONE -srcfolder unattend -format UDRW -ov floppy.dmg
mv floppy.dmg floppy.flp

