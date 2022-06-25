# Input Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS resource is going to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instace Type
variable "instace_type" {
  description = "EC2 Instace Type"
  type = string
  default = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instace_key_pair" {
  description = "EC2 instace key pair that needs to be associated with the instance"
  type = string
  default = "terraform-key"
}