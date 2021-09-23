# Terraformiaceks


Local enviroment :

Testing for local enviroment:
What  you need:
- Docker installed on your local machine

Instuctions:

Use the image in the public repository

1) Pull the image using the following command:

docker pull public.ecr.aws/m3d7o1k1/prodalsv1:linetenapp

2) Run the image locally on your machine using docker (make sure docker is running)

docker run -d -ti -p 80:80 public.ecr.aws/m3d7o1k1/prodalsv1:linetenapp 

open the web browser and go to 

http://localhost:80

you should see the following message "Welcome from LineTen"

------------------------------

Run the application on EKS via terraform

This is project is about creating and deploying a custom image using Eks and Gitlab pipeline.

But first let do some requirements checks for this project.

What  you need:

- AWS Account
- Gitlab account:
- Terraform installed on your machine
- Docker installed on your machine
- Familiarity with Docker
- Familiarity with Terraform
- Familiarity EKS
- Familiarity with AWS cli
- Faliliatiry with kubectl


First of all we are you going to in open an AWS account (detailed steps how to do it https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/)

Quick tip you should create a separate user account respecing the best practice create a separate account and assign yourself just the essentials permission to access ECR,EKS & IAM


1) Open a new account or use your existing gitlab account

2) Create a new project

3) create a new role on AWS console for the Pipeline to operate

4) assign the variables of the AWS account credentials (just created) to the gitlab pipeline (open your project and go to setting > CICD > variables > add your AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY)

5) create your .ci-gitlab.yml (you can find mine in the project)

6) Register the backend with Gitlab (https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html)

7) run the pipeline with your terraform files that you can find in this project

8) Push the changes

9) Open a merge request, review and approve your changes

10) you can watch Terraform Pipeline provisioning the cluster and ECR to store future images if are willing to use it in the coming future

11) test the endpoint by accessing the loadbalancer address that you can find either via cli 

You can test the loadbalancer listening with the sample app exposed at the following address

a7e0572d382dd42d5a6940741db36746-1847432855.us-east-1.elb.amazonaws.com


The workflow is the following:

Gilab run hosts the backend acts as pipeline for Terraform that provisions all the resources needed that includes Eks cluster and ECR and the IAM role.

There is a file called "Namespaces" there in order to assign the resources to the correct under the same namespace.


