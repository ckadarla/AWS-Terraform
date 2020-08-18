resource "aws_batch_compute_environment" "sample" {
  compute_environment_name = "sample"

  compute_resources {
    instance_role = aws_iam_instance_profile.ecs_instance_role.arn
    ec2_key_pair = ""
    instance_type = [
      "optimal",
    ]
    allocation_strategy = "BEST_FIT"
    max_vcpus = 16
    min_vcpus = 0
    desired_vcpus = 0
    
    security_group_ids = [
      aws_security_group.sample.id,
    ]

    subnets = [
      aws_subnet.public1.id,
      aws_subnet.public2.id,
      aws_subnet.private1.id, 
      aws_subnet.private2.id,
    ]

    type = "EC2"
  }
  
  service_role = aws_iam_role.aws_batch_service_role.arn
  type         = "MANAGED"
  depends_on   = [aws_iam_role_policy_attachment.aws_batch_service_role]
}

