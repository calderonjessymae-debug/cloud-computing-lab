# Mission 6: The Cloud Deployment Engineer — Reflection

## 1. How does writing a docker-compose.yml file make a cloud engineer's job easier compared to manually typing commands?

Writing a docker-compose.yml file makes a cloud engineer's job easier because all the important configurations are placed in one file. Instead of typing many commands to create containers and configure their settings separately, I can write the configuration once and use Docker Compose to deploy the services. In this activity, I used one file to define Nextcloud and MariaDB.

I learned that this approach saves time and makes deployment more organized. The file contains the images, database credentials, port mapping, and connection settings needed by the application. If I need to deploy the same setup again, I can reuse the configuration instead of remembering every command. It is also easier to check the file for errors and share it with another developer.

Another thing I learned is that Docker Compose helps make deployments more consistent. When the configuration is written correctly, the services can be created using the same settings each time. This is related to Infrastructure as Code because the infrastructure is described in a file rather than configured entirely through manual steps.

However, I still need to understand the commands and check whether the containers are working correctly. A configuration file cannot automatically solve every problem, especially when there are incorrect credentials, unavailable ports, or database connection errors.

Overall, using Docker Compose helped me understand why cloud engineers use automation. It reduces repetitive work and makes applications easier to manage. As a student, I found it more convenient to configure two connected containers through one file than to set up each container separately. I believe this skill will be useful when working with larger applications and more complex cloud environments.

## 2. What happens if you make an indentation error, like using a Tab instead of Spaces, in a YAML file?

I learned that indentation is very important when creating a YAML configuration file. YAML uses spaces to show the relationship between different settings. In my docker-compose.yml file, the database and app services contain their own images, environment variables, and other configurations. If I place these settings at the wrong indentation level, Docker Compose may not understand the file correctly.

For example, the MYSQL_USER and MYSQL_PASSWORD variables must belong to the correct service. If I accidentally move them outside the service or use a Tab instead of spaces, Docker Compose may display an error when I try to start the application. When this happens, the deployment may fail before the containers are created.

If I encounter an indentation error, I should read the error message carefully and open the file again using Nano. I can check the affected lines, correct the spaces, save the file, and run the Compose command again. I should also compare the structure with a working example instead of randomly changing different settings.

This activity taught me that even a small formatting mistake can prevent an application from starting. Before doing the laboratory, I might have thought that indentation was only important for making code look organized. Now I understand that it can affect how the configuration is interpreted by the software.

I will be more careful when writing YAML files because correct syntax is necessary for successful deployment. Checking indentation before running commands can save time and help avoid unnecessary troubleshooting. I also learned that being patient and checking details are important skills for a cloud engineer.

## 3. Why did we use environment variables, like MYSQL_PASSWORD, in the Compose file?

We used environment variables because the Nextcloud and MariaDB containers need specific configuration values to work together. In this activity, MariaDB needs a database name, username, and password during its initial setup. Nextcloud needs matching database settings so it can connect to the correct database.

The MYSQL_USER variable is set to calderon_jessy in both services. The MYSQL_PASSWORD variable provides the password, while MYSQL_DATABASE identifies the database name. The MYSQL_HOST variable is also important because it tells Nextcloud to connect to the service named database. This allows the application to find MariaDB through the Docker Compose network.

I learned that environment variables make configuration more flexible. Instead of changing the application image, I can provide different settings when deploying it in different environments. For example, a developer can use one database for testing and another for a separate deployment.

However, I also learned that environment variables are not automatically secure. If passwords are written directly in a Compose file and the file is uploaded to a public repository, other people may be able to see them. For a real application, I would use stronger credentials and an appropriate secret-management method. I would also avoid committing sensitive information to GitHub.

For this laboratory, I used the sample credentials provided for the demonstration. The main purpose was to understand how the application and database share configuration information.

Overall, environment variables helped me see how containers receive the information they need to operate. They also showed me that successful deployment depends on using consistent settings. I now understand why configuration and security must both be considered when building cloud applications.

## 4. How did it feel to deploy a fully functional enterprise cloud storage system (Nextcloud) in just a few minutes?

Deploying Nextcloud with MariaDB was a satisfying experience because I could see the result of the commands I entered. At first, I needed to understand how Docker Compose worked and how the two services communicated. After writing the YAML configuration and running the deployment command, I was able to check the containers and access the Nextcloud interface through my browser.

The most interesting part was seeing that the application and database could run in separate containers while still working together. Nextcloud provides the web interface, while MariaDB handles the database. The MYSQL_HOST setting connects the application to the database service. This helped me understand the purpose of a two-tier architecture.

I also realized that deploying an application involves more than entering one command. I needed to check the status of the containers, wait for initialization, and make sure the web interface was accessible. If an error occurred, I would need to examine the logs and check the configuration.

This activity made cloud computing feel more practical to me. Instead of only reading about containers and cloud services, I was able to follow the process myself and observe the outcome. It also showed me how automation can reduce the time needed to deploy an application.

Although the deployment was successful as a laboratory exercise, I understand that a real production system would require additional work. Security, backups, persistent storage, and monitoring are important when storing actual user information.

Overall, I felt more confident because I learned how multiple services can be managed together. This experience encouraged me to continue practicing Docker and other cloud technologies so I can improve my technical skills.

## 5. How has your understanding of Cloud Computing evolved since Mission 1?

Since Mission 1, my understanding of cloud computing has improved because I have learned more about how cloud environments are prepared, configured, and managed. Before completing the different laboratory activities, I mainly understood cloud computing as accessing applications and resources through the internet. Now, I understand that it also involves deploying services, managing infrastructure, checking configurations, and making sure applications work correctly.

In Mission 6, I learned how Nextcloud and MariaDB can run as separate containers and communicate with each other. Nextcloud provides the web interface, while MariaDB stores the database information needed by the application. Docker Compose helps manage both services using one YAML configuration file. This helped me understand Infrastructure as Code and the advantages of automation.

I also learned that the deployment process requires careful checking. After starting the containers, I needed to verify their status and open the correct port to access Nextcloud. If the application failed to load, I would need to check the configuration and logs to identify the problem. These steps taught me that monitoring and troubleshooting are important parts of working with cloud technologies.

Another lesson I gained is that a working application is not automatically secure or ready for real users. A production environment needs appropriate credentials, data persistence, backups, and regular maintenance. These responsibilities are important when managing applications that store information.

Overall, my understanding has changed from simply knowing what cloud computing means to understanding some of the actual processes behind it. Each laboratory activity has helped me develop practical skills and become more comfortable using technical tools. I still have more to learn, but I now have a clearer idea of how cloud engineers deploy and manage applications in an organized and repeatable way.
