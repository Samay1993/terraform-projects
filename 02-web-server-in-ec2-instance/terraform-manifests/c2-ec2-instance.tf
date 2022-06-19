# Resource Block
resource "aws_instance" "ec2temp" {
        # "resource type" "resource local name"
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  user_data = file("${path.module}/webserver-install.sh")
  tags = {
    "Name" = "EC2 First Demo"
  }
}