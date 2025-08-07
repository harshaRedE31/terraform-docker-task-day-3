Terraform Docker Provisioning Task
The primary objective of this task is to provision a local Docker container using Terraform, demonstrating an understanding of Infrastructure as Code (IaC) principles.



Task Objective
The goal is to write and apply Terraform code that pulls an Nginx image and runs it as a container on the local Docker instance. This demonstrates the core workflow of initializing a Terraform project, planning the changes, applying them, and finally, destroying the created infrastructure.



Tools Used

Terraform 


Docker 

Execution Steps
The infrastructure was provisioned and managed using the standard Terraform workflow. The execution logs, including the output of these commands, are saved in the 

execution.log file.

terraform init

This command initializes the working directory by downloading the required Docker provider plugin specified in the 

main.tf configuration.


terraform plan

This command was used to create an execution plan. It provides a "dry run" to show what resources Terraform would create or modify without making any actual changes to the infrastructure.

terraform apply

This command executed the plan, which involved pulling the 

nginx:latest image and starting the Docker container with the specified port mappings.

terraform state

The 

terraform state command was used to inspect the resources being managed by Terraform, confirming the container and image were tracked in the state file.

terraform destroy

This command was used to tear down and remove all managed infrastructure, ensuring a clean state after the task was completed.
