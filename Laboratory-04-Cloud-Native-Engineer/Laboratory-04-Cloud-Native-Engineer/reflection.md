# Laboratory Activity 04 Mission Reflection

## 1. How does the boot time and setup process of a Docker container compare to installing an operating system on a Virtual Machine?

**Answer:**

The boot time and setup process of a Docker container are much faster compared to installing and running an operating system on a Virtual Machine (VM). When creating a VM, I need to allocate resources such as RAM, CPU, storage, and virtual hardware. I also need to install a complete operating system, configure the system, and wait for the operating system and its services to start. Because of these processes, a VM can take several minutes to boot and requires more system resources.

Docker containers work differently because they do not require a complete guest operating system for every application. Instead, containers share the host operating system kernel while keeping applications isolated from one another. When a Docker image is already available, creating and starting a container can usually be completed within seconds. This makes containers faster and more lightweight than traditional virtual machines.

During the laboratory activity, I learned that Docker focuses on running the application and its necessary dependencies instead of creating an entire virtual computer. This makes the setup process more convenient, especially when developers need to create, test, stop, and remove applications quickly.

Overall, the main difference is that a VM virtualizes an entire computer, while a container provides an isolated environment for an application. VMs can provide stronger separation and are useful when different operating systems are needed, while Docker containers are useful when fast deployment, portability, and efficient resource usage are important.

---

## 2. Why is port mapping (`-p 8080:80`) necessary when running a web server inside a container?

**Answer:**

Port mapping is necessary because a Docker container has its own isolated network environment. When a web server such as Nginx is running inside a container, it may listen on port 80 within the container. However, the container's internal port is not automatically accessible from the host computer. Without port mapping, a user trying to access the web server through the host machine may not be able to connect to it.

The command `-p 8080:80` creates a connection between a port on the host machine and a port inside the container. The first number, `8080`, represents the port on the host computer, while the second number, `80`, represents the port used by the web server inside the container. Therefore, when someone accesses `localhost:8080` on the host machine, Docker forwards the request to port 80 inside the container.

I learned that port mapping is important because containers are designed to be isolated. This isolation provides security and allows multiple containers to run without directly interfering with each other's network environments. At the same time, port mapping gives users a controlled way to access services running inside containers.

For example, if Nginx is running inside a Docker container and port 80 is mapped to port 8080, I can open a browser and enter `http://localhost:8080` to view the web server. This demonstrates how Docker connects an internal container service to the outside world.

Overall, port mapping makes containerized web applications accessible while maintaining network isolation.

---

## 3. What happens to the data inside a container when you use the `docker rm` command?

**Answer:**

When the `docker rm` command is used, the specified Docker container is permanently removed from the system. This means that the container itself and the writable filesystem layer associated with it are deleted. Any temporary files, application changes, configurations, or other data stored only inside that container can be lost after the container is removed.

For example, if I create an Nginx container named `my-nginx-server` and make changes directly inside the container, those changes belong to that particular container. If I stop the container and then execute `docker rm my-nginx-server`, the container is deleted. If I create another container from the same image, it will start with the original contents of the image rather than the changes made inside the previous container.

However, not all Docker data is necessarily deleted when a container is removed. Data stored using Docker volumes or bind mounts can remain because it is stored outside the container's writable layer. This is important for applications such as databases, websites, and other systems that need to preserve information even when containers are replaced.

Through this activity, I learned that containers should generally be treated as temporary or replaceable environments. Important data should not be stored only inside the container. Instead, persistent storage should be used when information needs to survive container deletion.

Overall, `docker rm` removes the container and its temporary writable data, but externally stored data such as information in volumes can remain available. Understanding this behavior is important when managing containerized applications.

---

## 4. How do you think containerization changes the way software developers and IT operations teams work together (DevOps)?

**Answer:**

Containerization changes the way software developers and IT operations teams work together by making application deployment more consistent and easier to manage. In traditional development, an application may work correctly on a developer's computer but fail when moved to another environment because of differences in operating systems, software versions, libraries, or configurations. This can create the common problem of "it works on my machine."

With Docker, developers can package an application together with its required dependencies and configurations into a container image. The same image can then be used by the IT operations team for testing, staging, and production. This creates a more consistent environment across different stages of development.

Containerization also encourages better communication between developers and operations teams. Developers need to understand how their applications will be deployed, while operations teams can use standardized container images instead of manually configuring every server. Both teams can work with the same deployment process and environment specifications.

Another advantage is that containers can be started, stopped, replaced, and scaled quickly. This allows teams to respond more efficiently when an application needs updates or when demand increases. Automated tools can also be used to build and deploy container images as part of a CI/CD pipeline.

From this laboratory activity, I learned that DevOps is not only about using tools but also about improving collaboration and making the development and deployment process more efficient. Containerization helps connect development and operations by providing a consistent way to package, test, and deploy software.

Overall, Docker supports the DevOps approach by improving consistency, collaboration, portability, and deployment speed.

---

## 5. How is your GitHub portfolio evolving?

**Answer:**

My GitHub portfolio is evolving as I continue to add practical activities, projects, documentation, and technical skills that I learn from my IT subjects. Before, I mostly viewed GitHub as a place where programmers store their source code. Through this laboratory activity, I learned that GitHub can also serve as a portfolio that demonstrates my learning process, technical abilities, and completed projects.

In Laboratory Activity 04, I added documentation related to virtualization, containers, Docker commands, container deployment, and container lifecycle management. These activities show that I am gaining practical experience with cloud-native technologies instead of only studying their concepts theoretically. For example, I learned how to use commands such as `docker ps`, `docker stop`, `docker ps -a`, and `docker rm` to manage containers.

My portfolio can also help me track my progress as an IT student. Every laboratory activity and project that I document can become evidence of the skills I have developed. By organizing my repositories with clear README files, Markdown documentation, screenshots, and project files, other people can better understand what I accomplished and how I performed the activities.

As I continue my studies, I plan to add more projects involving web development, databases, mobile applications, cloud technologies, and other IT-related skills. I also want to improve the organization and presentation of my repositories so they look more professional.

Overall, my GitHub portfolio is gradually becoming a collection of my academic experiences and practical skills. It represents my growth as an IT student and can eventually help demonstrate my capabilities when applying for internships or future employment.
