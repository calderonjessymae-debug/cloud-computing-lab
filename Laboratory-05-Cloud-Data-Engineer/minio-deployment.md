# MinIO Deployment

## Introduction

For this laboratory, I deployed MinIO as an object storage server inside a
Docker container. The deployment was performed using the KillerCoda Ubuntu
environment.

## Docker Image

The original laboratory instructions used the `minio/minio` image. However,
the image could not be pulled successfully in my environment. I therefore
used the `elestio/minio` image, which was successfully downloaded from
Docker Hub.

## Download the MinIO Image

I downloaded the MinIO image using:

```bash
docker pull elestio/minio
