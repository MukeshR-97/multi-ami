terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Include provider configuration from provider.tf
include "./provider.tf"

# Include variables from variables.tf
include "./variables.tf"

# Include instances configuration from instances.tf
include "./instances.tf"

# Output AMI IDs
output "ami_ids" {
  value = [for ami in data.aws_ami_from_instance.example_ami : ami.id]
}
