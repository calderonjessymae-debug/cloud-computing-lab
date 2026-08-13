# Cloud Infrastructure Assessment Report

## Server Information

| Resource | Result |
|---|---|
| Operating System | Ubuntu 24.04.4 LTS (Noble Numbat) |
| Kernel Version | 6.8.0-136-generic |
| CPU Model | Intel Xeon E312xx (Sandy Bridge, IBRS update) |
| Number of CPU Cores | 1 |
| Total RAM | 1.9 GiB |
| Disk Capacity | 19G root disk (`/dev/vda1`) |
| Mounted File Systems | `/` (`/dev/vda1`, ext4), `/boot` (`/dev/vda16`, ext4), `/boot/efi` (`/dev/vda15`, vfat), plus system tmpfs/proc/sysfs mounts |
| Hostname | ubuntu |
| IP Address | 172.30.1.2, 172.17.0.1 |

## Commands Used

### Operating System

`cat /etc/os-release`

### Kernel Version

`uname -r`

### CPU Model

`lscpu | grep "Model name"`

### CPU Cores

`nproc`

### RAM

`free -h`

### Disk Capacity

`df -h`

### Mounted File Systems

`findmnt`

### Hostname

`hostname`

### IP Address

`hostname -I`
