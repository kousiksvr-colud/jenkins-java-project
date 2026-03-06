FROM tomcat:8-jre11

RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Copy index.html
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

EXPOSE 8080

CMD ["catalina.sh", "run"]

