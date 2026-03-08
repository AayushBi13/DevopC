#!/bin/bash

echo "======================================"
echo "       TESTING NETDATA DASHBOARD      "
echo "======================================"

# CPU Load
echo "Generating CPU load for 30 seconds..."
for i in 1 2 3 4; do
    dd if=/dev/zero of=/dev/null &
done
sleep 30
kill $(jobs -p)
echo "CPU load test done!"

# Memory Load
echo "Generating memory load..."
stress_mem() {
    local arr=()
    for i in $(seq 1 10000); do
        arr+=("$i")
    done
    sleep 10
}
stress_mem
echo "Memory load test done!"

# Disk I/O Load
echo "Generating Disk I/O load..."
dd if=/dev/zero of=/tmp/testfile bs=1M count=512
rm /tmp/testfile
echo "Disk I/O test done!"

echo "======================================"
echo "Check dashboard at: http://localhost:19999"
echo "======================================"