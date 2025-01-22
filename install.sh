#!/bin/bash
sudo jamf removeFramework
cd /tmp
curl https://github.com/ropelletier/jamf_binary/raw/refs/heads/main/jamf.gz -o jamf.gz
gunzip -fq /tmp/jamf.gz /usr/local/jamf/bin/jamf 
sudo chmod +x /usr/local/jamf/bin/jamf 

sudo ./jamf createConf -url https://rsu87.jamfcloud.com
sudo jamf enroll -prompt
