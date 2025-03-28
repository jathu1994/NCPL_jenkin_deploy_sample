# Use official Tomcat image as base
FROM tomcat:9.0

# Set environment variables
ENV APP_NAME ncpl
ENV DEPLOY_DIR /usr/local/tomcat/webapps

# Copy the built WAR file to Tomcat webapps directory
COPY target/*.war $DEPLOY_DIR/$APP_NAME.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
