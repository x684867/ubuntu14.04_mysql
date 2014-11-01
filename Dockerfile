# Docker Container for Ubuntu 14.04 x64
# (c) 2014 EdgeCase, Inc.  sam@edgecase.io
# 
FROM x684867/ubuntucore14.04
MAINTAINER Sam Caldwell <mail@samcaldwell.net>
#
# LOCAL_MYSQL_SERVER determines if the mysql server 
#                    will be installed in the same 
#                    container.
#
ENV LOCAL_MYSQL_SERVER 1

ADD files/installMySQLserver /usr/bin/
ADD files/bindAddress.cnf /etc/mysql/conf.d/
ADD files/startServer /usr/bin/


RUN /usr/bin/generateSelfSignedCert
RUN /usr/bin/installMySQLserver
RUN [ "$LOCAL_MYSQL_SERVER" == "1" ] && /usr/bin/installMySQLserver 

EXPOSE 3306

#default command when docker image is run
CMD ["/usr/bin/startServer"]