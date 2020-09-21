FROM tomcat:7-alpine
MAINTAINER VINAY KUMMI
#COPY ./target/*.war /usr/local/tomcat/webapps/
COPY /home/centos/project-war-file-location/index.jsp /usr/local/tomcat/webapps/
COPY /home/centos/project-war-file-location/app.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
