#!/bin/sh

wget https://github.com/NebraLtd/helium-controllino/files/11020384/takeover-files.tgz
tar -xzf takeover-files.tgz
cd takeover-files
chmod +x takeover
sudo mkdir /mnt/old_root
sudo mount /dev/mmcblk0p2 /mnt/old_root
sudo ./takeover --download-only -c HELIUM-CONTROLLINO.config.json --version 2.113.18
sudo ./takeover -c HELIUM-CONTROLLINO.json --no-os-check --no-nwmgr-check --version 2.113.18 --image balena-cloud-raspberrypi4-64-2.113.18.img.gz --no-ack
