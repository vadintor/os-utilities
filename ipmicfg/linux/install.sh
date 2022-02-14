#!/bin/bash
# 1. Download ipmicfg from Supermicro from https://www.supermicro.com/SwDownload/SwSelect_Free.aspx?cat=IPMI
downloadDir=~/Download
ipmicfgDir=$downloadDir/IPMICFG
binDir=/usr/local/bin/
mv $downloadDir/IPMICFG*.zip  $downloadDir/IPMICFG.zip
unzip $downloadDir/IPMICFG.zip -d $downloadDir
mv $downloadDir/IPMICFG_* $ipmicfgDir
sudo cp $ipmicfgDir/Linux/64bit/IPMICFG-Linux.x86_64 $binDir/ipmicfg
sudo chmod 744 $binDir/ipmicfg
sudo cp ./fanspeed.service /etc/systemd/system/ 
sudo chmod 664 /etc/systemd/system//fanspeed.service
sudo systemctl daemon-reload
sudo systemctl enable fanspeed.service