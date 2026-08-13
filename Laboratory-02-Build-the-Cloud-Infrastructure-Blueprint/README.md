# Laboratory 02 – Build the Cloud Infrastructure Blueprint

## Mission Overview

The mission of this laboratory was to understand the basic components of cloud infrastructure and how they work together. The laboratory included investigating a Linux cloud server using KillerCoda, identifying compute, storage, networking, and operating system resources, comparing AWS, Microsoft Azure, and Google Cloud Platform, and designing a simple cloud infrastructure.

## Objectives

The objectives of this laboratory were to:

1. Investigate a Linux cloud server using terminal commands.
2. Identify compute, storage, networking, and operating system resources.
3. Understand the purpose of the main cloud infrastructure components.
4. Compare equivalent services provided by AWS, Microsoft Azure, and Google Cloud Platform.
5. Design a simple cloud infrastructure blueprint.
6. Document the laboratory work using Markdown and GitHub.

## Cloud Infrastructure Components

The main cloud infrastructure components identified during the laboratory were:

| Component | Example from KillerCoda | Purpose |
|---|---|---|
| Compute | Intel Xeon E312xx, 1 CPU core | Provides processing power |
| Storage | `/dev/vda1`, 19G | Stores the operating system and files |
| Networking | `enp1s0`, `172.30.1.2` | Provides network communication |
| Operating System | Ubuntu 24.04.4 LTS | Manages system resources and applications |

### Compute

The KillerCoda environment provides an Intel Xeon E312xx processor with one CPU core and approximately 1.9 GiB of RAM. These resources provide the processing and memory needed to run commands and applications.

### Storage

The main storage device is `/dev/vda1`, with a capacity of 19G and an ext4 file system. It provides space for the operating system, applications, and files.

### Networking

The main network interface is `enp1s0` with the IP address `172.30.1.2`. It allows the Linux server to communicate over the network.

### Operating System

The server runs Ubuntu 24.04.4 LTS with Linux kernel version `6.8.0-136-generic`. The operating system manages the available hardware and provides an environment for running applications and commands.

## Tools Used

The following tools were used during the laboratory:

- KillerCoda – Linux cloud environment
- Linux Terminal – Server investigation
- GitHub – Laboratory repository and documentation
- Markdown – Technical documentation
- Draw.io / Diagramming Tool – Cloud infrastructure diagram
- Web Browser – Cloud provider research

## Linux Commands Executed

The following Linux commands were used to investigate the cloud server:

| Command | Purpose |
|---|---|
| `cat /etc/os-release` | Identifies the operating system |
| `uname -r` | Displays the kernel version |
| `lscpu \| grep "Model name"` | Displays the CPU model |
| `nproc` | Displays the number of CPU cores |
| `free -h` | Displays RAM information |
| `df -h` | Displays disk capacity and usage |
| `findmnt` | Displays mounted file systems |
| `hostname` | Displays the hostname |
| `hostname -I` | Displays the IP address |
| `ip addr` | Displays network interfaces and IP addresses |

### Server Investigation Results

| Item | Result |
|---|---|
| Operating System | Ubuntu 24.04.4 LTS |
| Kernel Version | 6.8.0-136-generic |
| CPU Model | Intel Xeon E312xx |
| CPU Cores | 1 |
| Total RAM | 1.9 GiB |
| Disk Capacity | 19G |
| Hostname | ubuntu |
| Main IP Address | 172.30.1.2 |

## Skills Learned

During this laboratory, I learned how to:

- Investigate a Linux cloud server using terminal commands.
- Identify CPU, RAM, storage, and networking resources.
- Check the operating system and Linux kernel version.
- Identify mounted file systems.
- Determine the hostname and IP address of a Linux server.
- Understand the purpose of cloud infrastructure components.
- Compare equivalent services from AWS, Microsoft Azure, and Google Cloud Platform.
- Design a basic cloud infrastructure diagram.
- Organize technical documentation using GitHub and Markdown.

## Challenges Encountered

One challenge was understanding the different Linux commands used to investigate the server. Some commands produced a large amount of information, so I needed to identify the specific values required for the laboratory.

Another challenge was comparing AWS, Microsoft Azure, and Google Cloud Platform because the three providers use different names for similar services. Creating the infrastructure diagram also required deciding how the user, Internet connection, network, compute resource, and storage resource should be connected.

Overall, the laboratory improved my understanding of Linux cloud servers, cloud infrastructure components, cloud provider services, and technical documentation.
