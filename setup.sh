#!/bin/bash

echo "======================================"
echo "        INSTALLING NETDATA            "
echo "======================================"

# Install Netdata
wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh
sh /tmp/netdata-kickstart.sh --non-interactive

# Enable and start Netdata
systemctl enable netdata
systemctl start netdata

# Configure CPU alert (above 80%)
cat >> /etc/netdata/health.d/cpu.conf << EOF

alarm: cpu_usage_high
on: system.cpu
lookup: average -1m percentage except idle
units: %
every: 1m
warn: \$this > 80
crit: \$this > 90
info: CPU usage is high
EOF

systemctl restart netdata

echo "Netdata installed! Access dashboard at: http://localhost:19999"