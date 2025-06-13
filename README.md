# 🚀 AWS EC2 Deployment using Terraform

This project uses **Terraform** to provision an **AWS EC2 Machine**, along with associated resources like a Virtual Network, Subnet, NSG, and Public IP.


## To get hands-on experience, I used GitHub Codespaces, a cloud-based development environment that allowed me to configure my workspace with Terraform and the AWS CLI. Here's a breakdown of the setup steps:

** Installed AWS CLI and Terraform:
I installed AWS CLI to interact with AWS services and Terraform to provision and manage the EC2 instance.

** Configured AWS CLI for Authentication:
Using aws configure, I provided my AWS Access Key ID and Secret Access Key to authenticate with my AWS account. I also specified my preferred region (us-east-1 in this case).

** Created a Terraform Configuration File (main.tf):
The .tf file defines the desired infrastructure. Here’s the content of my main.tf:

provider "aws" {
     region = "us-east-1"  # set your desired AWS region
 }

 resource "aws_instance" "this" {
     ami           = "ami-0866a3c8686eaeeba"  # Amazon Linux 2 AMI
     instance_type = "m5.large"               # Instance type
 }
The provider "aws" block configures Terraform to use the AWS provider and specifies the region.

The aws_instance resource creates an EC2 instance with the specified AMI and instance type.

🚀 Deploying the EC2 Instance
Once the .tf file was ready, I went through these commands in the terminal:

Initialize Terraform:
terraform init
This initializes the workspace, downloading the necessary plugins for AWS.

Plan the Deployment:
terraform plan
This command lets you preview what Terraform will do when you apply the changes.

Apply the Deployment:
terraform apply
Confirming this command allows Terraform to create the EC2 instance based on the configuration file. Within moments, the EC2 instance was deployed!

🌟 Key Takeaways
Understanding Terraform’s Role in IaC: Terraform makes deploying infrastructure as simple as writing code. It’s scalable, reusable, and supports multiple cloud providers.

Simplified Development with GitHub Codespaces: Codespaces provided a quick, cloud-based environment where I could install tools and work directly with Terraform.

Using the AWS CLI for Authentication: With aws configure, managing AWS authentication was straightforward and allowed Terraform to access my AWS account securely.

In just one session, I experienced how Terraform can bring consistency and version control to cloud infrastructure, simplifying complex deployments. This knowledge sets the stage for more advanced configurations and multi-resource deployments in the future!
