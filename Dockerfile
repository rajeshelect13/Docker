FROM httpd:2.4
# copy file from jenkins deploy folder to container  image httpd folder.
COPY /var/lib/jenkins/workspace/docker-pipeline/ /usr/local/apache2/htdocs/
#COPY ./Helloword.html /usr/local/apache2/htdocs/
