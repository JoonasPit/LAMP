# LAMP
Runs a pretty basic LAMP-stack installation on a Salt-based minion. For this to work the master-minion connection needs to be established.
To make this fully funcional you must also run my repo called dbcreate which automatically creates a database inside the installed mariadb-database containing some placeholder information.
## Apache 2 & PHP
This module installs Apache 2 on the minion computer, enables php 7.2 automatically and tests it by creating a quick webpage to run a simple php-connection to the database and list some basic info out of the database.

## Mariadb
The module installs mariadb as mentioned above to test this either run the dbcreate module or insert your own info into the database. Just change the values written in the php-file written in the public_html folder.

