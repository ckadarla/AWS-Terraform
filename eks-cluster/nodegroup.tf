resource "aws_eks_node_group" "my_node_group" {
  cluster_name    = aws_eks_cluster.my_eks_cluster.name
  node_group_name = "devopsthehardway-workernodes"
  node_role_arn   = "arn:aws:iam::332550406788:role/vlcloud-eks-cluseter-role"
  subnet_ids      = [aws_subnet.public_subnet.id]
  instance_types  = ["t2.micro"]


  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }
}
 