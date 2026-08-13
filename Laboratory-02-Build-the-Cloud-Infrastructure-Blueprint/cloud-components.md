# Cloud Infrastructure Components

## 1. Compute Resources

### Purpose

Compute resources provide the processing capability needed to run applications, services, and operating-system processes. They include resources such as CPU and memory (RAM).

### Importance in Cloud Computing

Compute resources are essential because applications need processing power and memory to execute. Cloud computing allows compute resources to be provided according to workload requirements, making it possible to run applications without owning physical servers.

### Linux Environment

The KillerCoda Linux environment provides the following compute resources:

- CPU Model: Intel Xeon E312xx (Sandy Bridge, IBRS update)
- Number of CPU Cores: 1
- Total RAM: 1.9 GiB

The CPU provides the processing capability for the Ubuntu Linux environment, while RAM provides temporary working memory for running processes and applications.

Commands used:

```bash
lscpu | grep "Model name"
nproc
free -h
