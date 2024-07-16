# Data source to create AMIs from instances with custom names
data "aws_ami_from_instance" "example_ami" {
  for_each    = var.instance_names
  instance_id = each.key
  
  # Custom name for the AMI based on the map value (name)
  name        = each.value
}

# Output AMI IDs
output "ami_ids" {
  value = [for _, ami in data.aws_ami_from_instance.example_ami : ami.id]
}
