#!/bin/bash

# Prompt user for inputs
read -p "Enter Zabbix Version (7.2,7.0..): " ZABBIX_VERSION
read -p "Enter your OS Distribution (alma/rocky/rhel..): " OS_DISTRO
read -p "Enter your OS Version (9,8..): " OS_VERSION

# Install Zabbix repository
sudo rpm -Uvh "https://repo.zabbix.com/zabbix/${ZABBIX_VERSION}/${OS_DISTRO}/${OS_VERSION}/x86_64/zabbix-release-latest-${ZABBIX_VERSION}.el${OS_VERSION}.noarch.rpm"
if [ $? -ne 0 ]; then
    echo "Failed to add Zabbix repository. Please check your inputs and try again."
    exit 1
fi

# Clean up metadata and install Zabbix agent
sudo dnf clean all -y
sudo dnf install zabbix-agent -y
if [ $? -ne 0 ]; then
    echo "Failed to install Zabbix agent. Please check your inputs and try again."
    exit 1
fi

# Restart and enable Zabbix agent
sudo systemctl restart zabbix-agent
sudo systemctl enable --now zabbix-agent

echo "Zabbix agent installation and configuration completed successfully."
