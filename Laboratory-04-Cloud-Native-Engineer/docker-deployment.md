# Docker Deployment & Container Lifecycle Documentation

## Docker Commands Executed and Descriptions

The following Docker commands were executed to manage and demonstrate the lifecycle of a container:

### 1. `docker ps`

* **Explanation:** Displays all currently running containers, including their container IDs, image names, creation status, and port mappings.

### 2. `docker stop my-nginx-server`

* **Explanation:** Stops the running `my-nginx-server` container gracefully. The container is stopped but is not deleted, so it can still be started again later.

### 3. `docker ps -a`

* **Explanation:** Lists all containers on the host system, including running, stopped, and exited containers.

### 4. `docker rm my-nginx-server`

* **Explanation:** Permanently removes the stopped `my-nginx-server` container from the local host. Removing the container does not remove the Docker image used to create it.
