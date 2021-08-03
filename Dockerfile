#FROM httpd:2.4
FROM:tomcat:8.0.20-jre8
# copy file from jenkins deploy folder to container  image httpd folder.
#COPY /var/lib/jenkins/workspace/docker-pipeline/*.html /usr/local/apache2/htdocs/
#COPY ./Helloword.html /usr/local/apache2/htdocs/
COPY ./Helloword.html /usr/local/tomcat/webapps/
