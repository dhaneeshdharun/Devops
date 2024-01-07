FROM tomcat:latest
COPY **/webapp.war /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
CMD ["catalina.bat start"]
