#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://	codedeploystack-webappdeploymentbucket-p0xxum29tq35/springboot-first-app-0.0.1-SNAPSHOT.jar /usr/local/tomcat9/webapps/


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps