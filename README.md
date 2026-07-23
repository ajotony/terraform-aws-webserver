# AWS Infrastructure Provisioning with Terraform

Provisioning a reproducible AWS web server environment using Terraform, Infrastructure as Code (IaC), and automated EC2 bootstrapping with NGINX.

> Developed as my submission for **Week 1 of the HUG Lagos/Ibadan Terraform Challenge**.

---

## 📖 Overview

This project provisions a complete AWS infrastructure for hosting a basic web server using Terraform. The infrastructure is deployed entirely as code and includes networking components, an EC2 instance, and automated server configuration using a `user_data` bootstrap script.

Once deployed, the EC2 instance automatically installs NGINX and serves a custom HTML page.

---

## 🏗️ Architecture

```text
                   Internet
                       │
               Internet Gateway
                       │
                 Route Table
                       │
                 Public Subnet
                       │
              Security Group
           (SSH 22 | HTTP 80)
                       │
          Ubuntu EC2 Instance
                       │
             user_data Bootstrap
                       │
               NGINX Web Server
                       │
             Custom HTML Landing Page
```

---

## ☁️ Infrastructure Provisioned

The following AWS resources are provisioned using Terraform:

- Amazon VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- Ubuntu EC2 Instance
- NGINX Web Server

---

## 📂 Project Structure

```text
terraform-aws-webserver/
├── providers.tf
├── variables.tf
├── network.tf
├── compute.tf
├── outputs.tf
├── userdata.sh
├── terraform.tfvars
├── README.md
├── .gitignore
└── images/
    ├── ec2-running.png
    └── webpage.png
```

---

## ⚙️ Prerequisites

Before deploying this project, ensure you have:

- Terraform
- AWS CLI
- An AWS Account
- Configured AWS credentials
- An existing EC2 Key Pair

---

## 🚀 Deployment

Clone the repository:

```bash
git clone https://github.com/ajotony/terraform-aws-webserver.git
cd terraform-aws-webserver
```

Initialize Terraform:

```bash
terraform init
```

Format and validate the configuration:

```bash
terraform fmt
terraform validate
```

Review the execution plan:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure when no longer needed:

```bash
terraform destroy
```

---

## 🌐 Access the Application

After deployment, Terraform outputs the public IP address of the EC2 instance.

Open your browser and visit:

```text
http://<EC2_PUBLIC_IP>
```

---

## 📸 Screenshots

### AWS EC2 Instance

The EC2 instance successfully provisioned and running on AWS.

<p align="center">
  <img src="images/aws-ec2-instance.png" alt="AWS EC2 Instance" width="900">
</p>

---

### Deployed NGINX Web Server

The NGINX web server automatically configured through the EC2 `user_data` bootstrap script.

<p align="center">
  <img src="images/nginx-homepage.png" alt="NGINX Web Server" width="900">
</p>

---

## 🛠️ Technologies Used

- Terraform
- Amazon Web Services (AWS)
- Amazon EC2
- Amazon VPC
- Ubuntu Server
- NGINX
- Git
- GitHub

---

## 🎯 Key Concepts Demonstrated

- Infrastructure as Code (IaC)
- AWS Networking
- EC2 Provisioning
- VPC Design
- Security Groups
- Resource Dependencies
- Terraform Variables and Outputs
- Automated EC2 Bootstrapping with `user_data`

---

## 💡 Key Takeaways

- Designed and provisioned AWS infrastructure using Terraform.
- Automated server configuration through EC2 `user_data`.
- Built a reproducible infrastructure deployment workflow.
- Applied Infrastructure as Code best practices for cloud resource management.

---

## 👨‍💻 Author

**Anthony Ajibola-Ajo**

- GitHub: https://github.com/Ajotony
- LinkedIn: https://linkedin.com/in/anthony-ajibola-ajo

---

## Acknowledgements

This repository contains my submission for **Week 1 of the HUG Lagos/Ibadan Terraform Challenge**, where the objective was to design and provision a complete AWS web server environment using Terraform while applying Infrastructure as Code (IaC) best practices.