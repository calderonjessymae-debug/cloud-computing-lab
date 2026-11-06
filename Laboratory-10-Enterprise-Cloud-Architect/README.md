
# Laboratory 10: Enterprise Cloud Architect Mission

## Overview
Deployment and management of a secure, persistent multi-tier WordPress and MySQL cloud architecture running on Ubuntu Server, featuring dynamic container orchestration, system hardening via UFW firewall, and automated continuous backup scheduling.

## Technical Specifications
- **Host OS:** Ubuntu Server 22.04 LTS (VirtualBox VM)
- **Web Tier:** WordPress Container (Port 8080)
- **Database Tier:** MySQL 8.0 Container with persistent Docker volumes
- **Security:** UFW Firewall (SSH, Port 80/8080 rules applied)
- **Automation:** Bash shell script scheduled via daily Cron job at 12:00 AM

## Directory Structure
- `docker-compose.yml`: Multi-container architecture definition
- `automation-script.sh`: Automated MySQL database backup script
- `operational-manual.md`: Comprehensive enterprise administration guide
- `final-reflection.md`: Technical reflection and lab defense summary
- `architecture-diagram.png`: System layout and traffic flow diagram
