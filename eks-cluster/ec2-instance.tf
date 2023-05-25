
data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}


resource "aws_instance" "my_instance" {
  ami           = "ami-0889a44b331db0194" # Replace with the desired Amazon Linux AMI ID
  instance_type = "t2.micro"              # Replace with the desired instance type
  key_name      = "vlcloud"               # Replace with the name of your key pair

  vpc_security_group_ids = [aws_security_group.my_eks_security_group.id] # Replace with the desired security group ID
  subnet_id              = aws_subnet.public_subnet.id             # Replace with the desired subnet ID
  tags = {
    Name = "eks-bastion"
  }

}
