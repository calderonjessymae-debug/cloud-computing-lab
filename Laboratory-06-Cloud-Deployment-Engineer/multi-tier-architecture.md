# Multi-Tier Architecture

## What Is a Two-Tier Architecture?

A two-tier architecture is an application design that separates an application into two main parts: the web/application tier and the database tier. These tiers communicate with each other to provide the services needed by users.

## 1. The Web/Application Tier

The web/application tier handles user requests and provides the interface that users access through a web browser. In this laboratory activity, Nextcloud serves as the web application. It allows users to access a private cloud storage interface through a browser.

## 2. The Database Tier

The database tier stores and manages application data, such as user account information and file metadata. In this activity, MariaDB serves as the database. Nextcloud communicates with MariaDB to store and retrieve the information required by the application.

## 3. Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and maintain. Each service can be configured, monitored, and updated independently. It also creates a clearer separation of responsibilities and helps organize the application infrastructure.

## Conclusion

The Nextcloud and MariaDB deployment demonstrates how two containers work together as a two-tier application. Docker Compose connects the services through a shared application environment and makes the deployment process easier to repeat.
