Ubuntu14.04_mysql
=================

This project deploys a mysql server listening on 0.0.0.0 with credentials found at /root/mysql.creds.

Usage:
------
-Build an image from this container.
-The next level image will customize the database(s)
-Then this next level can publish the credentials from /root/mysql.creds 
 to some other distribution point via SSH.

Contents:
---------
31 Oct 2014: Started work.
