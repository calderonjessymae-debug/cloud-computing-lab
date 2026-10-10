# Mission 6: The Cloud Deployment Engineer

## Mission Overview

This laboratory activity demonstrates how to deploy a private cloud storage application using Docker Compose. The deployment uses Nextcloud as the web application and MariaDB as the database service. Both services are configured in a single YAML file.

## Objectives

- Understand two-tier application architecture.
- Create a Docker Compose configuration file.
- Deploy Nextcloud and MariaDB as separate containers.
- Access the Nextcloud web interface through port 8080.
- Document the deployment process using Markdown.
- Practice Infrastructure as Code (IaC).

## Commands Executed

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose down
```

## Database Configuration

- Database service: `database`
- Database name: `nextcloud_db`
- Database username: `calderon_jessy`
- Web application: `Nextcloud`
- Database server: `MariaDB`

## Skills Learned

- Docker Compose configuration
- Multi-container deployment
- YAML syntax and indentation
- Database and web application communication
- Linux command-line operations
- Technical documentation
- GitHub portfolio management

## Screenshots

- `screenshots/compose-deployment.png`
- `screenshots/nextcloud-web.png`
- `screenshots/compose-teardown.png`

## Conclusion

This mission helped me understand how Docker Compose can manage multiple containers through a single configuration file. It also allowed me to practice deploying a web application with a separate database service.
