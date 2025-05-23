# Infrastructure-Deployment-with-Terraform

# Terraform AWS Infrastructure Deployment

This project uses Terraform to provision an AWS EC2 instance with a web server.

##  Features

- Deploys EC2 instance (Ubuntu)
- Installs NGINX via remote provisioner
- Outputs public IP address

##  Tools Used

- Terraform
- AWS EC2
- SSH (for remote-exec)

##  How to Run

1. Clone this repo
2. Place your private key `demo_key.pem` in the root (never commit it)
3. Run:

```bash
terraform init
terraform plan (Optional)
terraform apply (Confirm with yes when prompted)
