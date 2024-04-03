FROM tomcat:9-jre8

# Set the working directory
WORKDIR /usr/local/tomcat

COPY target/docker-java-sample-webapp-1.0-SNAPSHOT.war webapps/ROOT.war

# Expose the port that Tomcat runs on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
