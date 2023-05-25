
resource "aws_security_group" "my_eks_security_group" {
  name        = "eks-security-group"
  description = "Allow inbound traffic on ports 80 and 443"
  vpc_id      = "vpc-0df81caa5cdd869e9" # Replace with the desired VPC ID

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
