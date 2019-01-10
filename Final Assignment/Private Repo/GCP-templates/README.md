# GCP templates

## Description 
This folder contains the GCP templates that were used to build the GCP infrastructure for this project 

## Contents
* GCP-ansible-server-v1.yaml - template to create the ansible server
gcloud deployment-manager deployments create ansible --config GCP-ansible-server-v1.yaml 
* GCP-prod.yaml - template to create the production instance
gcloud deployment-manager deployments create production --config GCP-prod.yaml 

