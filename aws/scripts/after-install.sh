#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-16z7xtprj7sz6/springboot-first-app-0.0.1-SNAPSHOT.jar /usr/local/tomcat9/webapps/springboot-first-app-0.0.1-SNAPSHOT.jar


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps