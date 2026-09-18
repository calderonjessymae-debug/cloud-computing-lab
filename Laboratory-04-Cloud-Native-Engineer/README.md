# Laboratory Activity 04: The Cloud-Native Engineer

**Course:** CCM 101 - Cloud Computing Architecture & System Administration
**Author:** JESSY NAE H. CALDERON
**Section:** BSIT 4F
**Institution:** University of Eastern Pangasinan

---

## Mission Overview

This laboratory activity introduces cloud-native containerization principles by transitioning from traditional Virtual Machine (VM) infrastructure to lightweight container deployments using Docker on the KillerCoda platform.

## Objectives

* Differentiate the architecture, performance, and resource utilization between Virtual Machines and Containers.
* Access and navigate a Docker-enabled cloud playground environment using KillerCoda.
* Execute fundamental Docker CLI (Command Line Interface) commands.
* Pull, deploy, test, and manage an Nginx containerized web server.
* Create structured technical documentation and expand the cloud computing portfolio on GitHub.

---

## Technical Reports & Documents

* **VMs vs. Containers:** [`virtualization-vs-containers.md`](./virtualization-vs-containers.md)
* **Docker Deployment & Lifecycle:** [`docker-deployment.md`](./docker-deployment.md)
* **Mission Reflection:** [`reflection.md`](./reflection.md)

---

## Docker Commands Executed

### 1. Environment Verification

* `docker --version` — Displayed the installed Docker client version.
* `docker info` — Verified the operational status of the Docker system engine and daemon.

### 2. Deployment & Testing

* `docker pull nginx` — Downloaded the official Nginx container image from Docker Hub.
* `docker run -d -p 8080:80 --name my-nginx-server nginx` — Deployed an Nginx container in detached mode (`-d`), mapping host port `8080` to container port `80`.
* `curl http://localhost:8080` — Tested local network connectivity and confirmed that the Nginx web server was successfully running.

### 3. Lifecycle Operations

* `docker ps` — Listed active and running containers.
* `docker stop my-nginx-server` — Gracefully stopped the running Nginx container.
* `docker ps -a` — Listed all containers, including stopped containers, to verify the container shutdown.
* `docker rm my-nginx-server` — Permanently removed the Nginx container from the system.

---

## Evidence Screenshots

All command output screenshots are documented in the [`screenshots/`](./screenshots/) directory:

* **Docker Verification:** `screenshots/docker-version.png`
* **Nginx Deployment Output:** `screenshots/nginx-running.png`
* **Container Lifecycle Execution:** `screenshots/container-lifecycle.png`

---

## Skills Learned

* Basic container management using the Docker Command Line Interface.
* Understanding Network Address Translation (NAT) and port binding between the host and isolated container environments using the `host_port:container_port` format.
* Managing container application lifecycle states, including Pull, Run, Inspect, Stop, and Remove.
* Understanding the basic deployment and testing of an Nginx web server inside a Docker container.
* Writing structured Markdown documentation for cloud computing and system administration tasks.
* Organizing technical evidence and documentation in a GitHub repository.

---

## Challenges Encountered

* Understanding port mapping mechanics and ensuring that host ports correctly route traffic to services running inside isolated container environments.
* Learning the differences between Virtual Machines and containers, particularly in terms of resource usage, boot time, and isolation.
* Understanding the Docker container lifecycle and the difference between stopping and removing a container.
* Organizing command outputs, screenshots, and technical documentation into a clear GitHub portfolio structure.


