#!/bin/bash

sudo rpm -Uvh https://repo.zabbix.com/zabbix/7.0/alma/9/x86_64/zabbix-release-latest-7.0.el9.noarch.rpm
sudo dnf clean all
sudo dnf install zabbix-agent -y
sudo systemctl restart zabbix-agent
sudo systemctl enable --now zabbix-agent
