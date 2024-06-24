DevOps Takehome assignment showcase project
By keimaakito@ aka Mauricio Letelier mletelierc at gmail.com

Considerations of the project:
1. Deployed to Google cloud platform, used a test applicatino from Google, deployed a containerized web application to a Google Kubernetes Engine (GKE) Autopilot cluster, and use a Google Spanner database in the backend to store data. The sample application manages a table of game players. You can add and delete players through the app's graphical user interface (GUI).

Endpoint is now live and finally deployed at 

http://34.146.19.68:8000/ Remove the 8000 to access the site, just protecting it from spam/bots/etc. (published at port 80)

The repository of all the source files for the pipelines and source files is here

https://github.com/keimaakito/github-actions-gcp-demo

Infrastructure as code, the terraform files that can be used for rebuilding the cloud objects are stored in the repo in the 
/terraform-export-kabs/ subfolder.

For Continuous integration created a CI pipeline with GitHub actions, that builds and deploys the Docker image of the aplication
to the GCP registry preapred for hosting docker images.

Then this pushed image is now deployed to the EKS kubernetes cluster, with a simplified deployment using autopilot.

For monitoring and logging everything is built in into the GCP components, the basic one, can be enhanced for production support.

As per security so far the consideration used is not storing any keys in the config files in git, rather use github variables for the secrets.
Also did not automatically run the service.yaml part of the GCP deployment in order to not deploy by default the application, did it manually.
But the project can be modified to allow it from the start if needed.



