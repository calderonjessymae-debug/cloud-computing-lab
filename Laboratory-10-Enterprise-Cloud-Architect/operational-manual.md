# CloudNova Enterprise Cloud Infrastructure Operational Manual

## 1. System Overview & Deployment
This document outlines operational workflows for managing the CloudNova multi-tier application stack.

### Launching the Stack
To deploy or start all containerized services, run:
cd ~/cloudnova-stack && docker compose up -d

### Stopping the Stack
To safely stop and clean up running containers, run:
docker compose down

## 2. Firewall & Security Hardening (UFW)
The server enforces a strict firewall configuration allowing only essential administration and application traffic:

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp comment 'SSH Access'
sudo ufw allow 80/tcp comment 'Web Traffic'
sudo ufw allow 8080/tcp comment 'WordPress Port'
sudo ufw enable

To verify active rules and firewall status:
sudo ufw status verbose

## 3. Disaster Recovery & Backup Verification
Database backups are executed automatically via Cron daily at midnight:

- Cron Schedule: 0 0 * * * /home/admin1/cloudnova-stack/automation-script.sh >> /home/admin1/backups/backup.log 2>&1
- Backup Storage Location: /home/admin1/backups/

### Manual Backup Execution & Log Verification
To run a manual database backup or inspect operation logs:
./automation-script.sh
cat /home/admin1/backups/backup.log
ls -lh /home/admin1/backups/
