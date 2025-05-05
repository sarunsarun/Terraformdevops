# Terraformdevops
This project creates:  - A VPC with public subnets - An Application Load Balancer - Security Groups - A sample container running nginx - All necessary IAM roles and policies





          
# AWS ECS Docker Deployment with Terraform

This project provides Infrastructure as Code (IaC) using Terraform to deploy a containerized application on AWS ECS (Elastic Container Service) with Fargate.

## Project Overview

This Terraform configuration creates a complete AWS infrastructure for running containerized applications, including:

- VPC with public subnets
- Application Load Balancer (ALB)
- ECS Cluster with Fargate
- Security Groups
- Task Definitions and Services

## Prerequisites

- AWS Account
- Terraform installed (version compatible with AWS provider ~> 4.0)
- AWS CLI configured with appropriate credentials

## Project Structure

```plaintext
.
├── provider.tf          # AWS provider configuration
├── variables.tf         # Input variables definition
├── terraform.tfvars     # Variable values
├── vpc.tf              # VPC and networking resources
├── security.tf         # Security group configurations
├── alb.tf              # Application Load Balancer setup
├── ecs.tf              # ECS cluster and service definitions
└── outputs.tf          # Output values
```

## Configuration Files

### Variables (`terraform.tfvars`)

Default configuration values:
```hcl
aws_region      = "us-west-2"
project_name    = "demo-ecs"
container_port  = 80
container_image = "nginx:latest"
container_cpu   = 256
container_memory = 512
```

## Infrastructure Components

### Networking (`vpc.tf`)
- VPC with CIDR block 10.0.0.0/16
- 2 public subnets across different availability zones
- Internet Gateway
- Route tables for public access

### Security (`security.tf`)
- ALB security group allowing HTTP (port 80) inbound
- ECS tasks security group with container port access

### Load Balancer (`alb.tf`)
- Application Load Balancer
- Target group with health checks
- HTTP listener on port 80

### ECS Configuration (`ecs.tf`)
- Fargate-based ECS cluster
- Task definition with configurable container settings
- ECS service with desired count of 2

## Usage

1. Clone the repository:
```bash
git clone <repository-url>
```

2. Initialize Terraform:
```bash
terraform init
```

3. Review the execution plan:
```bash
terraform plan
```

4. Apply the configuration:
```bash
terraform apply
```

5. To destroy the infrastructure:
```bash
terraform destroy
```

## Outputs

After successful deployment, you can access:
- ALB DNS name for accessing the application
- ECS cluster name for reference

## Customization

You can customize the deployment by modifying:
- `terraform.tfvars` for basic configuration
- Individual resource files for specific requirements
- Container image and resource allocations
- Number of tasks and networking configuration

## Security Considerations

- The ALB is publicly accessible on port 80
- ECS tasks run in public subnets with direct internet access
- Security groups are configured for minimal required access

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is open-source and available under the MIT License.

---

**Note**: Remember to never commit sensitive information like AWS credentials to version control.

        
