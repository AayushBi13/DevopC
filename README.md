# DevopC
# Netdata Monitoring Dashboard

A project to set up a basic monitoring dashboard using Netdata with automated 
shell scripts for setup, testing, and cleanup.

## What it does
- Installs and configures Netdata on a Linux system
- Monitors basic system metrics (CPU, memory usage, disk I/O)
- Sets up a CPU alert that triggers above 80%
- Provides scripts to automate setup, testing, and cleanup

## Scripts
- `setup.sh` - Installs and configures Netdata with CPU alerts
- `test_dashboard.sh` - Puts load on the system to test the dashboard
- `cleanup.sh` - Removes Netdata and cleans up the system

## How to Run

### Prerequisites
- A Linux system or Docker container
- Root/sudo access
- Bash shell

### Steps
1. Clone the repo:
   git clone https://github.com/AayushBi13/netdata-monitoring.git

2. Make scripts executable:
   chmod +x setup.sh test_dashboard.sh cleanup.sh

3. Run setup:
   sudo ./setup.sh

4. Access the dashboard:
   http://localhost:19999

5. Test the dashboard:
   sudo ./test_dashboard.sh

6. Cleanup when done:
   sudo ./cleanup.sh

## Alerts
- CPU usage above 80% triggers a warning
- CPU usage above 90% triggers a critical alert

## Project Page
https://roadmap.sh/projects/simple-monitoring-dashboard