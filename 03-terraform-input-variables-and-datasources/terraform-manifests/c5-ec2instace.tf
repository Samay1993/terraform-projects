# Resource Block
resource "aws_instance" "ec2temp" {
        # "resource type" "resource local name"
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instace_type
  user_data = file("${path.module}/webserver-install.sh")
  key_name = var.instace_key_pair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
  tags = {
    "Name" = "EC2 Second Demo"
  }
}