FROM tomcat:9.0
LABEL maintainer="dhaneeshjadhav@gmail.com"
LABEL application="apache-tomcat"
LABEL environment="testing"
# setting the default working directory
WORKDIR /usr/local/tomcat
# remove the default web apps inside the webapps directory
RUN rm -rf webapps/*
# copy my website into the webapp directory
COPY website.html  webapps/website.html
COPY target/*.war  webapps/ROOT.war
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
