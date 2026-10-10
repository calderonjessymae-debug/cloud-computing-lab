# Docker Compose Guide

## 1. What Does the `services:` Block Do?

The `services:` block defines the containers that Docker Compose manages. In this activity, it contains two services: `database` and `app`. The database service uses the MariaDB image, while the app service uses the Nextcloud image.

## 2. How Does Nextcloud Find the Database?

The Nextcloud container uses the environment variable `MYSQL_HOST=database`. The value `database` matches the service name in the Compose file. Docker Compose provides service-name-based communication on its project network, allowing Nextcloud to locate the MariaDB service.

## 3. What Is the Difference Between `docker run` and `docker-compose up -d`?

The `docker run` command starts and configures an individual container through command-line options. Docker Compose uses a YAML configuration file to define multiple related services and their settings. The command `docker-compose up -d` creates or starts the configured services in the background.

## 4. Database Configuration

The database service uses MariaDB 10.6 and creates a database named `nextcloud_db` with the username `calderon_jessy`. The Nextcloud service uses the same database name, username, and password to connect to MariaDB.

## 5. Commands Used

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose down
```

## Conclusion

Docker Compose simplifies multi-container deployment by keeping service configuration in one YAML file. It makes the application easier to deploy, inspect, stop, and reproduce.
