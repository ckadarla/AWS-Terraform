<!-- BEGIN_TF_DOCS -->
header: ""
footer: ""
inputs:
  - name: cluster_name
    type: string
    description: AWS EKS CLuster Name
    default: demo
    required: false
modules: []
outputs:
  - name: eks_cluster_autoscaler_arn
    description: null
  - name: test_policy_arn
    description: null
providers:
  - name: aws
    alias: null
    version: ~> 3.0
  - name: tls
    alias: null
    version: null
requirements:
  - name: aws
    version: ~> 3.0
resources:
  - type: eip
    name: nat
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: eks_cluster
    name: demo
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: eks_node_group
    name: private-nodes
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_openid_connect_provider
    name: eks
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_policy
    name: eks_cluster_autoscaler
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_policy
    name: test-policy
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role
    name: demo
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role
    name: eks_cluster_autoscaler
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role
    name: nodes
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role
    name: test_oidc
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role_policy_attachment
    name: demo-AmazonEKSClusterPolicy
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role_policy_attachment
    name: eks_cluster_autoscaler_attach
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role_policy_attachment
    name: nodes-AmazonEC2ContainerRegistryReadOnly
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role_policy_attachment
    name: nodes-AmazonEKSWorkerNodePolicy
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role_policy_attachment
    name: nodes-AmazonEKS_CNI_Policy
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_role_policy_attachment
    name: test_attach
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: internet_gateway
    name: igw
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: nat_gateway
    name: nat
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: route_table
    name: private
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: route_table
    name: public
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: route_table_association
    name: private-us-east-1a
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: route_table_association
    name: private-us-east-1b
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: route_table_association
    name: public-us-east-1a
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: route_table_association
    name: public-us-east-1b
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: subnet
    name: private-us-east-1a
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: subnet
    name: private-us-east-1b
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: subnet
    name: public-us-east-1a
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: subnet
    name: public-us-east-1b
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: vpc
    name: main
    provider: aws
    source: hashicorp/aws
    mode: managed
    version: latest
    description: null
  - type: iam_policy_document
    name: eks_cluster_autoscaler_assume_role_policy
    provider: aws
    source: hashicorp/aws
    mode: data
    version: latest
    description: null
  - type: iam_policy_document
    name: test_oidc_assume_role_policy
    provider: aws
    source: hashicorp/aws
    mode: data
    version: latest
    description: null
  - type: certificate
    name: eks
    provider: tls
    source: hashicorp/tls
    mode: data
    version: latest
    description: null
<!-- END_TF_DOCS -->