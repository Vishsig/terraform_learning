Terraform learning sprint documenting practical AWS Infrastructure as Code (IaC). Progresses from basic syntax to production-ready structure—perfect showcasing S3, EC2, remote state, variables, and file organization.

📋 Day-by-Day Tasks
Day	Focus	Key Learnings	Resources Created
01	Basic Syntax + S3	Providers, aws_s3_bucket, terraform init/plan/apply	S3 bucket
02	Remote Backend	S3 backend setup, DynamoDB lock table, state migration	Remote state bucket
03	Variables + EC2	variables.tf, outputs.tf, tfvars, aws_instance, lock file	EC2 instance
04	File Structure	main.tf, outputs.tf, variables.tf, organized project layout	Complete project template

🚀 Quick Start (Any Day)
bash
cd environments/day01  # Pick your day
terraform init
terraform plan        # Preview changes
terraform apply       # Create (type 'yes')
terraform output      # View results
terraform destroy     # Cleanup (IMPORTANT!)

Prerequisites: AWS CLI configured, Terraform installed, Free Tier account

🏗️ Repository Structure
text
terraform-learning/
├── README.md              # This file
├── environments/
│   ├── day01/            # Basic S3 syntax, S3 bucket setup
│   ├── day02/            # Remote state setup in S3 bucket
│   ├── day03/            # EC2 + variables
│   └── day04/            # Complete file structure
├── screenshots/           # AWS Console proof
└── .gitignore            # Protects .terraform/, tfstate
