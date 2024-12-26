#!/bin/bash
sudo rpm -Uvh https://repo.zabbix.com/zabbix/7.0/alma/9/x86_64/zabbix-release-latest-7.0.el9.noarch.rpm
sudo dnf clean all 
sudo dnf install zabbix-agent2 zabbix-agent2-plugin-*  -y
sudo systemctl restart zabbix-agent2
sudo systemctl enable --now zabbix-agent2 