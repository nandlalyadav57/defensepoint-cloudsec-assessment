## Overview
Deploy a security monitoring infrastructure in AWS using Terraform and Docker Compose. Includes VPC setup, EC2 deployment, and Wazuh agent with basic logging.

## Setup Instructions
1. Set AWS credentials in your shell or AWS profile.
2. Edit `variables.tf` to set region and S3 bucket.
3. Run Terraform:
```bash
cd terraform
terraform init
terraform apply
```
4. Use AWS Session Manager to connect to EC2.
5. Run setup script (auto run if configured in Terraform `user_data`).

## Access Info
- No public IP. Access via **AWS Session Manager** only.
- Wazuh API listens on internal port `55000`.

## Testing
```bash
sudo docker ps
curl http://localhost:55000
```

## Cleanup
```bash
terraform destroy
```

## Notes
- IAM least privilege followed
- Private subnet + NAT for secure networking
- Docker healthchecks included
- Logging via Docker + Wazuh agent
- All resources tagged and follow best practi