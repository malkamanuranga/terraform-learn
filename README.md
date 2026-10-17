<div align="center">

# ☁️ AWS Infrastructure as Code with Terraform

**Transitioning from manual "ClickOps" to automated, reproducible infrastructure.**

[![Terraform](https://img.shields.io/badge/Terraform-v1.5+-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![GitHub last commit](https://img.shields.io/github/last-commit/malkamanuranga/terraform-learn?style=for-the-badge&color=blue)](https://github.com/malkamanuranga/terraform-learn)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

</div>

---

## 📖 Project Overview
This repository contains the **Infrastructure as Code (IaC)** configuration to provision a fully functional AWS environment from scratch. 

Instead of manually clicking through the AWS Management Console (which is prone to human error and is not reproducible), this project uses **Terraform** to automatically build and destroy the entire network and compute stack with a single command.


## 🏗️ Architecture Provisioned
This Terraform configuration automatically creates the following AWS resources:
- **VPC (Virtual Private Cloud):** An isolated network for the infrastructure.
- **Public Subnet:** A sub-network for resources that need internet access.
- **Internet Gateway (IGW):** To allow communication between the VPC and the internet.
- **Route Table:** Configured with a `0.0.0.0/0` route pointing to the IGW.
- **Security Group:** Firewall rules allowing SSH (Port 22), HTTP (Port 80), and HTTPS (Port 443).
- **EC2 Instance:** An Ubuntu `t3.micro` server attached to the Security Group and Subnet.

## 🛠️ Tech Stack
- **Infrastructure as Code:** Terraform (HCL)
- **Cloud Provider:** Amazon Web Services (AWS)
- **Compute:** EC2 (Ubuntu)

## 🚀 Getting Started

### Prerequisites
1. Install [Terraform](https://developer.hashicorp.com/terraform/downloads).
2. Install the [AWS CLI](https://aws.amazon.com/cli/) and configure your credentials (`aws configure`).
3. Ensure you have an existing SSH Key Pair in AWS for EC2 access.

### 1. Initialize Terraform
Download the necessary AWS provider plugins:
```bash
terraform init
2. Review the Execution Plan
See exactly what Terraform will create before it does it:

bash
terraform plan
3. Apply the Configuration
Build the infrastructure. Type yes when prompted:

bash
terraform apply
4. Destroy the Infrastructure (⚠️ Important)
To avoid being charged by AWS, always destroy the resources when you are done:

bash
terraform destroy
📁 Repository Structure
text
terraform-learn/
├── .gitignore             # Ignores Terraform state files and downloaded providers
├── .terraform.lock.hcl    # Locks the provider versions for consistency
├── main.tf                # The core Terraform configuration file
└── README.md              # Project documentation
🔒 Security Note
This repository utilizes a .gitignore file to ensure that terraform.tfstate files are never committed to version control. Terraform state files contain sensitive information, including resource IDs and potentially sensitive metadata.

text

---

### Commit and Push it!

Run these exact commands in your terminal:

```powershell
git add README.md
git commit -m "docs: add professional README with architecture details"
git push origin main

