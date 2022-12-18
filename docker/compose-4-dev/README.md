# Startup

Containers are configured to persist its data, so that data do not get lost when containers are restarted or even deleted and fired up again.
On the host, prepare the following directory structure:

    D:
        DockerVolume
            sqlserver2022
                data
                log
                secrets
                backup
            sqlserver2019
                data
                log
                secrets
                backup
            rabbitmq3.8
            
Now, I can start all or a certain service I want to startup.
```
docker compose -f <DockerCompseFilePath> up -d
docker compose -f <DockerCompseFilePath> up -d <ServiceName>
```

# Known issues and solutions

* [Can not restore database.](doc/restore_database.md)

# Containers

### SQL Server 2022

* Information.
    * Container name: sqlserver2022
    * Login configuration.
        * Server name: localhost,1433
        * Username: sa
        * Password: MyStrong(!)Password

* Data directory binding.
    * The container is preconfigured to mount data folders from the container to host.
    * On the host, prepare folders with the following structure.

            D:
                DockerVolume
                    sqlserver2022
                        data
                        log
                        secrets
                        backup


* Check SQL Server version.
    * Connect to the target server instance and execute the following query.
            
            SELECT @@version

* Known issue: Can not install full-text search. Use the container SQL Server 2019 instead.

![SQL-2022-FTS-FAIL](/doc/sql2022_fts_fail.png)

### SQL Server 2019

* Information.
    * Container name: sqlserver2022
    * Login configuration.
        * Server name: localhost,1444
        * Username: sa
        * Password: MyStrong(!)Password
    * <b>Full-text search is enabled.</b>
<br/>
* Data directory binding.
    * The container is preconfigured to mount data folders from the container to host.
    * On the host, prepare folders with the following structure:

            D:
                DockerVolume
                    sqlserver2019
                        data
                        log
                        secrets
                        backup


* Check SQL Server version.
    * Connect to the target server instance and execute the following query.
            
            SELECT @@version

### SMTP server for local development

* Information.
    * Home: https://github.com/rnwood/smtp4dev
    * Container name: smtp4dev
    * Portal page: localhost:3000
    * Client configuration.
        * Server name: localhost
        * Port: 2525
        * Username: < Empty >
        * Password: < Empty >
        * UseDefaultCredentials: True
        * EnableSSL: False

* dotNet client sample.

![SMTP-dotNet-client](/doc/smtp4dev_dotNet_client.png)

### Rabbit MQ (Version 3.8)

* Information.
    * Home: https://hub.docker.com/r/bitnami/rabbitmq
    * Container name: rabbitmq38
    * Portal page
        * Url: localhost:15672
        * Username: user
        * Password: bitnami
    * Client configuration.
        * Server name: localhost
        * Port: 5672
        
* Data directory binding.
    * The container is preconfigured to mount data folders from the container to host.
    * On the host, prepare folders with the following structure:

            D:
                DockerVolume
                    rabbitmq3.8
