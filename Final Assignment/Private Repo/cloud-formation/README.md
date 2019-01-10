# Cloud Formation Templates

## Description

Cloud formation templates that sets up the AWS infrastructure

## Build

### 0-deploy-vpc-subnet-sg-jenkins.yaml

Deploys a VPC with one public subnet and one EC2 instance for Jenkins with some basic user data (updated with the public key group 1 is using). Template also has SG that opens port 443, 80, 8080, 22. 

Run from command line:

`aws cloudformation create-stack --stack-name p1-s1 --template-body {path to file}0-deploy-vpc-subnet-sg-jenkins.yaml`

### 1-deploy-dev.yaml

Creates an EC2 instance for dev that will be triggered by Jenkins anytime a code change is made to dev branch of public repo (https://github.com/cwmat/csci-91-final-phase1-public/tree/dev)

### 2-deploy-staging.yaml

Creates an EC2 instance for staging that will be triggered by Jenkins after dev tests pass. 
