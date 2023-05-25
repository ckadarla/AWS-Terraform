resource "aws_eks_cluster" "my_eks_cluster" {
  name     = "vlcloud-eks-cluster"
  role_arn = "arn:aws:iam::332550406788:role/Vlcloud-eks"
  version  = "1.26"

  vpc_config {
    subnet_ids              = [aws_subnet.public_subnet.id]                 # Replace with the desired subnet IDs
    security_group_ids      = [aws_security_group.my_eks_security_group.id] # Replace with the desired security group IDs
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  tags = {
    Name = "vlcloud-eks-cluster"
  }
}
