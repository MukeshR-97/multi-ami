variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "instance_names" {
  type = map(string)
  default = {
    "i-0123456789abcdef0" = "prod"
    "i-1234567890abcdef1" = "demo"
    # Add more instance IDs and names as needed
  }
}
