# csci-91-final-phase1-private
This repo holds the  private source code for CSCI-91 final project. The objective of this project is to use DevOps techniques learned in class to develop and maintain an open-source website project that accounts for minimal/no funding. We use CI/CD techniques to build a pipeline for a website that needs a seamless, end-to-end continuous delivery and deployment workflow. A continuous integration pipeline supports test, configuration, and deployment of a website and a continuous delivery pipeline supports automatic building, testing, and release of code changes to production environment. This repo stores the private code that was used by Group 1 to build out the architecture, separating the sensitve data and templates in a separate repository from the open source repository. If you would like to contribute to the open-source project, visit https://github.com/cwmat/csci-91-final-phase1-public. 

## Build

* Use AWS CFT 0-deploy-vpc-subnet-sg-jenkins.yaml in cloud-formation folder to deploy AWS infrastructure. 
* Use GCP templates GCP-ansible-server-v1.yaml and GCP-prod.yaml to configure ansible server and prod in production environment. 
* Update ansible host file for Jenkins IP address and run ansible-playbook jenkins.yaml 
* On GCP prod, run hookapp service for webhook to pull public github and set up prod container
* Create a jenkins pipeline based on the Jenkins configuration file phase1-pipeline
* Jenkins pipeline will automatically build after successful tests from AWS CFTs 1-dev.yaml for dev and 2-staging.yaml for staging upon public repo updates

## Contribute

We invite you to contribute! If you wish to contribute to this open source project, follow these steps:

- Clone the repo if you are a contributor.  Else, fork master https://github.com/cwmat/csci-91-final-phase1-public .
- Create a feature branch and make edits.  Recommend using a GitFlow workflow: https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow
- Commit edits to your feature branch and create pull request to dev branch
- Include these reviewers 
  - Usernamelias
  - cwmat
  - diasyzheng2012
  - cml2197
  - philc171
  - scakaeze
- Once request is approved and merged by reviewer, it will trigger dev branch and it will go through the jenkins CI/CD process 
If success, you will be able to see the changes you made in the github repos and on the prod site .

## Contents 
* ansible folder to hold ansible configuration files 
* cloud-formation folder to hold CloudFormation files that sets up AWS infrastructure 
* GCP-templates that holds the scripts to install docker on VMs
* docker folder that holds the scripts to install docker on VMs 
* jenkins folder that holds the jenkins pipline info 
* security-logging folder that holds logging and monitoring setup for the AWS and GCP environments 

## Authors 
* Charles Mateer
* Christine Liu 
* Jing Jing Zheng
* Stephen Akaeze
* Philip Cunningham
* Elias Falconi 

