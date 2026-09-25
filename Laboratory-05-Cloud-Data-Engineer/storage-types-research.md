# Storage Types Research

## Comparison of Cloud Storage Types

| Storage Type   | Description                                                                                                                             | Primary Use Case                                                                      | Cloud Provider Example |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ---------------------- |
| Block Storage  | Stores data in fixed-size blocks that can be attached to a server or virtual machine as storage volumes.                                | Operating systems, databases, and applications that require high-performance storage. | AWS EBS                |
| File Storage   | Stores data as files in a hierarchical directory structure that can be accessed and shared by multiple users or systems.                | Shared files, documents, and applications that require a common file system.          | AWS EFS                |
| Object Storage | Stores data as objects together with their metadata and a unique identifier, making it suitable for large amounts of unstructured data. | Images, videos, backups, documents, and other large collections of unstructured data. | Amazon S3              |

## Why Object Storage Is Suitable for User-Uploaded Images

Object Storage is a suitable choice for the client's photo-sharing application because it is designed to handle large amounts of unstructured data such as images. It allows uploaded photos to be stored as individual objects and accessed through the cloud, making it appropriate for an application that may need to store millions of user-uploaded images.
