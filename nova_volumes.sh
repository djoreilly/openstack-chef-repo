#!/bin/bash

# the nova-volumes service needs a LVM volume group named nova-volumes 
echo $0: Setting up nova-volumes volume group

BACKING_FILE=/root/nova_volumes
[ -f $BACKING_FILE ]  || truncate --size 10G $BACKING_FILE
losetup /dev/loop0    || losetup -fv $BACKING_FILE
vgs nova-volumes      || vgcreate nova-volumes /dev/loop0

