# Storage Types Research

## Introduction

Cloud computing provides different storage technologies for different
requirements. The three major types discussed in this laboratory are block
storage, file storage, and object storage.

## Storage Comparison

| Storage Type | Description | Primary Use Case | Cloud Example |
|---|---|---|---|
| Block Storage | Data is divided into blocks and presented as a storage volume. | Virtual machines, databases, and operating systems. | AWS EBS |
| File Storage | Data is organized into files and directories in a hierarchical file system. | Shared folders and applications requiring shared file access. | AWS EFS |
| Object Storage | Data is stored as objects together with metadata and a unique identifier. | Photos, videos, backups, documents, and archives. | AWS S3 |

## Block Storage

Block storage provides applications with storage volumes that can be treated
like physical disks. It is commonly used when an application requires direct
and consistent access to storage.

A common example is Amazon Elastic Block Store (EBS), which can provide storage
volumes for virtual machines.

## File Storage

File storage organizes information into files and directories. Users and
applications can access files through a shared file system.

File storage is useful when several systems or users need to work with the
same files. Amazon Elastic File System (EFS) is an example of a cloud file
storage service.

## Object Storage

Object storage stores information as individual objects. An object normally
contains the data itself, metadata, and an identifier.

This storage model is particularly useful for large collections of
unstructured information such as photographs, videos, backups, and documents.

Amazon S3 is a widely used example of object storage.

## Recommendation for the Client

For the photo-sharing application, object storage is appropriate because
photos are unstructured files that can be stored independently as objects.
The storage system can also scale as the number of uploaded photos increases.

