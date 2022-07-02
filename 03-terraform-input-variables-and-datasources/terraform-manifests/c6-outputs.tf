# Terraform Output Values

#EC2 Instane Public Ip
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.ec2temp.public_ip
}

#EC2 Instace Public DNS
output "instance_publicdns" {
  description = "EC2 Instace Public DNS"
  value = aws_instance.ec2temp.public_dns
}