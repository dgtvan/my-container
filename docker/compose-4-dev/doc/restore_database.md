# Can not restore databases

## Issue

For whatever reason, I might want to restore a database to the SQL Server. Here are the steps to restore a database.
![SMTP-dotNet-client](/doc/sql_restore_db_issue_1.png)

It turns out that it does not work, error dialogs keeps popping up. These are 3 different error messages I get.
![SMTP-dotNet-client](/doc/sql_restore_db_issue_2.png)
![SMTP-dotNet-client](/doc/sql_restore_db_issue_5.png)
![SMTP-dotNet-client](/doc/sql_restore_db_issue_4.png)

## Solution

1/ The first two errors is about some files that the SQL server expects but they do not exist. The solution is to create an empty file at the location that the server expects.

Because I am running the SQL server inside a container and I binded the SQL server directories to the host (In case you do not understand, you might want to look at the docker compose file `docker-compose.yml`), I can simply create empty files on the host.

![SMTP-dotNet-client](/doc/sql_restore_db_issue_3.png)

2/ The last error is about a restoration option. I simply need to check it before restoring.
![SMTP-dotNet-client](/doc/sql_restore_db_issue_6.png)

3/ Try to restore again, everything should be fine now.
![SMTP-dotNet-client](/doc/sql_restore_db_issue_7.png)