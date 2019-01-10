# Jenkins Setup

## Initial Setup

Once Ansible has installed Jenkins go to the public IP for the Jenkins instance on HTTPS (port 443).

![Image 0](doc/00.png?raw=true "Unlock Jenkins")

Next you will need to SSH to the Jenkins instance and:

```sh
sudo su –
cat  /opt/jenkins/secrets/initialAdminPassword
```

and use the resulting password to unlock the Jenkins admin.

Choose to install suggested plugins:

![Image 1](doc/00.png?raw=true "Unlock Jenkins")

Then setup an admin user:

![Image 2](doc/01.png?raw=true "Getting Started")

Use the default Instance Configuration:

![Image 3](doc/02.png?raw=true "Create Admin")

## Install Plugins and Configure Git Webhooks

The Git plugin was installed as part of the suggested plugins.

Also install, Deploy over SSH.

Go to Credentials > System > Global and add a Secret Text entry with your GitHub Access Key.

Go to Manage Jenkins > Configure System.

Scroll down to the GitHub Section and choose to Add a server:

![Image 4](doc/03.png?raw=true "Add GH Server")

Test the connection to make sure it works.

Go to the public repo > Settings > Web Hooks and add a webhook.  
Set the payload URL to the Jenkins server plus “/github-webhook” and the content-type to application/json.
Check Active and then update.

![Image 5](doc/04.png?raw=true "Add Webhook")

You should see a success down below:

![Image 6](doc/05.png?raw=true "Test Webhook")

## Setup Pipeline

Go to Jenkins > New Item and create a Pipeline Project:

![Image 7](doc/06.png?raw=true "Create pipeline")

Configure the pipeline to use the project's public repo and to be triggered by Git webhooks:

![Image 8](doc/07.png?raw=true "Configure pipeline")

Under "Pipeline" you can now add the pipeline script from this repo `phase1-pipeline`.

![Image 9](doc/08.png?raw=true "Add pipeline file")

The pipeline will now run whenever a commit is made to the dev branch of the public repo.