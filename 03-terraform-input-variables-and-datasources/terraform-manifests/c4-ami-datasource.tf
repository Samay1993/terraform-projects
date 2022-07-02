# Get latest AMI id for Amazon Linux 2 OS
data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"] #complete image name is 'amzn2-ami-kernel-5.10-hvm-2.0.20220606.1-x86_64-gp2' but using * means it is going to consider all the versions
                                                 # and as defined in line 3, it will pick the recent image for us.
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}