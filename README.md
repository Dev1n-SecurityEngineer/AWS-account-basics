# Personal AWS Playground Setup  

This project is about setting up a personal AWS playground environment with best practices and using Terraform for automation.  

## Goals  

1. **Create an IAM user** for personal use.  
2. **Enable MFA** for the root user and disable all root user API keys.  
3. **Set up billing alerts** for anything over a few dollars.  
4. **Configure the AWS CLI** for the IAM user using API credentials.  

## Why Terraform?  

To add an extra layer of complexity and learn more about automation, I decided to use [Terraform](https://www.terraform.io/), a popular Infrastructure as Code (IaC) tool. By managing the setup through Terraform, this project also serves as a hands-on exercise for automating AWS infrastructure with an industry-standard tool.  

## Next Steps  

- Define the Terraform configuration to provision the necessary resources.  
- Validate the setup by testing the IAM user, MFA, and billing alerts.  
- Explore additional Terraform features to expand the playground in the future.  

Let’s build and learn! 🚀  
