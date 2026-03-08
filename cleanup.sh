#!/bin/bash

echo "======================================"
echo "         CLEANING UP NETDATA          "
echo "======================================"

# Stop Netdata
systemctl stop netdata
systemctl disable netdata

# Remove Netdata
apt-get remove -y netdata netdata-core
apt-get autoremove -y

# Remove config and data files
rm -rf /etc/netdata
rm -rf /var/lib/netdata
rm -rf /var/cache/netdata
rm -rf /var/log/netdata

echo "Netdata removed successfully!"