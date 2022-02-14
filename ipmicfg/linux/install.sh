#!/bin/bash
# 1. Download ipmicfg from Supermicro from https://www.supermicro.com/SwDownload/SwSelect_Free.aspx?cat=IPMI
downloadDir=~/Download
ipmicfgDir=$downloadDir/IPMICFG
mv IPMICFG*.zip IPMICFG.zip
unzip IPMICFG.zip
mv IPMICFG_* $IPMICFG 
sudo cp $ ipmicfgDir/Linux/64bit/IPMICFG-Linux.x86_64 /usr/local/bin/ipmicfg
sudo chmod 744 /usr/local/bin/ipmicfg
sudo cp ./fanspeed.service /etc/systemd/system/ 
sudo chmod 664 /etc/systemd/system//fanspeed.service
sudo systemctl daemon-reload
sudo systemctl enable fanspeed.service