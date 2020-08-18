<b>AWS Batch Compute Environment Terraform </b>

Creates a AWS Batch compute environment. Compute environments contain the Amazon ECS container instances that are used to run containerized batch jobs.

<a href="https://registry.terraform.io/providers/hashicorp/aws/3.2.0">Terraform documentation</a>

Terraform versions: 0.13


Usage: 
1) terraform init

2) terraform plan

3) terraform apply

4) submit aws batch job using following AWS CLI command

  <code> aws batch submit-job --job-name \<jobname\> --job-queue tf-test-batch-job-queue --job-definition tf_test_batch_job_definition </code> 
