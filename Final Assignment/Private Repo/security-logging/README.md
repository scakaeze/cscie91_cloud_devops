# Security - Logging/Monitoring Scripts

## Description 
These scripts were used to set up the final project logging and monitoring. For production environments, security is a top priority. The team decided to set up logging and monitoring as an above and beyond, practicing DevSecOps. Logs are important for security to see who is accessing the system and also a requirement for audit purposes. It gives us the ability to track what is goin on in all the instances and gives the team the ability to use logs to troubleshoot while retaining transparency of infrastructure events. 

## Contents
* AWS-integration.sh - this script sets up the instance to communicate to the S3 bucket
* GCP-ubuntu-loggingsetup.sh - this script sets up our ansible server to communicate with the S3 bucket
* GCP-CentOs-loggingsetup.sh - this script sets up our prod server to communicate with the S3 bucket 
