provider "aws" {
  region = terraform.workspace == "deop" ? "ca-central-1" : "ca-central-1"
}

//Get Linux AMI ID using SSM Parameter endpoint in ca-central-1
data "aws_ssm_parameter" "linuxAmi" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

//Kreate and bootstrap EC2 in ca-central-1
resource "aws_instance" "ec2-vm" {
  ami                         = data.aws_ssm_parameter.linuxAmi.value
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  tags = {
    Name = "${terraform.workspace}-ec2"
  }
}
